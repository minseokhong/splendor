// Main file
// Handles client-side logic

// Splendor JSON Files
// Diamond
// 		https://api.myjson.com/bins/5yflb
// Sapphire
// 		https://api.myjson.com/bins/q765r
// Emerald
// 		https://api.myjson.com/bins/1fst67
// Ruby
// 		https://api.myjson.com/bins/1530a7
// Onyx
// 		https://api.myjson.com/bins/oh0i7


$(() => {
	var DECKS = 3;

	var names = [
		"Doc", "Grumpy", "Happy", "Sleepy", "Dopey", "Bashful", "Sneezy", "Bobby", "Gambino",
		"Dwight", "Egbert", "Eustace", "Cora", "Teddy", "Ursala"
	];
	// var colors = [
	// 	"#39362E", "#C57819", "#DC9028", "#A6C3D7", "#6B8395", "#131011", "#673249", "#DC153F",
	// 	"#F694B3", "#DD399E", "#6D5837", "#9D794D", "#B18C5F", "#C2A68B", "#77748A", "#1A1C1A",
	// 	"#737A1D", "#4A5D4E", "#BEB8B5", "#85896D", "#84651B", "#DD620A", "#E09938", "#C8AE9B",
	// 	"#7C9060", "#5F5054", "#442825", "#B13E34", "#C3C7D5", "#A5A759", "#675956", "#373037",
	// 	"#4C9ABD", "#AFBABE", "#7B6D70", "#301F21", "#675855", "#4A373D", "#B2C4CB", "#65798E",
	// 	"#3A7F17", "#5FBE32", "#53C602", "#94D941", "#EC6D49", "#DB0000", "#00BD4F", "#F7882F",
	// 	"#4B3434", "#F222FF", "#8C1EFF"
	// ];

	var socket = io();
	
	// Replace all instances of the resources, tokens, cards, score,
	// connected, and username variables with the Player fields.
	var Player = {
		userName: "",
		id: "",
		room: "",
		score: 0,
		resources: {
			diamond: 0,
			sapphire: 0,
			emerald: 0,
			ruby: 0,
			onyx: 0,
			gold: 0
		},
		tokens: {
			diamond: 0,
			sapphire: 0,
			emerald: 0,
			ruby: 0,
			onyx: 0,
			gold: 0,
			total: 0
		},
		cards: {
			diamond: 0,
			sapphire: 0,
			emerald: 0,
			ruby: 0,
			onyx: 0,
			reserved: 0
		}
	};

	/******************************** ROOM STUFF ********************************/
	$('#newRoom').click(() => {
		swal.mixin({
			title: '방 만들기',
			input: 'text',
			showCancelButton: true,
			progressSteps: ['1', '2']
		}).queue([
			{
				inputPlaceholder: '방 이름',
				text: '방 이름을 입력하세요.',
				confirmButtonText: '다음'
			},
			{
				inputPlaceholder: '비밀번호',
				text: '비밀번호를 설정하세요(선택).',
				confirmButtonText: '방 만들기'
			}
		]).then((result) => {
			if(result.value){
				var roomName = result.value[0];
				var password = result.value[1];
	
				if(roomName === "") {
					swal.fire({
						type: 'error',
						text: '방 이름을 입력하세요.'
					})
				} else {
					socket.emit('new room', roomName, password);
				}
			}
		});
	});

	$('#refresh').click(() => {
		$('#roomTable > [id!=roomRabel]').remove();
		socket.emit('refresh rooms', (rooms) => {
			showRooms(rooms);
		});
	});

	$('#leaveRoom').click(() => {
		Player.room = "";
		$('#leaveRoom').attr('hidden', true);
		$('#newRoom').attr('hidden', false);
		$('#roomDiv').attr('hidden', false);
		$('#newGame').attr('hidden', true);
		socket.emit('leave room');
	});

	socket.on('show rooms', (rooms) => {
		showRooms(rooms);
	});

	socket.on('enter room', (roomName) => {
		Player.room = roomName;
		$('#leaveRoom').attr('hidden', false);
		$('#newRoom').attr('hidden', true);
		$('#roomDiv').attr('hidden', true);
		$('#newGame').attr('hidden', false);
	});

	function showRooms(rooms) {
		for (var room in rooms) {
			var password = rooms[room].password
			let roomtr = $('<tr></tr>').attr('id', rooms[room].roomName);
			let nametd = $('<td></td>').text(rooms[room].roomName);
			let numtd = $('<td></td>').text(rooms[room].players.length + " / 4");
			let btntd = $('<td><button type="button" class="btn btn-primary">Join Room</button></td>');
			btntd.click(() => {
				if(password !== "") {
					swal.fire({
						text: '비밀번호를 입력하세요.',
						input: 'password'
					}).then((result) => {
						if(result.value === password) {
							Player.room = rooms[room].roomName;
							socket.emit('join room', rooms[room].roomName);
						} else {
							swal.fire({
								type: 'error',
								text: '비밀번호가 틀렸습니다!'
							});
						}
					});
				} else {
					Player.room = rooms[room].roomName;
					socket.emit('join room', rooms[room].roomName);
				}
			});
			roomtr.append(nametd, numtd, btntd);
			$('#roomTable').append(roomtr);
		};		
	}

	socket.on('leave from room', () => {
		$('#leaveRoom').attr('hidden', true);
		$('#newRoom').attr('hidden', false);
		$('#roomDiv').attr('hidden', false);
		$('#newGame').attr('hidden', true);
		socket.emit('leave room');
		Player.room = "";
	})

	/******************************** GENERAL GAME STUFF ********************************/
	swal.fire({
		title: 'What is your name?',
		input: 'text',
		inputPlaceholder: 'Enter your name or nickname',
		showCancelButton: false,
		allowOutsideClick: false,
		inputValidator: function (value) {
			return new Promise(function (resolve, reject) {
				if (value) {
					resolve();
				} else {
					reject('You need to write something!');
				}
			});
		}
	}).then(function (name) {
		join(name.value);
	}, function (dismiss) {
		join();
	});

	$('#newGame').click(() => {
		socket.emit('new game');
	});

	socket.on('set id', (id) => {
		Player.id = id;
	})

	socket.on('show board', (players) => {
		$('#newGame').attr('hidden', true);
		$('#showNobles').attr('hidden', false);
		$('#cards').attr('hidden', false);
		$('#tokens').attr('hidden', false);
		$('#deck1 .playing-card').click({
			src: 'deck',
			deck: 'deck1'
		}, reserveCard);
		$('#deck2 .playing-card').click({
			src: 'deck',
			deck: 'deck2'
		}, reserveCard);
		$('#deck3 .playing-card').click({
			src: 'deck',
			deck: 'deck3'
		}, reserveCard);
		$('#tokensInHand').children('.col').each(function () {
			let id = $(this).prop('id').slice(0, -3) + 's';
			if (id === 'rubys') {
				id = 'rubies';
			} else if (id === 'onyxs') {
				id = 'onyx';
			} else if (id === 'golds') {
				id = 'gold';
			}
			$(this).append($("<p></p>").text(`${id}`));
		});
		$('#cardsInHand').children('.col').each(function () {
			let id = $(this).prop('id').slice(0, -3) + 's';
			if (id === 'rubys') {
				id = 'rubies';
			} else if (id === 'onyxs') {
				id = 'onyx';
			} else if (id === 'reserveds') {
				id = 'reserved';
			}
			$(this).append($("<p></p>").text(`${id}`));
		});
		$('#gameArea').attr('hidden', false);
		$('#greeting').removeClass('centered');
		$('#scoreboard').attr('hidden', false);
		createScoreboard(players);
		$('#newGame').attr('hidden', true);
	});

	socket.on('display token', (token, number) => {
		var tokenDiv = $(`#${token}Tokens`);
		for (let i = 0; i < number; i++) {
			let imgDiv = $('<div></div>').css({
				'position': 'absolute',
				'margin-left': `${i * 5}px`
			}).append($(`<img src='/assets/gems/${token}.png' width='100' height='100'>`)
				.addClass(`token ${token}-token`)
				.click({
					token: token
				}, getToken));
			tokenDiv.append(imgDiv);
		}
		// var numDiv = $('<h5>' + number + '<h5/>').css({
		// 	'position': 'absolute',
		// 	'margin-left': '125px',
		// 	'margin-top': '75px'
		// });
		// tokenDiv.append(numDiv);
	});

	socket.on('generate nobles', (src, nobles) => {
		for (let i = 0; i < nobles.length; i++) {
			let div = $('<div></div>').addClass('col text-center');
			let img = $(`<img src='${src}${nobles[i].name}.jpg' alt='${JSON.stringify(nobles[i].price)}' name='${nobles[i].name}'>`)
				.attr({
					width: '150px',
					height: '150px'
				});
			let span = $('<span></span>').text(nobles[i].name.replace(/[_]/g, " "));
			div.append(img, span);
			$('#nobles').append(div);
		}
	});

	socket.on('clear nobles', () => {
		$('#nobles').empty();
	});

	socket.on('clear board', () => {
		for (let i = 1; i <= 3; i++) {
			$(`#deck${i}Cards`).empty();
		}
		$('#cards').attr('hidden', true);
		for (let token in Player.tokens) {
			Player.tokens[token] = 0;
			if (token !== 'total') {
				$(`#${token}Tokens`).empty();
			}
		}
		$('#tokens').attr('hidden', true);
		$('#tokensInHand').children('.col').each(function () {
			$(this).empty();
		});
		$('#cardsInHand').children('.col').each(function () {
			$(this).empty();
		});
		$('#newGame').attr('hidden', true);
		$('#newRoom').attr('hidden', false);
		$('#showNobles').attr('hidden', true);
		$('#gameArea').attr('hidden', true);
		$('#greeting').addClass('centered');
		$('#roomDiv').attr('hidden', false);
		$('#scoreboard').attr('hidden', true);
	});

	socket.on('show scoreboard', (players) => {
		$('#scoreboard > [id!=rabel]').remove();
		createScoreboard(players);
	});

	socket.on('refresh socket', () => {
		socket.emit('req refresh');
	})
	
	function createScoreboard(players){
		for(let i = 0; i < players.length; i++){
			let playerDiv = $('<div></div>').attr('user-id', players[i].id).addClass('row justify-content-center');
			let playerName = $('<div></div>').text(players[i].userName).addClass('isb nameisb');
			let playerScore = $('<div></div>').text(players[i].score).addClass('isb scoreisb');
			let playerGold = $('<div></div>').text(players[i].tokens.gold + " / " + (players[i].resources.gold - players[i].tokens.gold)).addClass('isb goldisb');
			let playerDiamond = $('<div></div>').text(players[i].tokens.diamond + " / " + (players[i].resources.diamond - players[i].tokens.diamond)).addClass('isb diamondisb');
			let playerSapphire = $('<div></div>').text(players[i].tokens.sapphire + " / " + (players[i].resources.sapphire - players[i].tokens.sapphire)).addClass('isb sapphireisb');
			let playerEmerald = $('<div></div>').text(players[i].tokens.emerald + " / " + (players[i].resources.emerald - players[i].tokens.emerald)).addClass('isb emeraldisb');
			let playerRuby = $('<div></div>').text(players[i].tokens.ruby + " / " + (players[i].resources.ruby - players[i].tokens.ruby)).addClass('isb rubyisb');
			let playerOnyx = $('<div></div>').text(players[i].tokens.onyx + " / " + (players[i].resources.onyx - players[i].tokens.onyx)).addClass('isb onyxisb');
			playerDiv.append(playerName, playerScore, playerGold, playerDiamond, playerSapphire, playerEmerald, playerRuby, playerOnyx);
			$('#scoreboard').append(playerDiv);
		}
	}

	function join(name) {
		// Player.username = name ? name : names[Math.floor(Math.random() * names.length)];
		// userColor = colors[Math.floor(Math.random() * colors.length)];
		Player.userName = name;
		Player.score = 0;
		// socket.emit('new user', Player, userColor);
		socket.emit('new user', Player);
	}

	function updatePlayerStatus() {
		socket.emit('update player status', Player);
	}

	/******************************** CARD STUFF ********************************/
	socket.on('display card', (deck, card) => {
		displayCard(deck, card);
	});

	socket.on('get card', (data) => {
		// Removes the tokens needed to purchase the card
		purchaseCard(data.card.price);

		// Removes the click event handler from the purchased card
		$(`[json='${JSON.stringify(data.card)}']`)
			.children()
			.unbind("click");

		// Add the purchased card to the player's hand
		// Also remove the class to properly position the card
		getCard(data.card);
		Player.cards[data.card.type] += 1;
		if (data.reserved) {
			Player.cards.reserved -= 1;
		}
		Player.resources[data.card.type]++;
		Player.score += data.card.points;
		socket.emit('check nobles', Player.cards);
	});

	socket.on('reserve card', (card, src) => {
		switch (src) {
			case 'deck':
				displayCard(null, card, true);
				break;
			case 'card':
				getCard(card, true);
				Player.cards.reserved++;
		}
	});

	socket.on('validated', (data) => {
		socket.emit('get card', data);
	});

	// Removes card from the board (so nobody else can purchase it)
	socket.on('remove card', (data) => {
		$(`[json='${JSON.stringify(data.card)}']`).remove();
	});

	// Displays the empty deck
	socket.on('deck is empty', (deck) => {
		$(`#${deck}`).children().removeClass('pcb').addClass('empty').children().text("EMPTY");
	});

	function purchaseCard(price) {
		let tokensToRemove = [];
		let amounts = [];
		let goldToRemove = 0;
		for (let token in price) {
			if (Player.cards[token] < price[token]) {
				let diff = price[token] - Player.cards[token];
				let amount = Player.tokens[token];
				if (Player.tokens[token] < diff) {
					goldToRemove += diff - Player.tokens[token];
				}
				tokensToRemove.push(token);
				amounts.push(amount);
			}
		}
		if (goldToRemove > 0) {
			tokensToRemove.push('gold');
			amounts.push(goldToRemove);
		}
		removeTokensFromHand(tokensToRemove, amounts);
	}

	// Add the purchased/reserved card to the player's hand
	// Also remove the class to properly position the card
	function getCard(card, reserved) {
		let id = reserved ? '#reservedcih' : `#${card.type}cih`;
		let margins = reserved ? Player.cards.reserved : Player.cards[card.type];
		$(id)
			.append($(`[json='${JSON.stringify(card)}']`)
				.removeClass('col-md-3')
				.css({
					"margin-top": `${margins * 50}px`,
					"margin-left": `${margins * 5}px`,
					"position": 'absolute'
				}).mouseenter(bringToFront).mouseleave(sendToBack));

		if (reserved) {
			$(`[json='${JSON.stringify(card)}']`).children().unbind("click").click({
				src: 'card',
				card: card,
				resources: Player.resources,
				reserved: reserved
			}, validateCard);
		}
	}

	function reserveCard(event) {
		if (Player.cards.reserved < 3) {
			socket.emit('reserve card', event.data);
		} else {
			sweetAlert('error', '이미 3장의 카드를 예약했습니다.');
		}
	}

	// Displays cards from the deck to the public board, or to
	// a player's hand if they reserve from the deck.
	function displayCard(deck, card, reserved) {
		var cardDiv = $('<div></div>').addClass(`row no-gutters justify-content-center`).append($(`<img class="playing-card" src="./assets/cards/${card.type}${card.points}${card.price.diamond}${card.price.sapphire}${card.price.emerald}${card.price.ruby}${card.price.onyx}.jpg" alt="${card.type}${card.points}${card.price.diamond}${card.price.sapphire}${card.price.emerald}${card.price.ruby}${card.price.onyx}">`)).click({
			src: 'card',
			card: card,
			deck: deck,
			resources: Player.resources
		}, validateCard);

		var colDiv;
		if (!reserved) {
			colDiv = $('<div></div>').addClass('col-md-3').attr('json', JSON.stringify(card));
			colDiv.append(cardDiv);
			$(`#${deck}Cards`).append(colDiv);
		} else {
			colDiv = $('<div></div>').attr('json', JSON.stringify(card));
			colDiv.append(cardDiv)
				.css({
					"margin-top": `${Player.cards.reserved * 50}px`,
					"margin-left": `${Player.cards.reserved * 5}px`,
					"position": 'absolute'
				});
			Player.cards.reserved += 1;
			$('#reserved').append(colDiv);
		}
	}

	/**
	 * Validates 
	 * @param {object} event - Object representing the card to be validated.
	 */
	function validateCard(event) {
		if (event.shiftKey && !event.data.reserved) {
			reserveCard(event);
			// socket.emit('reserve card', event.data);
		} else {
			socket.emit('validate', event.data);
		}
	}

	function bringToFront() {
		$(this).css('z-index', '1');
	}

	function sendToBack() {
		$(this).css('z-index', '0');
	}

	/******************************** TOKEN STUFF ********************************/
	// Allows the user to add the token to their hand
	socket.on('get token', (token, double, lastGrab) => {
		addTokenToHand(token, double);

		if ((Player.tokens.total > 10 && token === 'gold') || (Player.tokens.total > 10 && lastGrab)) {
			chooseTokensToRemove(Player.tokens.total - 10);
		} else if (lastGrab || token === 'gold') {
			updatePlayerStatus();
			socket.emit('next turn');
		}
	});

	function getToken(event) {
		if (event.shiftKey) {
			socket.emit('get token', event.data, true);
		} else {
			socket.emit('get token', event.data, false);
		}
	}

	function addTokenToHand(token, double) {
		Player.tokens[token]++;
		Player.tokens.total++;
		Player.resources[token]++;
		let tokenDiv = $(`#${token}Tokens div:last-child`).css({
			'margin-left': `${Player.tokens[token] * 5}px`
		});
		tokenDiv.children().unbind('click');
		$(`#${token}tih`).append(tokenDiv);

		if (double) {
			Player.tokens[token]++;
			Player.tokens.total++;
			Player.resources[token]++;
			tokenDiv = $(`#${token}Tokens div:last-child`).unbind('click').css({
				'margin-left': `${Player.tokens[token] * 5}px`
			});
			$(`#${token}tih`).append(tokenDiv);
		}
	}

	// Removes token(s) from the board (so nobody else can take it)
	socket.on('remove token from stack', (token, double) => {
		removeTokenFromStack(token, double);
	});

	function removeTokenFromStack(token, double) {
		$(`#${token}Tokens div:last-child`).remove();
		if (double) {
			$(`#${token}Tokens div:last-child`).remove();
		}
	}

	// Replaces the token(s)
	socket.on('add token to stack', (token, amount) => {
		for (let i = 0; i < amount; i++) {
			addTokenToStack(token);
		}
	});

	function addTokenToStack(token) {
		let offset = parseInt($(`#${token}Tokens div:last-child`).css('margin-left'));
		let tokenDiv = $(`#${token}Tokens`);
		let imgDiv = $('<div></div>').css({
			'position': 'absolute',
			'margin-left': `${offset + 5}px`
		}).append($(`<img src='/assets/gems/${token}.png' width='100' height='100'>`)
			.addClass(`token ${token}-token`)
			.click({
				token: token
			}, getToken));
		tokenDiv.append(imgDiv);
	}

	function removeTokensFromHand(tokensToRemove, amounts) {
		for (let i = 0; i < amounts.length; i++) {
			if (amounts[i] !== 0) {
				for (let j = 0; j < amounts[i]; j++) {
					$(`#${tokensToRemove[i]}tih div:last-child`).remove();
					addTokenToStack(tokensToRemove[i]);
					Player.resources[tokensToRemove[i]]--;
					// Player.tokens[tokensToRemove[i]]--;
					Player.tokens[tokensToRemove[i]]--;
					Player.tokens.total--;
				}
				socket.emit('add token to stack', tokensToRemove[i], amounts[i]);
			}
		}

		if ($('#tokensModal').hasClass('show')) {
			$('#tokensModal').modal('hide');
			updatePlayerStatus();
			socket.emit('next turn');
		}

	}

	function chooseTokensToRemove(number) {
		for (let token in Player.tokens) {
			if (token !== 'total' && Player.tokens[token] > 0) {
				let div = $('<div></div>').addClass('col text-center');
				let imgDiv = $('<div></div>').append($(`<img src='/assets/gems/${token}.png' width='100' height='100'>`)
					.addClass(`token ${token}-token`));
				let min = Math.min(number, Player.tokens[token]);
				let numInput = $(`<input type='number' min='0' max='${min}' placeholder='Max of ${min}' class='number-removed'>`).css('width', '100px').data('token', token);
				div.append(imgDiv, numInput);
				$('#tokensToRemove').append(div);
			}
		}

		$('#tokensModal').modal({
			show: true,
			keyboard: false,
			backdrop: "static"
		});
	}

	$('#removeTokens').click(() => {
		let values = [];
		let tokenData = [];
		let total = 0;
		$('.number-removed').each(function () {
			let tempVal = $(this).val() === '' ? 0 : parseInt($(this).val());
			values.push(tempVal);
			tokenData.push($(this).data('token'));
			total += tempVal;
		});
		if (total !== Player.tokens.total - 10) {
			sweetAlert('info', `${Player.tokens.total - 10}개의 ${Player.tokens.total - 10 === 1 ? '토큰' : '토큰들'}을 선택해주세요.`);
		} else {
			$('#tokensToRemove').empty();
			removeTokensFromHand(tokenData, values);
		}
	});

	/******************************** CHAT STUFF ********************************/
	socket.on('chat message', (msg) => {
		var tempLi = $('<li></li>').text(msg);
		tempLi.addClass("list-group-item");
		$('#messages').append(tempLi);
		$('#messages').scrollTop($('#messages')[0].scrollHeight);
	});

	$('#messageButton').click(() => {
		socket.emit('chat message', $('#m').val());
		$('#m').val('');
	});

	$('#m').keypress((e) => {
		if (e.which === 13) {
			socket.emit('chat message', $('#m').val());
			$('#m').val('');
			return false;
		}
	});

	$('#chatModal').on('shown.bs.modal', (e) => {
		$('#messages').scrollTop($('#messages')[0].scrollHeight);
	});

	/******************************** MISC STUFF ********************************/
	socket.on('next turn', () => {
		updatePlayerStatus();
		socket.emit('next turn');
	});

	socket.on('get noble', (noble) => {
		$(`img[name='${noble.name}']`).parent().append($(`<h6>Taken by ${Player.userName}</h6>`));
		Player.score += 3;
	});

	socket.on('assign noble', (noble) => {
		$(`img[name='${noble.name}']`).parent().append($(`<h6>Taken by ${Player.userName}</h6>`));
	});

	// Alerts the player(s)
	socket.on('alert', (type, msg) => {
		sweetAlert(type, msg);
	});

	socket.on('notify', function () {
		$('body').toggleClass('notify');
		setTimeout(function () {
			$('body').toggleClass('notify');
		}, 1500);
		swal.fire({
			type: 'info',
			text: '당신의 턴입니다!'
		})
		// $.titleAlert("Your Turn!", {
		// 	requireBlur: true,
		// 	stopOnFocus: true,
		// 	interval: 600
		// });
		// if (soundEnabled) {
		// 	var ding = new Audio(getDing());
		// 	ding.play();
		// }
	});

	function sweetAlert(type, msg) {
		swal.fire({
			type: type,
			text: msg
		});
	}
});