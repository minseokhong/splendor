// Handles server-side logic
const express = require('express');
const app = express();
const http = require('http').Server(app);
const io = require('socket.io')(http);
const mysql = require('mysql');
const connection = mysql.createConnection({
	host : '192.168.0.47',
	user : 'gameserver',
	password : 'game',
	port : 3306,
	database : 'member'
});

const diamondJSON = require('./public/assets/json/diamond.json');
const sapphireJSON = require('./public/assets/json/sapphire.json');
const emeraldJSON = require('./public/assets/json/emerald.json');
const rubyJSON = require('./public/assets/json/ruby.json');
const onyxJSON = require('./public/assets/json/onyx.json');
const nobleJSON = require('./public/assets/json/nobles.json');
const nobles = [
	'Anne_of_Brittany', 'Catherine_de_Medici', 'Charles_V', 'Elisabeth_of_Austria', 'Francis_I_of_France', 'Henry_VIII', 'Isabella_I_of_Castille', 'Niccolo_Machiavelli', 'Suleiman_the_Magnificent'
];
const nobleSrc = '/assets/nobles/';

// app.get("/", (req, res) => {
// 	res.sendFile(__dirname + "/public/index.html");
// });

app.get(/id=/, (req, res) => {
	res.sendFile(__dirname + "/public/index.html");
});

app.use(express.static('public'));

var players = {};
var rooms = {};

const NUM_DISPLAY = 4;

