<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<audio id="alertSound" src="img/alert.mp3" preload="metadata"></audio>
<script src="/webjars/sockjs-client/sockjs.min.js"></script>
<script src="/webjars/stomp-websocket/stomp.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.0.js"
	integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	crossorigin="anonymous"></script>
<script src="js/message.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="js/jquery.jrumble.1.3.min.js"></script> 


<script type="text/javascript">
	
  	$(document).ready(function() {
  		
		$('.${activeLocation }').addClass('active');// 사용자의 현재 웹페이지 위치에 따라 헤더 부분에 active 표시를 위한 메서드
		
  		$.ajax({// 페이지 로드 이후 바로 사용자의 쪽지 목록 데이터를 ajax로 가져오기
  			url : 'http://localhost:8000/getSenderList', 
  			type : 'POST', 
  			data : {
  				receiver : '${user.user_name}'
  			}, 
  			dataType : "json", 
  			success : function(data) {
				var amount = 0;
  				data.forEach(msgMeta => {
					var isNew = '';
					if(msgMeta.mess_is_show == 0) {
						amount++;
						isNew = '"new"';
					}
					$('.쪽지_내용').append(
						addMsgTemplate(msgMeta, isNew, msgMeta.mess_send_date)
					)
				});
				if(amount != 0) {
					$('#alert-amount').text(amount);
					// rumbleAlertArea();
					doRumbleAndInterval();
				}
  			}, 
  			error : function() {
  				alert("쪽지 데이터를 가져오는데 실패하였습니다.");
  			}
  		});
		
  		connect();// 웹소켓 서버 연결을 위한 메서드
  		
  	});
	
  	// 이후로는 모두 메시지 전송 관련 메서드
  	var stompClient = null;

  	function connect() {
  	    var socket = new SockJS('/websocket');
  	    stompClient = Stomp.over(socket);
  	    stompClient.connect({}, function (frame) {
//   	        setConnected(true);
//   	        console.log('Connected: ' + frame);
  	        stompClient.subscribe('/alert/${user.user_name}', function (message) {
  	            alertAndAddNewMessage(JSON.parse(message.body));
  	        });
  	    });
  	}

  	function alertAndAddNewMessage(msgMeta) {
		var amount = $('#alert-amount').text();
  		if(amount == '' || amount == null) {
			  $('#alert-amount').text('1');
		  } else {
			$('#alert-amount').text(amount*1 + 1)
		  }
		$('.쪽지_내용').prepend(
			addMsgTemplate(msgMeta, '"new"', msgMeta.mess_send_date)
		);
		
  		$('#alertSound')[0].play();
		// rumbleAlertArea();
		doRumbleAndInterval();
  	}

//   	function setConnected(connected) {
//   	    $("#connect").prop("disabled", connected);
//   	    $("#disconnect").prop("disabled", !connected);
//   	    if (connected) {
//   	        $("#conversation").show();
//   	    }
//   	    else {
//   	        $("#conversation").hide();
//   	    }
//   	    $("#greetings").html("");
//   	}

