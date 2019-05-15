// Handles server-side logic
const express = require('express');
const app = express();
const http = require('http').Server(app);
const io = require('socket.io')(http);
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

app.get("/", (req, res) => {
	res.sendFile(__dirname + "/public/index.html");
});

app.use(express.static('public'));

let players = [];
let rooms = [];

const NUM_DISPLAY = 4;

io.on('connection', (socket) => {
	/******************************** ROOM STUFF ********************************/
	// socket.emit('alert', 'info', 'Welcome! You can join to room or create room. Click "?" button for game information.');
	socket.emit('show rooms', io.sockets.adapter.rooms);

	socket.on('new room', (roomName, password) => {
		let isExist = false;

		for (var room in io.sockets.adapter.rooms) {
			if (io.sockets.adapter.rooms[room].roomName === roomName)
				isExist = true;
		}

		if (isExist) {
			socket.emit('alert', 'error', 'Room name already exist! Try another name.');
		} else {
			socket.join(roomName);
			io.sockets.adapter.rooms[socket.id].room = roomName;
			
			var newRoom = io.sockets.adapter.rooms[roomName];
	
			newRoom.roomName = roomName;
			newRoom.password = password;
			newRoom.deck1 = [];
			newRoom.deck2 = [];
			newRoom.deck3 = [];
			newRoom.players = [];
			newRoom.tokens = {
				diamond: 7,
				sapphire: 7,
				emerald: 7,
				ruby: 7,
				onyx: 7,
				gold: 5,
			};
			newRoom.totalTokens = 35;
			newRoom.noblesInGame = [];
			newRoom.turns = 0;
			newRoom.gameInProgress = false;
			newRoom.lastTurn = false;
			newRoom.currentWinnerID = null;
			newRoom.currentWinnerUsername = null;
			newRoom.highestScore = 0;
			newRoom.leastCards = 0;
	
			newRoom.players.push(io.sockets.adapter.rooms[socket.id]);

			socket.emit('alert', 'success', 'Room is created.');
			socket.emit('enter room', roomName);
	
			socket.to(roomName).emit('new online player', socket.username, socket.id);
			io.in(roomName).emit('chat message', `${socket.username} has joined as a player.`);
			io.in(roomName).emit('all online', newRoom.players);
		}
	});

	socket.on('refresh rooms', (fn) => {
		fn(io.sockets.adapter.rooms);
	});

	socket.on('join room', (room) => {
		if (room.gameInProgress) {
			socket.emit('alert', 'error', 'Game is in progress. find other room or create new room!');
		} else if (room.length < 4) {
			socket.join(room.roomName);
			io.sockets.adapter.rooms[socket.id].room = room.roomName;

			room.players.push(io.sockets.adapter.rooms[socket.id]);

			socket.emit('enter room', room.roomName);

			socket.to(room.roomName).emit('new online player', socket.username, socket.id);
			io.in(room.roomName).emit('chat message', `${socket.username} has joined as a player.`);
			io.in(room.roomName).emit('all online', room.players);
		} else {
			socket.emit('alert', 'error', 'Room is full. find other room or create new room!');
		}
	});

	/******************************** GENERAL GAME STUFF ********************************/
	socket.on('new user', (player) => {
		var currentUser = io.sockets.adapter.rooms[socket.id];

		socket.username = player.username;
		currentUser.username = player.username;
		currentUser.id = socket.id;
		currentUser.hasTakenGem = false;
		currentUser.gemsTaken = [];
		currentUser.points = 0;
		currentUser.room = player.room;
		currentUser.score = 0;
		currentUser.resources = player.resources;
		currentUser.tokens = player.tokens;
		currentUser.cards = player.cards;
	});

	socket.on('disconnect', () => {
		console.log(socket.id + " is disconnected.");
		for (var room in io.sockets.adapter.rooms) {
			for (var player in io.sockets.adapter.rooms[room].players) {
				if (socket.id === io.sockets.adapter.rooms[room].players[player].id) {
					console.log("Player " + io.sockets.adapter.rooms[room].players[player].username + " is disconnected in room " + room);
					gameOver(room);
					break;
				}
			}
		}
	});

	socket.on('new game', (roomName) => {
		let room = io.sockets.adapter.rooms[roomName];
		if (room.length === 1) {
			socket.emit('alert', 'error', "There aren't enough players!");
			return;
		}
		createDecks(room);
		checkTokens(room, true);

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
		io.in(room.roomName).emit('disable new game button');
		io.in(room.roomName).emit('nobles button', false);
		io.in(room.roomName).emit('show board', room.players);
		io.in(room.roomName).emit('chat message', `A new game has begun!`);
		whoseTurn(room);
	});

	socket.on('update player status', (player, room) => {
		var currentRoom = io.sockets.adapter.rooms[room];

		currentRoom.players[currentRoom.players.findIndex(player => player.id === socket.id)] = player;

		io.in(room).emit('show scoreboard', currentRoom.players);
	})

	/************************************ CARD STUFF ************************************/
	// Factor 'get card' and 'reserve card'
	socket.on('get card', (data, room) => {
		if (!isPlayerTurn(socket.id, room)) {
			socket.emit('alert', 'error', "It's not your turn!");
			return;
		}
		if (socket.hasTakenGem) {
			socket.emit('alert', 'error', "You can't take a card after you've taken a token!");
			return;
		}

		socket.points += data.card.points;
		socket.cards++;
		socket.emit('get card', data);
		socket.to(room).emit('remove card', data);
		io.in(room).emit('chat message', `${socket.username} (${socket.points}) purchased ${RegExp(/^[aeiouAEIOU]/).test(data.card.type) ? 'an' : 'a'} ${data.card.type} card worth ${data.card.points} points.`);
		switch (data.deck) {
			case 'deck1':
				io.in(room).emit('display card', 'deck1', room.deck1.pop());
				break;
			case 'deck2':
				io.in(room).emit('display card', 'deck2', room.deck2.pop());
				break;
			case 'deck3':
				io.in(room).emit('display card', 'deck3', room.deck3.pop());
				break;
		}
		if (deckIsEmpty(data.deck, room)) {
			io.in(room).emit('deck is empty', data.deck);
		}
	});

	// Factor 'get card' and 'reserve card'
	socket.on('reserve card', (data, room) => {
		if (!isPlayerTurn(socket.id, room)) {
			socket.emit('alert', 'error', "It's not your turn!");
			return;
		}

		if (socket.hasTakenGem) {
			socket.emit('alert', 'error', "You can't reserve a card after you've taken a token!");
			return;
		}

		io.in(room).emit('chat message', `${socket.username} (${socket.points}) reserved a card.`);
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
				socket.to(room).emit('remove card', data);
				switch (data.deck) {
					case 'deck1':
						io.emit('display card', 'deck1', room.deck1.pop());
						break;
					case 'deck2':
						io.emit('display card', 'deck2', room.deck2.pop());
						break;
					case 'deck3':
						io.emit('display card', 'deck3', room.deck3.pop());
						break;
				}
				break;
		}

		if (room.tokens.gold === 0) {
			socket.emit('alert', 'info', "You reserved a card, but the gold stack is currently empty so you don't get a gold token.");
		} else {
			room.tokens.gold--;
			room.totalTokens--;
			socket.emit('get token', 'gold');
			socket.to(room).emit('remove token from stack', 'gold');
		}

		if (deckIsEmpty(data.deck, room)) {
			io.in(room).emit('deck is empty', data.deck);
		}
	});

	socket.on('validate', (data, room) => {
		if (!isPlayerTurn(socket.id, room)) {
			socket.emit('alert', 'error', "It's not your turn!");
			return;
		}
		if (purchaseable(data)) {
			socket.emit('validated', data);
		} else {
			socket.emit('alert', 'error', "You cannot afford this card. To reserve the card, hold the SHIFT key while selecting it.");
		}
	});

	/*********************************** TOKEN  STUFF ***********************************/
	socket.on('get token', (data, double, room) => {
		if (!isPlayerTurn(socket.id, room)) {
			// Checks if it's the players turn.
			socket.emit('alert', 'error', "It's not your turn!");
		} else if (data.token === 'gold') {
			// Prevents player from taking tokens from the gold stack.
			socket.emit('alert', 'error', "You can't take from the gold stack.");
		} else if (room.tokens[data.token] === 0) {
			// If the stack is empty, the player can't take from it (shouldn't ever be emitted).
			socket.emit('alert', 'info', 'This token stack is empty.');
		} else if ((room.tokens[data.token] < 4 && double) || (room.tokens[data.token] < 3 && socket.gemsTaken.length === 1 && socket.gemsTaken.includes(data.token))) { // Prevents the player from taking 2 tokens from a stack with <4 tokens.
			socket.emit('alert', 'error', "You can only take two tokens when there are at least 4 tokens in the stack.");
		} else if ((double && socket.hasTakenGem) || (socket.gemsTaken.length === 2 && socket.gemsTaken.includes(data.token))) {
			// Prevents the player from taking 2 tokens when they've already taken a token.
			socket.emit('alert', 'error', "You can't take two of the same token if you've already taken another token.");
		} else if (double) {
			// Allows the player to take two tokens.
			room.tokens[data.token] -= 2;
			room.totalTokens -= 2;
			socket.hasTakenGem = false;
			socket.gemsTaken.length = 0;
			socket.emit('get token', data.token, double, true);
			socket.to(room).emit('remove token from stack', data.token, double);
			io.in(room).emit('chat message', `${socket.username} (${socket.points}) took two ${data.token} tokens.`);
		} else if (socket.gemsTaken.length === 1 && socket.gemsTaken[0] === data.token && room.tokens[data.token] >= 3) {
			// Allows the player to take the same token twice in a row if it's the only token they've taken.
			room.tokens[data.token]--;
			room.totalTokens--;
			socket.hasTakenGem = false;
			socket.gemsTaken.length = 0;
			socket.emit('get token', data.token, false, true);
			socket.to(room).emit('remove token from stack', data.token);
			io.in(room).emit('chat message', `${socket.username} (${socket.points}) took two ${data.token} tokens.`);
		} else {
			// Allows the player to take a token and determines if the player's turn is over.
			room.tokens[data.token]--;
			room.totalTokens--;
			
			socket.gemsTaken.push(data.token);
			socket.hasTakenGem = socket.gemsTaken.length < 3;
			socket.emit('get token', data.token, false, (socket.gemsTaken.length >= 3) || (room.totalTokens === 0));
			socket.to(room).emit('remove token from stack', data.token);
			if (room.totalTokens === 0 || socket.gemsTaken.length >= 3) {
				io.in(room).emit('chat message', `${socket.username} (${socket.points}) took these tokens: ${socket.gemsTaken.join(', ')}`);
				socket.gemsTaken.length = 0;
				socket.hasTakenGem = false;
			}
		}
	});

	socket.on('add token to stack', (token, number, room) => {
		room.tokens[token] += number;
		room.totalTokens += number;
		socket.to(room).emit('add token to stack', token, number);
	});

	/************************************ CHAT STUFF ************************************/
	socket.on('chat message', (msg, room) => {
		io.in(room).emit('chat message', `${socket.username} (${socket.points}): ${msg}`);
	});

	/************************************ MISC STUFF ************************************/
	socket.on('check nobles', (cards, room) => {
		let qualifiedNobles = checkNobles(cards, room);
		if (qualifiedNobles.length !== 0) {
			socket.points += 3;
			io.in(room).emit('chat message', `${socket.username} (${socket.points}) has received a visit from a noble!`);
			socket.emit('get noble', qualifiedNobles[0]);
			socket.to(room).emit('assign noble', qualifiedNobles[0]);
			room.noblesInGame.splice(room.noblesInGame.indexOf(qualifiedNobles[0]), 1);
		}
		socket.emit('next turn');
	});

	socket.on('next turn', (room) => {
		room.turns++;
		if (!room.lastTurn) {
			if (socket.points >= 15) {
				room.lastTurn = true;
				room.currentWinnerID = socket.id;
				room.currentWinnerUsername = socket.username;
				room.highestScore = socket.points;
				room.leastCards = socket.cards;

				if (room.turns % room.players.length === 0) {
					socket.emit('alert', 'success', 'Congratulations! You won!');
					socket.to(room).emit('alert', 'error', `You lost... ${socket.username} won! Better luck next time.`);
					gameOver(room.roomName);
				} else {
					socket.emit('alert', 'info', `You are currently in the lead with ${socket.points} points. Other players may be able to overtake you, so don't get your hopes up!`);
					socket.to(room).emit('alert', 'warning', `${socket.username} has ${socket.points} points. You may or may not get a chance to catch up, depending on where you are in the turn queue.`);
					whoseTurn(room);
				}
			} else {
				whoseTurn(room);
			}
		} else if (room.turns % room.players.length > 0) {
			if (socket.points > room.highestScore) {
				room.currentWinnerID = socket.id;
				room.currentWinnerUsername = socket.username;
				room.highestScore = socket.points;
				room.leastCards = socket.cards;
				socket.emit('alert', 'info', `You are currently in the lead with ${socket.points} points. Other players may be able to overtake you, so don't get your hopes up!`);
				socket.to(room).emit('alert', 'warning', `${socket.username} has taken the lead with ${socket.points} points. You may or may not get a chance to catch up, depending on where you are in the turn queue.`);
			} else if (socket.points === room.highestScore) {
				if (socket.cards > room.leastCards) {
					socket.emit('alert', 'warning', 'You have more cards than the other player with the same amount of points. Therefore you are not in the lead.');
				} else if (socket.cards < room.leastCards) {
					socket.emit('alert', 'info', `You have taken over the lead with ${socket.points} points and ${room.leastCards - socket.cards} fewer cards than the previous leader. Other players may be able to overtake you, so don't get your hopes up!`);
					socket.to(room).emit('alert', 'warning', `${socket.username} has taken the lead with ${socket.points} points and ${room.leastCards - socket.cards} fewer cards than the previous leader.`);
					room.currentWinnerID = socket.id;
					room.currentWinnerUsername = socket.username;
					room.leastCards = socket.cards;
				} else {
					socket.emit('alert', 'warning', `Although you have the same number of points and cards as the leader, they hit the lead before you so they are still in the lead.`);
				}
			}
			whoseTurn(room);
		} else if (room.turns % room.players.length === 0) {
			io.to(room.currentWinnerID).emit('alert', 'success', 'Congratulations! You won!');
			for (let i = 0; i < room.players.length; i++) {
				if (room.players[i].id !== room.currentWinnerID) {
					io.to(room.players[i].id).emit('alert', 'error', `You lost... ${room.currentWinnerUsername} won! Better luck next time.`);
				}
			}
			gameOver(room.roomName);
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
	io.emit('chat message', `It is ${player.username}'s turn.`);
}

function isPlayerTurn(id, room) {
	return id === room.players[room.turns % room.length].id;
}

function gameOver(name) {
	var currentRoom = io.sockets.adapter.rooms[name];
	
	currentRoom.turns = 0;
	currentRoom.gameInProgress = false;
	checkTokens(currentRoom, true);

	currentRoom.players.forEach(player => {
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

	io.in(name).emit('clear board');
	io.in(name).emit('enable new game button');
	io.in(name).emit('nobles button', true);
	io.in(name).emit('clear nobles');
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