io.on('connection', (socket) => {
	/******************************** ROOM STUFF ********************************/
	socket.emit('show rooms', rooms);

	socket.on('new room', (roomName, password) => {
		let isExist = false;

		for (var room in rooms) {
			if (rooms[room].roomName === roomName)
				isExist = true;
		}

		if (isExist) {
			socket.emit('alert', 'error', '같은 이름의 방이 이미 존재합니다! 다른 이름을 사용해주세요.');
		} else {
			socket.join(roomName);

			rooms[roomName] = {
				roomName: roomName,
				password: password,
				players: [],
				deck1: [],
				deck2: [],
				deck3: [],
				tokens: {
					diamond: 7,
					sapphire: 7,
					emerald: 7,
					ruby: 7,
					onyx: 7,
					gold: 5
				},
				totalTokens: 35,
				noblesInGame: [],
				turns: 0,
				gameInProgress: false,
				lastTurn: false,
				currentWinnerID: null,
				currentWinnerUsername: null,
				highestScore: 0,
				leastCards: 0
			};

			players[socket.id].room = roomName;
			rooms[roomName].players.push(players[socket.id]);

			socket.emit('alert', 'success', '방이 생성되었습니다.');
			socket.emit('enter room', roomName);
	
			io.in(roomName).emit('chat message', `${socket.userName}이(가) 입장했습니다.`);
		}
	});

	socket.on('refresh rooms', (fn) => {
		fn(rooms);
	});

	socket.on('join room', (roomName) => {
		if (rooms[roomName].gameInProgress) {
			socket.emit('alert', 'error', '게임이 진행 중 입니다. 다른 방을 찾거나 새로 방을 만드세요!');
		} else if (rooms[roomName].players.length < 4) {
			socket.join(roomName);

			players[socket.id].room = roomName;
			rooms[roomName].players.push(players[socket.id]);

			socket.emit('enter room', roomName);

			io.in(roomName).emit('chat message', `${socket.userName}이(가) 입장했습니다.`);
		} else {
			socket.emit('alert', 'error', '방이 가득찼습니다. 다른 방을 찾거나 새로 방을 만드세요!');
		}
	});

	socket.on('leave room', () => {
		var room = rooms[players[socket.id].room]
		socket.leave(room.roomName);

		gameOver(room, false);
		room.players.splice(room.players.findIndex(player => player.id === socket.id), 1);
		if (room.players.length === 0)
			delete rooms[players[socket.id].room];
		
		players[socket.id].room = "";
	})

	/******************************** GENERAL GAME STUFF ********************************/
	socket.on('new user', (player) => {
		socket.userName = player.userName;
		player.id = socket.id;
		socket.hasTakenGem = false;
		socket.gemsTaken = [];
		socket.points = 0;
		socket.cards = 0;
		socket.emit('set id', socket.id);

		players[socket.id] = player;
	});

	socket.on('disconnect', () => {
		if (typeof players[socket.id] != "undefined") {
			if (players[socket.id].room !== "") {
				gameOver(rooms[players[socket.id].room], true);
				rooms[players[socket.id].room].players.splice(rooms[players[socket.id].room].players.findIndex(player => player.id === socket.id), 1);
				if (rooms[players[socket.id].room].players.length === 0)
					delete rooms[players[socket.id].room];
			}
			delete players[socket.id];
		} else {
			console.log(socket.id + " is disconnected.");
		}
	});

	socket.on('new game', () => {
		var room = rooms[players[socket.id].room];

		if (room.players.length === 1) {
			socket.emit('alert', 'error', "플레이어 수가 부족합니다!");
			return;
		}
		createDecks(room);
		checkTokens(room);

		connection.connect((err) => {
			if (err) console.error(err);
		});

		room.startDate = timeStamp();

		connection.end();

		// Display cards
		for (let i = 0; i < NUM_DISPLAY; i++) {
			io.in(room.roomName).emit('display card', 'deck1', room.deck1.pop());
		}

		for (let i = 0; i < NUM_DISPLAY; i++) {
			io.in(room.roomName).emit('display card', 'deck2', room.deck2.pop());
		}

		for (let i = 0; i < NUM_DISPLAY; i++) {
			io.in(room.roomName).emit('display card', 'deck3', room.deck3.pop());
		}

		// Display tokens
		for (let token in room.tokens) {
			io.in(room.roomName).emit('display token', token, room.tokens[token]);
		}

		room.noblesInGame = chooseNobles(room);
		io.in(room.roomName).emit('generate nobles', nobleSrc, room.noblesInGame);

		room.gameInProgress = true;
		room.lastTurn = false;
		room.currentWinnerID = null;
		room.currentWinnerUsername = null;
		room.highestScore = 0;
		room.leastCards = 0;
		io.in(room.roomName).emit('show board', room.players);
		io.in(room.roomName).emit('chat message', `게임이 시작되었습니다!`);
		whoseTurn(room);
	});

	socket.on('update player status', (player) => {
		var room = rooms[players[socket.id].room];

		room.players[room.players.findIndex(player => player.id === socket.id)] = player;

		io.in(room.roomName).emit('show scoreboard', room.players);
	});

	socket.on('req refresh', () => {
		socket.hasTakenGem = false;
		socket.gemsTaken = [];
		socket.points = 0;
		socket.cards = 0;
	});

	

	/************************************ CARD STUFF ************************************/
	// Factor 'get card' and 'reserve card'
	socket.on('get card', (data) => {
		var room = rooms[players[socket.id].room];

		if (!isPlayerTurn(socket.id, room)) {
			socket.emit('alert', 'error', "당신의 턴이 아닙니다!");
			return;
		}
		if (socket.hasTakenGem) {
			socket.emit('alert', 'error', "토큰을 가져간 후 카드를 구입할 수 없습니다!");
			return;
		}

		socket.points += data.card.points;
		socket.cards++;
		socket.emit('get card', data);
		socket.to(room.roomName).emit('remove card', data);
		io.in(room.roomName).emit('chat message', `${socket.userName} (${socket.points}점)이(가) ${data.card.type}카드(${data.card.points}점)을 구입했습니다.`);
		switch (data.deck) {
			case 'deck1':
				io.in(room.roomName).emit('display card', 'deck1', room.deck1.pop());
				break;
			case 'deck2':
				io.in(room.roomName).emit('display card', 'deck2', room.deck2.pop());
				break;
			case 'deck3':
				io.in(room.roomName).emit('display card', 'deck3', room.deck3.pop());
				break;
		}
		if (deckIsEmpty(data.deck, room)) {
			io.in(room.roomName).emit('deck is empty', data.deck);
		}
	});

	// Factor 'get card' and 'reserve card'
	socket.on('reserve card', (data) => {
		var room = rooms[players[socket.id].room];

		if (!isPlayerTurn(socket.id, room)) {
			socket.emit('alert', 'error', "당신의 턴이 아닙니다!");
			return;
		}

		if (socket.hasTakenGem) {
			socket.emit('alert', 'error', "토큰을 가져간 후 카드를 예약할 수 없습니다!");
			return;
		}

		io.in(room.roomName).emit('chat message', `${socket.userName} (${socket.points}점)이(가) 카드를 예약했습니다.`);
		switch (data.src) {
			case 'deck':
				switch (data.deck) {
					case 'deck1':
						socket.emit('reserve card', room.deck1.pop(), data.src);
						break;
					case 'deck2':
						socket.emit('reserve card', room.deck2.pop(), data.src);
						break;
					case 'deck3':
						socket.emit('reserve card', room.deck3.pop(), data.src);
						break;
				}
				break;
			case 'card':
				socket.emit('reserve card', data.card, data.src);
				socket.to(room.roomName).emit('remove card', data);
				switch (data.deck) {
					case 'deck1':
						io.in(room.roomName).emit('display card', 'deck1', room.deck1.pop());
						break;
					case 'deck2':
						io.in(room.roomName).emit('display card', 'deck2', room.deck2.pop());
						break;
					case 'deck3':
						io.in(room.roomName).emit('display card', 'deck3', room.deck3.pop());
						break;
				}
				break;
		}

		if (room.tokens.gold === 0) {
			socket.emit('alert', 'info', "카드를 예약했지만, 현재 골드 토큰이 없어 토큰을 가져오지 못 했습니다.");
		} else {
			room.tokens.gold--;
			room.totalTokens--;
			socket.emit('get token', 'gold');
			socket.to(room.roomName).emit('remove token from stack', 'gold');
		}

		if (deckIsEmpty(data.deck, room)) {
			io.in(room.roomName).emit('deck is empty', data.deck);
		}
	});

	socket.on('validate', (data) => {
		var room = rooms[players[socket.id].room];

		if (!isPlayerTurn(socket.id, room)) {
			socket.emit('alert', 'error', "당신의 턴이 아닙니다!");
			return;
		}
		if (purchaseable(data)) {
			socket.emit('validated', data);
		} else {
			socket.emit('alert', 'error', "당신은 이 카드를 구입할 수 없습니다. 카드를 예약하려면, SHIFT 키를 누르고 카드를 선택하세요.");
		}
	});

	/*********************************** TOKEN  STUFF ***********************************/
	socket.on('get token', (data, double) => {
		var room = rooms[players[socket.id].room];

		if (!isPlayerTurn(socket.id, room)) {
			// Checks if it's the players turn.
			socket.emit('alert', 'error', "당신의 턴이 아닙니다!");
		} else if (data.token === 'gold') {
			// Prevents player from taking tokens from the gold stack.
			socket.emit('alert', 'error', "골드 토큰 더미에서 가져갈 수 없습니다.");
		} else if (room.tokens[data.token] === 0) {
			// If the stack is empty, the player can't take from it (shouldn't ever be emitted).
			socket.emit('alert', 'info', '이 토큰 더미는 비어있습니다.');
		} else if ((room.tokens[data.token] < 4 && double) || (room.tokens[data.token] < 3 && socket.gemsTaken.length === 1 && socket.gemsTaken.includes(data.token))) { // Prevents the player from taking 2 tokens from a stack with <4 tokens.
			socket.emit('alert', 'error', "최소한 4개의 토큰이 남아 있을 때만 2개의 같은 토큰을 가져갈 수 있습니다.");
		} else if ((double && socket.hasTakenGem) || (socket.gemsTaken.length === 2 && socket.gemsTaken.includes(data.token))) {
			// Prevents the player from taking 2 tokens when they've already taken a token.
			socket.emit('alert', 'error', "다른 토큰을 가져간 후 같은 토큰을 2번 가져갈 수 없습니다.");
		} else if (double) {
			// Allows the player to take two tokens.
			room.tokens[data.token] -= 2;
			room.totalTokens -= 2;
			socket.hasTakenGem = false;
			socket.gemsTaken.length = 0;
			socket.emit('get token', data.token, double, true);
			socket.to(room.roomName).emit('remove token from stack', data.token, double);
			io.in(room.roomName).emit('chat message', `${socket.userName} (${socket.points}점)이(가) 2개의 ${data.token}토큰을 가져갔습니다.`);
		} else if (socket.gemsTaken.length === 1 && socket.gemsTaken[0] === data.token && room.tokens[data.token] >= 3) {
			// Allows the player to take the same token twice in a row if it's the only token they've taken.
			room.tokens[data.token]--;
			room.totalTokens--;
			socket.hasTakenGem = false;
			socket.gemsTaken.length = 0;
			socket.emit('get token', data.token, false, true);
			socket.to(room.roomName).emit('remove token from stack', data.token);
			io.in(room.roomName).emit('chat message', `${socket.userName} (${socket.points}점)이(가) 2개의 ${data.token}토큰을 가져갔습니다.`);
		} else {
			// Allows the player to take a token and determines if the player's turn is over.
			room.tokens[data.token]--;
			room.totalTokens--;
			
			socket.gemsTaken.push(data.token);
			socket.hasTakenGem = socket.gemsTaken.length < 3;
			socket.emit('get token', data.token, false, (socket.gemsTaken.length >= 3) || (room.totalTokens === 0));
			socket.to(room.roomName).emit('remove token from stack', data.token);
			if (room.totalTokens === 0 || socket.gemsTaken.length >= 3) {
				io.in(room.roomName).emit('chat message', `${socket.userName} (${socket.points}점)이(가) 다음의 토큰들을 가져갔습니다 : ${socket.gemsTaken.join(', ')}`);
				socket.gemsTaken.length = 0;
				socket.hasTakenGem = false;
			}
		}
	});

	socket.on('add token to stack', (token, number) => {
		var room = rooms[players[socket.id].room];

		room.tokens[token] += number;
		room.totalTokens += number;
		socket.to(room.roomName).emit('add token to stack', token, number);
	});

	/************************************ CHAT STUFF ************************************/
	socket.on('chat message', (msg) => {
		var room = rooms[players[socket.id].room];

		io.in(room.roomName).emit('chat message', `${socket.userName} (${socket.points}점): ${msg}`);
	});

	/************************************ MISC STUFF ************************************/
	socket.on('check nobles', (cards) => {
		var room = rooms[players[socket.id].room];

		let qualifiedNobles = checkNobles(cards, room);
		if (qualifiedNobles.length !== 0) {
			socket.points += 3;
			io.in(room.roomName).emit('chat message', `${socket.userName} (${socket.points}점)에게 귀족이 방문했습니다!`);
			socket.emit('get noble', qualifiedNobles[0]);
			socket.to(room.roomName).emit('assign noble', qualifiedNobles[0]);
			room.noblesInGame.splice(room.noblesInGame.indexOf(qualifiedNobles[0]), 1);
		}
		socket.emit('next turn');
	});

	socket.on('next turn', () => {
		var room = rooms[players[socket.id].room];

		room.turns++;
		if (!room.lastTurn) {
			if (socket.points >= 15) {
				room.lastTurn = true;
				room.currentWinnerID = socket.id;
				room.currentWinnerUsername = socket.userName;
				room.highestScore = socket.points;
				room.leastCards = socket.cards;

				if (room.turns % room.players.length === 0) {
					socket.emit('alert', 'success', '축하합니다! 당신이 이겼습니다!');
					socket.to(room.roomName).emit('alert', 'error', `당신은 졌습니다... ${socket.userName}이(가) 이겼습니다. 다음 기회에...`);
					gameOver(room, false);
				} else {
					socket.emit('alert', 'info', `당신은 ${socket.points}점으로 선두입니다. 다른 플레이어에게 추월당할 수 있으므로 주의하세요!`);
					socket.to(room.roomName).emit('alert', 'warning', `${socket.userName}이(가) ${socket.points}점 입니다. 턴 순서에 따라 당신에게 기회가 있을 수도 없을 수도 있습니다.`);
					whoseTurn(room);
				}
			} else {
				whoseTurn(room);
			}
		} else if (room.turns % room.players.length > 0) {
			if (socket.points > room.highestScore) {
				room.currentWinnerID = socket.id;
				room.currentWinnerUsername = socket.userName;
				room.highestScore = socket.points;
				room.leastCards = socket.cards;
				socket.emit('alert', 'info', `당신은 ${socket.points}점으로 선두입니다. 다른 플레이어에게 추월당할 수 있으므로 주의하세요!`);
				socket.to(room.roomName).emit('alert', 'warning', `${socket.userName}이(가) ${socket.points}점으로 선두입니다. 턴 순서에 따라 당신에게 기회가 있을 수도 없을 수도 있습니다.`);
			} else if (socket.points === room.highestScore) {
				if (socket.cards > room.leastCards) {
					socket.emit('alert', 'warning', '같은 점수를 가진 다른 플레이어보다 많은 카드를 가지고 있습니다. 그러므로 당신은 선두가 아닙니다.');
				} else if (socket.cards < room.leastCards) {
					socket.emit('alert', 'info', `당신은 ${socket.points}점으로 선두이며 이전 선두 플레이어보다 ${room.leastCards - socket.cards}장 적은 카드를 가지고 있습니다. 다른 플레이어에게 추월당할 수 있으므로 주의하세요!`);
					socket.to(room.roomName).emit('alert', 'warning', `${socket.userName}이(가) ${socket.points}점으로 선두이며 이전 선두 플레이어보다 ${room.leastCards - socket.cards}장 적은 카드를 가지고 있습니다.`);
					room.currentWinnerID = socket.id;
					room.currentWinnerUsername = socket.userName;
					room.leastCards = socket.cards;
				} else {
					socket.emit('alert', 'warning', `당신은 선두 플레이어와 동일한 점수와 카드 수를 가지고 있지만, 그 플레이어가 먼저 달성했기 때문에 그 플레이어가 여전히 선두입니다.`);
				}
			}
			whoseTurn(room);
		} else if (room.turns % room.players.length === 0) {
			io.to(room.currentWinnerID).emit('alert', 'success', '축하합니다! 당신이 이겼습니다!');
			for (let i = 0; i < room.players.length; i++) {
				if (room.players[i].id !== room.currentWinnerID) {
					io.to(room.players[i].id).emit('alert', 'error', `당신은 졌습니다... ${socket.userName}이(가) 이겼습니다. 다음 기회에...`);
				}
			}
			gameOver(room, false);
		}
	});
});