//   	function disconnect() {
//  	    if (stompClient !== null) {
//  	        stompClient.disconnect();
//  	    }
//  	    setConnected(false);
//  	    console.log("Disconnected");
//   	}
	
	function sendMessage() {
		stompClient.send("/msg/sendMessage", {}, JSON.stringify({
			'mess_sender': '${user.user_name }', 
			'mess_receiver' : $('#msg_receiver').val(), 
			'mess_content' : $('#msg_content').val()
			}));
			$('#msg_receiver').val('');
			$('#msg_content').val('');
			$('#msg_send_result').text('메시지를 전송하였습니다.');
			
			setTimeout(function() {
				$('#msg_send_result').text('');
				$('.a1').slideToggle('fast');
			}, 500);

    	// $.ajax({
    	// 	type : "POST", 
    	// 	url : "http://localhost:8000/sendMessage", 
    	// 	data : {
    	// 		mess_sender : '${user.user_name }', 
    	// 		mess_receiver : $('#msg_receiver').val(), 
    	// 		mess_content : $('#msg_content').val()
    	// 	}, 
    	// 	success : function() {
    	// 		$('#msg_receiver').val('');
    	// 		$('#msg_content').val('');
		// 		$('#msg_send_result').text('메시지를 전송하였습니다.');
		// 		setTimeout(function() {
		// 			$('#msg_send_result').text('');
		// 			$('.a1').slideToggle('fast');
		// 		}, 1000);
    	// 	}
    	// 	, error : function() {
    	// 		alert("자네.. 메시지를 보내는데 실패하였다.. 미안하네..");
    	// 	}
    	// });
	};

  	$(function () {
  	    $("form").on('submit', function (e) {
  	        e.preventDefault();
  	    });
  	    $( "#connect" ).click(function() { connect(); });
  	    $( "#disconnect" ).click(function() { disconnect(); });
  	    $( "#send" ).click(function() { sendName(); });
  	});

	function rumbleAlertArea() {
		$('.notification').jrumble();
		$('.notification').trigger('startRumble');
		setTimeout(function() {
			$('.notification').trigger('stopRumble');
		}, 600);
	}

	var rumbleInterval = 0;

	function doRumbleAndInterval() {
		rumbleAlertArea();
		return rumbleInterval = setInterval(rumbleAlertArea, 3000);
	}
	
	function addMsgTemplate(msgMeta, isNew, sendDate) {
		sendDate = parseDateFormat(sendDate);
		
		return $('<div></div>').addClass('msg1 messStyle1').append(
					$('<div></div>').addClass('messStyle2').append(
						$('<img src="/img/no_profile.png"></img>').addClass('messStyle3')
					), 
					$('<div></div>').addClass('msg_click messStyle4').attr('onclick', 'msg_click('+msgMeta.mess_num+')').append(
						$('<div>'+isNew+'<div>').addClass('mess'+msgMeta.mess_num+' messIsNew'), 
						$("<div>'"+msgMeta.mess_sender+"'님<br>에게 쪽지가 도착했습니다.</div>").addClass('messStyle5'), 
						$('<div>'+sendDate+'</div>').addClass('messStyle6')
					), 
					$('<div></div>').addClass('messStyle7').append(
						$('<button type="button" class="close" id="close" aria-label="Close"></button>').addClass('messStyle8').append(
							$('<span aria-hidden="true">&times;</span>')
						)
					)
				)
	}

	function msg_click(mess_num) {
		$.ajax({
			type : "POST", 
			url : "http://localhost:8000/readMessage", 
			data : {
				mess_num : mess_num
			}, 
			dataType : "json", 
			success : function(msg) {
				if($('.mess'+mess_num).text() == '"new"') {
					var amount = $('#alert-amount').text();
					if(amount == 1) {
						clearInterval(rumbleInterval);
						$('#alert-amount').text("");
					} else {
						$('#alert-amount').text(amount*1 - 1);
					}
				}

				$('#mess_sender_area').text(msg.mess_sender);
				$('#mess_content_area').text(msg.mess_content);
				$('.답장하기').attr("sender", msg.mess_sender);
				$('.mess'+mess_num).text('')
				$('.message-box').show('fast');

			}, 
			error : function() {
				alert('메시지 로딩 실패!!!!!햇떠')
			}
		});
	}

	function parseDateFormat(date) {
		var yyyy = date.substring(0, 4);
		var MM = date.substring(5, 7);
		var dd = date.substring(8, 10);
		var hh = date.substring(11, 13);
		var mm = date.substring(14, 16);
		var ss = date.substring(17, 19);

		return yyyy+'-'+MM+'-'+dd+' '+hh+':'+mm+':'+ss;
	}

	</script>
<style type="text/css">
.messStyle1 {
	padding: 5%;
	height: 30%;
	border: 1px solid;
}

.messStyle2 {
	float: left;
	position: relative;
	display: inline-block;
	width: 30%;
	margin-right: 5%;
	height: 100%;
}

.messStyle3 {
	position: absolute;
	top: auto;
	margin-right: 5%;
}