/******************************* FUNCTIONS OUTSIDE SOCKET.IO *******************************/

/************************************ GENERAL GAME STUFF ***********************************/
function chooseNobles(room) {
	var tempArray = nobles.slice();
	var returnArray = [];
	for (let i = 0; i < room.players.length + 1; i++) {
		let j = Math.floor(Math.random() * tempArray.length);
		let noble = tempArray[j];
		returnArray.push({
			name: noble,
			price: nobleJSON[noble]
		});
		tempArray.splice(j, 1);
	}
	return returnArray;
}

function whoseTurn(room) {
	var player = room.players[room.turns % room.players.length];
	io.to(player.id).emit('notify');
	io.in(room.roomName).emit('chat message', `${player.userName}의 턴입니다.`);
}

function isPlayerTurn(id, room) {
	var player = room.players[room.turns % room.players.length];
	return id === player.id;
}

function gameOver(room, disconnect) {
	io.in(room.roomName).emit('clear board');
	io.in(room.roomName).emit('clear nobles');

	if (!disconnect) {
		connection.connect((err) => {
			if (err) console.error(err);
		});

		let gameNum;
		room.endDate = timeStamp();
		
		connection.query('insert into game_list (game_num, game_type, game_start_date, game_end_date) values (0, "spd", ' + room.startDate + ', ' + room.endDate + ')', (err, result) => {
			if (err) throw err;
			else gameNum = result.insertId;
		});

		
		for (var player in room.players) {
			var userName = room.players[player].userName;
			var score = room.players[player].score;

			setTimeout(() => {
				connection.query('insert into game_log (game_num, game_player, game_score) values (' + gameNum + ', "' + userName + '", ' + score + ')', (err) => {
					if (err) throw err;
				});
			}, 500);
		}

		setTimeout(() => {
			connection.end();
		}, 2000);

		io.in(room.roomName).emit('leave from room');
		delete rooms[room.roomName];
	} else {
		room.turns = 0;
		room.gameInProgress = false;
		checkTokens(room, true);
	
		room.players.forEach(player => {
			player.score = 0;
			player.resources = {
				diamond: 0,
				sapphire: 0,
				emerald: 0,
				ruby: 0,
				onyx: 0,
				gold: 0
			},
			player.tokens = {
				diamond: 0,
				sapphire: 0,
				emerald: 0,
				ruby: 0,
				onyx: 0,
				gold: 0,
				total: 0
			},
			player.cards = {
				diamond: 0,
				sapphire: 0,
				emerald: 0,
				ruby: 0,
				onyx: 0,
				reserved: 0
			}
		});

		io.in(room.roomName).emit('refresh socket');
		io.in(room.roomName).emit('enter room', room.roomName);
	}
}