.messStyle4 {
	float: left;
	position: relative;
	color: black;
	display: inline-block;
	width: 60%;
	font-size: 12px;
}

.messStyle5 {
	width: 100%;
	/* line-height: 27px; */
	cursor: pointer;
}

.messStyle6 {
	margin-top: 9px;
	color: #777777;
}

.messStyle7 {
	/* float: right; */
	position: relative;
	display: inline-block;
	width: 5%;
	height: 100%;
	font-size: 12px;
}

.messStyle8 {
	position: absolute;
	right: 0;
	top: -5px;
}

.messIsNew {
	position: absolute;
	width: 145px;
	top: -5px;
	text-align: right;
	color: rgb(201, 168, 22);
}

#alert-amount {
	display: inline-block;
	position: relative;
	top: -1px;
	left: 47px;
    border-radius: 3em;
    padding: .1em  .2em;
    line-height: 1.25em;
	color: black;
	background-color: hsl(51, 85%, 43%);
    border: 1px solid #ffd700;
    font-size: .8em;
	font-weight: 600;
    text-align: center;
	z-index: 1;
	
	

}
</style>

</head>
<body>
	<!--================Header Menu Area =================-->
	<header class="header_area">
	<div class="main_menu">
		<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container">

			<!-- Brand and toggle get grouped for better mobile display -->
			<a class="navbar-brand logo_h" href="index"
				style="text-align: center; color: #777777;"><img class="logo"
				src="img/joystick.png" alt="">R.N.G<aside> </aside></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse offset"
				id="navbarSupportedContent">
				<ul class="nav navbar-nav menu_nav justify-content-center">
					<li class="nav-item submenu dropdown">
					<li class="nav-item index"><a class="nav-link" href="index">홈페이지</a></li>
					<li class="nav-item about-us"><a class="nav-link"
						href="about-us">게임소개</a></li>
					<li class="nav-item screenshot"><a class="nav-link"
						href="screenshot">스크린샷</a></li>
					<li class="nav-item community submenu dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">커뮤니티</a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="nav-link" href="guild">길드</a></li>
							<li class="nav-item"><a class="nav-link" href="자유게시판">자유게시판</a></li>
						</ul></li>
					<li class="nav-item service submenu dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="nav-link" href="BBS">FAQ</a></li>
							<li class="nav-item"><a class="nav-link" href="나문의">1:1문의</a></li>
						</ul></li>
				</ul>
				<div class="primary_btn" onclick="location.href='http://192.168.0.34:3000/id=${user.user_name }'">GameStart</div>
				<span id="alert-amount"></span>
				<div class="notification"><img src="/img/notification.png"
					title="알림"></div>


				<div class="message-box"
					style="border: 1px solid black; z-index: 1;">
					<div
						style="background-color: rgb(205, 216, 54); height: 40%; text-align: center;">
						<button type="button" class="close" id="close_쪽지확인창"
							aria-label="Close"
							style="position: absolute; right: 0; top: 2%; right: 5%;">
							<span aria-hidden="true">&times;</span>
						</button>

						<img src="/img/jihyo.jpg"
							style="position: absolute; width: 30%; left: 35%; top: 9%;">
					</div>
					<div
						style="position: relative; background-color: white; height: 60%; text-align: center;">
						<div style="margin-left: 5%; height: 20%; font-size: 20px;">
							from.
							<div id="mess_sender_area"
								style="display: inline-block; width: 60%; height: 80%; font-size: 15px; border: none; margin-top: 5%;">
								윤현빈</div>

						</div>

						<div
							style="position: absolute; margin-left: 15%; width: 80%; height: 60%;">
							<div id="mess_content_area" cols="30" rows="10"
								style="font-size: 10px; text-align: left; height: 60%; border: none; margin-top: 8%; margin-right: 10%; overflow-y: scroll;">
								<!-- 안녕 현빈아 ^^ 잘 지내지????
										Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem similique tenetur molestiae, quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? -->
							</div>
						</div>
						<div
							style="position: absolute; bottom: 10%; text-align: center; width: 100%;">
							<input class="답장하기" type="button" value="답장하기" sender=""
								style="background-color: white; color: rgb(205, 216, 54); border: none; cursor: pointer;">

						</div>
					</div>
				</div>


				<div class="a2" style="border: 1px solid black;">
					<div
						style="display: inline-block; height: 8%; text-align: center; width: 100%; background-color: white;">
						<div class="쪽지"
							style="display: inline-block; background-color: lightgreen; width: 49%; height: 100%;">쪽지</div>
						<div class="알림"
							style="display: inline-block; background-color: skyBlue; width: 49%; height: 100%;">알림</div>
					</div>

					<div class="쪽지_내용"
						style="background-color: lightgreen; height: 92%; overflow-y: scroll;">