function timeStamp() {
	connection.query('select sysdate()', (err, result) => {
		if (err) throw err;
		else return result[0]['sysdate()'];
	});
}

/**************************************** CARD STUFF ***************************************/
function createDecks(room) {
	var card;

	// First Deck
	for (card in diamondJSON.deck1) {
		room.deck1.push(diamondJSON.deck1[card]);
	}
	for (card in sapphireJSON.deck1) {
		room.deck1.push(sapphireJSON.deck1[card]);
	}
	for (card in emeraldJSON.deck1) {
		room.deck1.push(emeraldJSON.deck1[card]);
	}
	for (card in rubyJSON.deck1) {
		room.deck1.push(rubyJSON.deck1[card]);
	}
	for (card in onyxJSON.deck1) {
		room.deck1.push(onyxJSON.deck1[card]);
	}

	// Second Deck
	for (card in diamondJSON.deck2) {
		room.deck2.push(diamondJSON.deck2[card]);
	}
	for (card in sapphireJSON.deck2) {
		room.deck2.push(sapphireJSON.deck2[card]);
	}
	for (card in emeraldJSON.deck2) {
		room.deck2.push(emeraldJSON.deck2[card]);
	}
	for (card in rubyJSON.deck2) {
		room.deck2.push(rubyJSON.deck2[card]);
	}
	for (card in onyxJSON.deck2) {
		room.deck2.push(onyxJSON.deck2[card]);
	}

	// Third Deck
	for (card in diamondJSON.deck3) {
		room.deck3.push(diamondJSON.deck3[card]);
	}
	for (card in sapphireJSON.deck3) {
		room.deck3.push(sapphireJSON.deck3[card]);
	}
	for (card in emeraldJSON.deck3) {
		room.deck3.push(emeraldJSON.deck3[card]);
	}
	for (card in rubyJSON.deck3) {
		room.deck3.push(rubyJSON.deck3[card]);
	}
	for (card in onyxJSON.deck3) {
		room.deck3.push(onyxJSON.deck3[card]);
	}
	shuffle(room);
}

function deckIsEmpty(deck, room) {
	switch (deck) {
		case 'deck1':
			return room.deck1.length === 0;
		case 'deck2':
			return room.deck2.length === 0;
		case 'deck3':
			return room.deck3.length === 0;
	}
}

// Shuffles decks in place
function shuffle(room) {
	for (let i = room.deck1.length; i; i--) {
		let j = Math.floor(Math.random() * i);
		[room.deck1[i - 1], room.deck1[j]] = [room.deck1[j], room.deck1[i - 1]];
	}

	for (let i = room.deck2.length; i; i--) {
		let j = Math.floor(Math.random() * i);
		[room.deck2[i - 1], room.deck2[j]] = [room.deck2[j], room.deck2[i - 1]];
	}

	for (let i = room.deck3.length; i; i--) {
		let j = Math.floor(Math.random() * i);
		[room.deck3[i - 1], room.deck3[j]] = [room.deck3[j], room.deck3[i - 1]];
	}
}

function checkNobles(cards, room) {
	let qualifiedNobles = [];
	for (let i = 0; i < room.noblesInGame.length; i++) {
		ADD: {
			for (let price in room.noblesInGame[i].price) {
				if (cards[price] < room.noblesInGame[i].price[price]) {
					break ADD;
				}
			}
			qualifiedNobles.push(room.noblesInGame[i]);
		}
	}
	return qualifiedNobles;
}