<!-- 						<div param="나야나" class="msg1" -->
<!-- 							style="padding: 5%; height: 30%; border: 1px solid;"> -->
<!-- 							<div -->
<!-- 								style="position: relative; display: inline-block; float: left; width: 30%; margin-right: 5%; height: 100%;"> -->
<!-- 								<img src="/img/jihyo.jpg" width="100%" -->
<!-- 									style="position: absolute; top: auto; margin-right: 5%;"> -->
<!-- 							</div> -->
<!-- 							<div class="msg_click" param="나야나" -->
<!-- 								style="display: inline-block; width: 60%; float: left; font-size: 12px;"> -->
<!-- 								<a style="color: black; width: 100%; cursor: pointer;"> 지효' -->
<!-- 									님<br>에게 쪽지가 도착했습니다. -->
<!-- 								</a> -->
<!-- 								<div style="margin-top: 10px">2018.9.9___17:16</div> -->
<!-- 							</div> -->
<!-- 							<div -->
<!-- 								style="position: relative; display: inline-block; float: right; width: 5%; height: 100%; font-size: 12px;"> -->
<!-- 								<button type="button" class="close" id="close" -->
<!-- 									aria-label="Close" -->
<!-- 									style="position: absolute; right: 0; top: -5px"> -->
<!-- 									<span aria-hidden="true">&times;</span> -->
<!-- 								</button> -->
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 						<div class="msg1"> -->
<!-- 							<div> -->
<!-- 								<img src="/img/jihyo.jpg"> -->
<!-- 							</div> -->
<!-- 							<div class="msg_click" mess_no="gdgd"> -->
<!-- 								<a> -->
<!-- 									지효' 님<br>에게 쪽지가 도착했습니다. -->
<!-- 								</a> -->
<!-- 								<div>2018.9.9___17:16</div> -->
<!-- 							</div> -->
<!-- 							<div> -->
<!-- 									<button type="button" id="close" aria-label="Close"> -->
<!-- 											<span aria-hidden="true">&times;</span> -->
<!-- 									</button> -->
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 						<div class="msg1" style="padding: 5%; height: 30%; border: 1px solid;"> -->
<!-- 							<div style="position: relative; display: inline-block; float: left; width: 30%; margin-right: 5%; height: 100%;"> -->
<!-- 								<img src="/img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;"> -->
<!-- 							</div> -->
<!-- 							<div style="display: inline-block; width: 50%; float: left; font-size: 12px;"> -->
<!-- 								<a class="msg_click" style="color: black; width: 100%; cursor: pointer;"> -->
<!-- 									지효' 님에게 쪽지가 도착했습니다. -->
<!-- 								</a> -->
<!-- 								<div>2018.9.9___17:16</div> -->
<!-- 							</div> -->
<!-- 							<div style="position: relative; display: inline-block; float: right; width: 5%; height: 100%; font-size: 12px;"> -->
<!-- 									<button type="button" class="close" id="close" aria-label="Close" -->
<!-- 									style="position: absolute; right: 0; top: -5px"> -->
<!-- 											<span aria-hidden="true">&times;</span> -->
<!-- 									</button> -->
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 						<div style="padding: 5%; height: 30%; border: 1px solid;"> -->
<!-- 							<div style="position: relative; display: inline-block; width: 30%; margin-right: 5%; height: 100%;"> -->
<!-- 								<img src="/img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;"> -->
<!-- 							</div> -->
<!-- 							<div style="display: inline-block; width: 50%; font-size: 12px; cursor: pointer;"> -->
<!-- 								<a href="" style="color: black; width: 100%;"> -->
<!-- 									'지효' 님에게 쪽지가 도착했습니다. -->
<!-- 								</a> -->
<!-- 								<br>2018.9.9___17:16 -->
<!-- 							</div> -->
<!-- 							<div style="position: relative; display: inline-block; width: 5%; height: 100%; font-size: 12px;"> -->
<!-- 									<button type="button" class="close" id="close" aria-label="Close" -->
<!-- 									style="position: absolute; right: 0; top: 0px"> -->
<!-- 											<span aria-hidden="true">&times;</span> -->
<!-- 									</button> -->
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 						<div style="padding: 5%; height: 30%; border: 1px solid;"> -->
<!-- 							<div style="position: relative; display: inline-block; width: 30%; margin-right: 5%; height: 100%;"> -->
<!-- 								<img src="img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;"> -->
<!-- 							</div> -->
<!-- 							<div style="display: inline-block; width: 50%; font-size: 12px;"> -->
<!-- 								<a href="" style="color: black; width: 100%; cursor: pointer;"> -->
<!-- 									'지효' 님에게 쪽지가 도착했습니다. -->
<!-- 								</a> -->
<!-- 								<br>2018.9.9___17:16 -->
<!-- 							</div> -->
<!-- 							<div style="position: relative; display: inline-block; width: 5%; height: 100%; font-size: 12px;"> -->
<!-- 									<button type="button" class="close" aria-label="Close" -->
<!-- 									style="position: absolute; right: 0; top: 0px"> -->
<!-- 											<span aria-hidden="true">&times;</span> -->
<!-- 									</button> -->
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 						<div style="padding: 5%; height: 30%; border: 1px solid;"> -->
<!-- 							<div style="position: relative; display: inline-block; width: 30%; margin-right: 5%; height: 100%;"> -->
<!-- 								<img src="img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;"> -->
<!-- 							</div> -->
<!-- 							<div style="display: inline-block; width: 50%; font-size: 12px;"> -->
<!-- 								<a href="" style="color: black; width: 100%; cursor: pointer;"> -->
<!-- 									'지효' 님에게 쪽지가 도착했습니다. -->
<!-- 								</a> -->
<!-- 								<br>2018.9.9___17:16 -->
<!-- 							</div> -->
<!-- 							<div style="position: relative; display: inline-block; width: 5%; height: 100%; font-size: 12px;"> -->
<!-- 								<button type="button" class="close" aria-label="Close" -->
<!-- 								style="position: absolute; right: 0; top: 0px"> -->
<!-- 										<span aria-hidden="true">&times;</span> -->
<!-- 								</button> -->
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 						<div style="padding: 5%; height: 30%; border: 1px solid;"> -->
<!-- 							<div -->
<!-- 								style="position: relative; display: inline-block; width: 30%; margin-right: 5%; height: 100%;"> -->
<!-- 								<img src="img/jihyo.jpg" width="100%" -->
<!-- 									style="position: absolute; top: auto; margin-right: 5%;"> -->
<!-- 							</div> -->
<!-- 							<div style="display: inline-block; width: 50%; font-size: 12px;"> -->
<!-- 								<a href="" style="color: black; width: 100%; cursor: pointer;"> -->
<!-- 									'지효' 님에게 쪽지가 도착했습니다. </a> <br>2018.9.9___17:16 -->
<!-- 							</div> -->
<!-- 							<div -->
<!-- 								style="position: relative; display: inline-block; width: 5%; height: 100%; font-size: 12px;"> -->
<!-- 								<button type="button" class="close" aria-label="Close" -->
<!-- 									style="position: absolute; right: 0; top: 0px"> -->
<!-- 									<span aria-hidden="true">&times;</span> -->
<!-- 								</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</div>


					<div class="알림_내용"
						style="display: none; background-color: skyBlue; height: 92%; text-align: center; overflow-y: scroll;">

						<div
							style="padding: 5%; height: 19%; border: none; font-size: 13px;">
							<div style="display: inline-block; width: 90%">
								<a href="" style="color: black; cursor: pointer;"> '윤현빈' 님이
									댓글을 달았습니다.<br> 2019.2.4___19:01
								</a>
							</div>
							<div
								style="position: relative; display: inline-block; width: 5%; height: 100%;">
								<button type="button" class="close" aria-label="Close"
									style="position: absolute; right: 0; top: 0px">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>

						<div
							style="padding: 5%; height: 19%; border: none; font-size: 13px;">
							<div style="display: inline-block; width: 90%">
								<a href="" style="color: black; cursor: pointer;"> '윤현빈' 님이
									댓글을 달았습니다.<br> 2019.2.4___19:01
								</a>
							</div>
							<div
								style="position: relative; display: inline-block; width: 5%; height: 100%;">
								<button type="button" class="close" aria-label="Close"
									style="position: absolute; right: 0; top: 0px">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>

						<div
							style="padding: 5%; height: 19%; border: none; font-size: 13px;">
							<div style="display: inline-block; width: 90%">
								<a href="" style="color: black; cursor: pointer;"> '윤현빈' 님이
									댓글을 달았습니다.<br> 2019.2.4___19:01
								</a>
							</div>
							<div
								style="position: relative; display: inline-block; width: 5%; height: 100%;">
								<button type="button" class="close" aria-label="Close"
									style="position: absolute; right: 0; top: 0px">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>

						<div
							style="padding: 5%; height: 19%; border: none; font-size: 13px;">
							<div style="display: inline-block; width: 90%">
								<a href="" style="color: black; cursor: pointer;"> '윤현빈' 님이
									댓글을 달았습니다.<br> 2019.2.4___19:01
								</a>
							</div>
							<div
								style="position: relative; display: inline-block; width: 5%; height: 100%;">
								<button type="button" class="close" aria-label="Close"
									style="position: absolute; right: 0; top: 0px">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>

						<div
							style="padding: 5%; height: 19%; border: none; font-size: 13px;">
							<div style="display: inline-block; width: 90%">
								<a href="" style="color: black; cursor: pointer;"> '윤현빈' 님이
									댓글을 달았습니다.<br> 2019.2.4___19:01
								</a>
							</div>
							<div
								style="position: relative; display: inline-block; width: 5%; height: 100%;">
								<button type="button" class="close" aria-label="Close"
									style="position: absolute; right: 0; top: 0px">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>

						<div
							style="padding: 5%; height: 19%; border: none; font-size: 13px;">
							<div style="display: inline-block; width: 90%">
								<a href="" style="color: black; cursor: pointer;"> '윤현빈' 님이
									댓글을 달았습니다.<br> 2019.2.4___19:01
								</a>
							</div>
							<div
								style="position: relative; display: inline-block; width: 5%; height: 100%;">
								<button type="button" class="close" aria-label="Close"
									style="position: absolute; right: 0; top: 0px">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>

						<div
							style="padding: 5%; height: 19%; border: none; font-size: 13px;">
							<div style="display: inline-block; width: 90%">
								<a href="" style="color: black; cursor: pointer;"> '윤현빈' 님이
									댓글을 달았습니다.<br> 2019.2.4___19:01
								</a>
							</div>
							<div
								style="position: relative; display: inline-block; width: 5%; height: 100%;">
								<button type="button" class="close" aria-label="Close"
									style="position: absolute; right: 0; top: 0px">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>
					</div>
				</div>




				<a class="mail"><img src="img/mail.png" title="쪽지"></a>

				<div class="a1" style="border: 1px solid black;">
					<div
						style="background-color: rgb(168, 9, 49); height: 40%; text-align: center;">
						<button type="button" class="close" id="close_쪽지보내기"
							aria-label="Close"
							style="position: absolute; right: 0; top: 2%; right: 5%;">
							<span aria-hidden="true">&times;</span>
						</button>
						<!-- 								<img src="img/jihyo.jpg"  -->
						<img src="${user.user_image }"
							style="position: absolute; width: 30%; left: 35%; top: 9%;">
					</div>
					<div
						style="background-color: white; height: 60%; text-align: center;">
						<div style="margin-left: 5%; height: 20%; font-size: 20px;">
							to. <input id="msg_receiver" type="text"
								placeholder="받는사람의 닉네임을 입력하세요." onfocus="this.placeholder = ''"
								onblur="this.placeholder = '받는사람의 닉네임을 입력하세요.'"
								style="width: 80%; height: 80%; font-size: 15px; border: none; margin-top: 5%;">
						</div>

						<div style="margin-left: 10%; height: 60%;">
							<textarea id="msg_content" cols="30" rows="10"
								placeholder="내용을 입력하세요." onfocus="this.placeholder = ''"
								onblur="this.placeholder = '내용을 입력하세요.'"
								style="font-size: 10px; width: 80%; height: 60%; border: none; margin-top: 8%; margin-right: 10%;"></textarea>
							</textarea>
							<div id="msg_send_result"
								style="margin-top: 5px; margin-right: 40px; text-align: right; color: green; font-size: 6px;"></div>
						</div>
						<div>
							<input type="button" value="보내기"
								style="text-align: right; background-color: white; color: rgb(168, 9, 49); border: none; cursor: pointer;"
								onclick=sendMessage();>

						</div>
					</div>
				</div>

				<a class="avatar" href="profile"><img src="img/avatar.png"
					title="프로필 설정"></a> <a class="cancel" href="logoutForm"><img
					src="img/cancel.png" title="로그아웃"></a>
			</div>
		</div>
		</nav>
	</div>
	</header>

	<!--================Header Menu Area =================-->
	<script>

		$('.mail').on('click', function() {
			$('.a1').slideToggle('fast');
			$('.a2').hide('fast');
		});

		$('.notification').on('click', function() {
			$('.a2').slideToggle('fast');
			$('.a1').hide('fast');
		});


		$('.쪽지').hover(function() {
			$('.쪽지').css('background-color', 'white');
			$('.쪽지_내용').css('display', 'block');
			$('.알림_내용').css('display', 'none');
			$('.쪽지_내용').css('background-color', 'lightgreen');
		}, function() {
			$('.쪽지').css('background-color', 'lightgreen');
		});

		$('.알림').hover(function() {
			$('.알림').css('background-color', 'white');
			$('.쪽지_내용').css('display', 'none');
			$('.알림_내용').css('display', 'block');
			$('.알림_내용').css('background-color', 'white');
		}, function() {
			$('.알림').css('background-color', 'white');
		});

		$('#close').click(function() {
			// $('.msg1').hide();
			$('.msg1').remove();
		});

		$('#close_쪽지확인창').click(function() {
			// $('.msg1').hide();
			$('.message-box').hide();
		});

		$('#close_쪽지보내기').click(function() {
			// $('.msg1').hide();
			$('#msg_receiver').val('');
			$('#msg_content').val('');
			$('.a1').hide();
		});

		$('.msg_click').click(function() {
			$('.message-box').show('fast');
		});

		$('.답장하기').on('click', function() {
				$('#msg_receiver').val($(this).attr('sender'));
				$('#msg_content').val('');
				$('.a1').slideToggle('fast');
				$('#msg_content').focus();
		});

		$(".cancel").click(function() {
			alert("로그아웃 되었습니다. 안녕히가세요.~~");
		});
		
		$("html").click(function(e) {
			if(!$(e.target).parents(".notification").length && !$(e.target).parents(".mail").length 
			&& !$(e.target).parents(".a2").length && !$(e.target).parents(".a1").length && !$(e.target).parents(".message-box").length) {
				$('.a1').css("display", "none");
				$('#msg_receiver').val('');
				$('#msg_content').val('');
				$('.a2').css("display", "none");
				$('.message-box').css("display", "none");
			}
		});
		
	</script>
</body>
</html>