function purchaseable(data) {
	for (let gem in data.card.price) {
		if (data.card.price[gem] > data.resources[gem]) {
			let diff = data.card.price[gem] - data.resources[gem];
			if (data.resources.gold >= diff) {
				data.resources.gold -= diff;
				data.resources[gem] += diff;
			} else {
				return false;
			}
		}
	}
	return true;

	// switch (data.toValidate) {
	// 	case 'card':
	// 		for (let gem in data.card.price) {
	// 			if (data.card.price[gem] > data.resources[gem]) {
	// 				let diff = data.card.price[gem] - data.resources[gem];
	// 				if (data.resources.gold >= diff) {
	// 					data.resources.gold -= diff;
	// 					data.resources[gem] += diff;
	// 				} else {
	// 					return false;
	// 				}
	// 			}
	// 		}
	// 		return true;
	// 	case 'noble':
	// 		for (let gem in data.price) {
	// 			if (data.price[gem] > data.resources[gem]) {
	// 				let diff = data.price[gem] - data.resources[gem];
	// 				if (data.resources.gold >= diff) {
	// 					data.resources.gold -= diff;
	// 					data.resources[gem] += diff;
	// 				} else {
	// 					return false;
	// 				}
	// 			}
	// 		}
	// 		return true;
	// }
}

/*************************************** TOKEN  STUFF **************************************/
function checkTokens(room, reset) {
	if (reset) {
		room.tokens = {
			diamond: 7,
			sapphire: 7,
			emerald: 7,
			ruby: 7,
			onyx: 7,
			gold: 5
		};
		room.totalTokens = 35;
		return;
	}
	if (room.players.length === 3) {
		for (let gem in room.tokens) {
			if (gem !== 'gold') {
				room.tokens[gem] -= 2;
				room.totalTokens -= 2;
			}
		}
	} else if (room.players.length === 2) {
		for (let gem in room.tokens) {
			if (gem !== 'gold') {
				room.tokens[gem] -= 3;
				room.totalTokens -= 3;
			}
		}
	}
}

/*******************************************************************************************/

var port = process.env.PORT || 3000; // runs on both Azure or local
http.listen(port, () => {
	console.log(`listening on *:${port}`);
});