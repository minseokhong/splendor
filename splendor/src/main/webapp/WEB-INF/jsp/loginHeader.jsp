<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.0.js"
  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
  crossorigin="anonymous"></script>
  
  <script type="text/javascript">
  	$(document).ready(function() {
  		
			$('.${activeLocation }').addClass('active');
			
  		$.ajax({
  			url : 'http://localhost:8000/getSenderList', 
  			type : 'POST', 
  			data : {
  				receiver : '${user.user_name}'
  			}, 
  			dataType : "json", 
  			success : function(data) {
					console.log(data);
  				data.forEach(msgMeta => {
						var isNew = '';
						if(msgMeta.mess_is_show == 0) {
							isNew = '"new"';
						}
						$('.����_����').append(
							$('<div></div>').addClass('msg1 messStyle1').append(
								$('<div></div>').addClass('messStyle2').append(
									$('<img src="/img/no_profile.png"></img>').addClass('messStyle3')
								), 
								$('<div></div>').addClass('msg_click messStyle4').attr('onclick', 'msg_click('+msgMeta.mess_num+')').append(
									$('<div>'+isNew+'<div>').addClass('mess'+msgMeta.mess_num+' messIsNew'), 
									$("<div>'"+msgMeta.mess_sender+"'��<br>���� ������ �����߽��ϴ�.</div>").addClass('messStyle5'), 
									$('<div>'+msgMeta.mess_send_date+'</div>').addClass('messStyle6')
								), 
								$('<div></div>').addClass('messStyle7').append(
									$('<button type="button" class="close" id="close" aria-label="Close"></button>').addClass('messStyle8').append(
										$('<span aria-hidden="true">&times;</span>')
									)
								)
							)
						)
					});
  			}, 
  			error : function() {
  				alert("���� �����͸� �������� �� �����Ͽ����ϴ�.");
  			}
  		});
  		
  	});
	</script>
	<style type="text/css">
		.messStyle1 {
			padding: 5%;
			height: 30%;
			border: 1px solid;
		}
		.messStyle2 {
			/* float: left; */
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
			/* float: left; */
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
	</style>
	
</head>
<body>
<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
				
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index" style="text-align: center; color: #777777;"><img class="logo" src="img/joystick.png" alt="">R.N.G<aside>
                        
                    </aside></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav justify-content-center">
							<li class="nav-item index"><a class="nav-link" href="index">Ȩ������</a></li>
							<li class="nav-item about-us"><a class="nav-link" href="about-us">���ӼҰ�</a></li>
							<li class="nav-item screenshot"><a class="nav-link" href="screenshot">��ũ����</a></li>
							<li class="nav-item community submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Ŀ�´�Ƽ</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="guild">���</a></li>
									<li class="nav-item"><a class="nav-link" href="�����Խ���">�����Խ���</a></li>
								</ul>
							</li>
							<li class="nav-item service submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">������</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="BBS">FAQ</a></li>
									<li class="nav-item"><a class="nav-link" href="������">1:1����</a></li>
								</ul>
							</li>
						</ul>
						
						<a class="notification"><img src="/img/notification.png" title="�˸�"></a>


						<div class="message-box" style="border: 1px solid black; z-index: 1;">
							<div style="background-color: rgb(205, 216, 54); height: 40%; text-align: center;">
								<button type="button" class="close" id="close_����Ȯ��â" aria-label="Close"
								style="position: absolute; right: 0; top: 2%; right: 5%;">
										<span aria-hidden="true">&times;</span>
								</button>
									
								<img src="/img/jihyo.jpg" 
								style="position: absolute; width: 30%; left: 35%; top: 9%;">
							</div>
							<div style="position: relative; background-color: white; height: 60%; text-align: center;">
								<div style="margin-left: 5%; height: 20%; font-size: 20px;">
									from. <div
									id="mess_sender_area" style="display: inline-block; width: 60%; height: 80%; font-size: 15px; border: none; margin-top: 5%;"> ������</div> 
									
								</div>

								<div style="position: absolute; margin-left: 15%; width: 80%; height: 60%;">
									<div id="mess_content_area" cols="30" rows="10"
									style="font-size: 10px; text-align: left; height: 60%; border: none; margin-top: 8%; margin-right: 10%; overflow-y: scroll;">
										<!-- �ȳ� ����� ^^ �� ������????
										Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem similique tenetur molestiae, quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? -->
									</div>
								</div>
								<div style="position: absolute; bottom: 10%; text-align: center; width: 100%;">
									<input class="�����ϱ�" type="button" value="�����ϱ�" sender=""
									style="background-color: white; color: rgb(205, 216, 54); border: none; cursor: pointer;">

								</div>
							</div>
						</div>


						<div class="a2" style="border: 1px solid black;">
							<div 
							style="display: inline-block; height: 8%; text-align: center; width: 100%; background-color: white;">
								<div class="����" style="display: inline-block; background-color: lightgreen; width: 49%; height: 100%; ">����</div>
								<div class="�˸�" style="display: inline-block; background-color: skyBlue; width: 49%; height: 100%;">�˸�</div>
							</div>

							<div class="����_����" style="background-color: lightgreen; height: 92%; overflow-y: scroll;">

								<div param="���߳�" class="msg1" style="padding: 5%; height: 30%; border: 1px solid;">
									<div style="position: relative; display: inline-block; float: left; width: 30%; margin-right: 5%; height: 100%;">
										<img src="/img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;">
									</div>
									<div class="msg_click" param="���߳�" style="display: inline-block; width: 60%; float: left; font-size: 12px;">
										<a style="color: black; width: 100%; cursor: pointer;">
											��ȿ' ��<br>���� ������ �����߽��ϴ�.
										</a>
										<div style="margin-top: 10px">2018.9.9___17:16</div>
									</div>
									<div style="position: relative; display: inline-block; float: right; width: 5%; height: 100%; font-size: 12px;">
											<button type="button" class="close" id="close" aria-label="Close"
											style="position: absolute; right: 0; top: -5px">
													<span aria-hidden="true">&times;</span>
											</button>
									</div>
								</div>

								<div class="msg1">
									<div>
										<img src="/img/jihyo.jpg">
									</div>
									<div class="msg_click" mess_no="gdgd">
										<a>
											��ȿ' ��<br>���� ������ �����߽��ϴ�.
										</a>
										<div>2018.9.9___17:16</div>
									</div>
									<div>
											<button type="button" id="close" aria-label="Close">
													<span aria-hidden="true">&times;</span>
											</button>
									</div>
								</div>

								<div class="msg1" style="padding: 5%; height: 30%; border: 1px solid;">
									<div style="position: relative; display: inline-block; float: left; width: 30%; margin-right: 5%; height: 100%;">
										<img src="/img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;">
									</div>
									<div style="display: inline-block; width: 50%; float: left; font-size: 12px;">
										<a class="msg_click" style="color: black; width: 100%; cursor: pointer;">
											��ȿ' �Կ��� ������ �����߽��ϴ�.
										</a>
										<div>2018.9.9___17:16</div>
									</div>
									<div style="position: relative; display: inline-block; float: right; width: 5%; height: 100%; font-size: 12px;">
											<button type="button" class="close" id="close" aria-label="Close"
											style="position: absolute; right: 0; top: -5px">
													<span aria-hidden="true">&times;</span>
											</button>
									</div>
								</div>

								<div style="padding: 5%; height: 30%; border: 1px solid;">
									<div style="position: relative; display: inline-block; width: 30%; margin-right: 5%; height: 100%;">
										<img src="/img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;">
									</div>
									<div style="display: inline-block; width: 50%; font-size: 12px; cursor: pointer;">
										<a href="" style="color: black; width: 100%;">
											'��ȿ' �Կ��� ������ �����߽��ϴ�.
										</a>
										<br>2018.9.9___17:16
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%; font-size: 12px;">
											<button type="button" class="close" id="close" aria-label="Close"
											style="position: absolute; right: 0; top: 0px">
													<span aria-hidden="true">&times;</span>
											</button>
									</div>
								</div>

								<div style="padding: 5%; height: 30%; border: 1px solid;">
									<div style="position: relative; display: inline-block; width: 30%; margin-right: 5%; height: 100%;">
										<img src="img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;">
									</div>
									<div style="display: inline-block; width: 50%; font-size: 12px;">
										<a href="" style="color: black; width: 100%; cursor: pointer;">
											'��ȿ' �Կ��� ������ �����߽��ϴ�.
										</a>
										<br>2018.9.9___17:16
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%; font-size: 12px;">
											<button type="button" class="close" aria-label="Close"
											style="position: absolute; right: 0; top: 0px">
													<span aria-hidden="true">&times;</span>
											</button>
									</div>
								</div>

								<div style="padding: 5%; height: 30%; border: 1px solid;">
									<div style="position: relative; display: inline-block; width: 30%; margin-right: 5%; height: 100%;">
										<img src="img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;">
									</div>
									<div style="display: inline-block; width: 50%; font-size: 12px;">
										<a href="" style="color: black; width: 100%; cursor: pointer;">
											'��ȿ' �Կ��� ������ �����߽��ϴ�.
										</a>
										<br>2018.9.9___17:16
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%; font-size: 12px;">
										<button type="button" class="close" aria-label="Close"
										style="position: absolute; right: 0; top: 0px">
												<span aria-hidden="true">&times;</span>
										</button>
									</div>
								</div>

								<div style="padding: 5%; height: 30%; border: 1px solid;">
									<div style="position: relative; display: inline-block; width: 30%; margin-right: 5%; height: 100%;">
										<img src="img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;">
									</div>
									<div style="display: inline-block; width: 50%; font-size: 12px;">
										<a href="" style="color: black; width: 100%; cursor: pointer;">
											'��ȿ' �Կ��� ������ �����߽��ϴ�.
										</a>
										<br>2018.9.9___17:16
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%; font-size: 12px;">
										<button type="button" class="close" aria-label="Close"
										style="position: absolute; right: 0; top: 0px">
												<span aria-hidden="true">&times;</span>
										</button>
									</div>
								</div>
							</div>

							
							<div class="�˸�_����" style="display: none; background-color: skyBlue; height: 92%; text-align: center; overflow-y: scroll;">

								<div style="padding: 5%; height: 19%; border: none; font-size: 13px;">
									<div style="display: inline-block; width: 90%">
										<a href="" style="color: black; cursor: pointer;">
											'������' ���� ����� �޾ҽ��ϴ�.<br>
											2019.2.4___19:01
										</a>
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%;">
										<button type="button" class="close" aria-label="Close"
											style="position: absolute; right: 0; top: 0px">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
								</div>

								<div style="padding: 5%; height: 19%; border: none; font-size: 13px;">
									<div style="display: inline-block; width: 90%">
										<a href="" style="color: black; cursor: pointer;">
											'������' ���� ����� �޾ҽ��ϴ�.<br>
											2019.2.4___19:01
										</a>
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%;">
										<button type="button" class="close" aria-label="Close"
											style="position: absolute; right: 0; top: 0px">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
								</div>

								<div style="padding: 5%; height: 19%; border: none; font-size: 13px;">
									<div style="display: inline-block; width: 90%">
										<a href="" style="color: black; cursor: pointer;">
											'������' ���� ����� �޾ҽ��ϴ�.<br>
											2019.2.4___19:01
										</a>
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%;">
										<button type="button" class="close" aria-label="Close"
											style="position: absolute; right: 0; top: 0px">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
								</div>

								<div style="padding: 5%; height: 19%; border: none; font-size: 13px;">
									<div style="display: inline-block; width: 90%">
										<a href="" style="color: black; cursor: pointer;">
											'������' ���� ����� �޾ҽ��ϴ�.<br>
											2019.2.4___19:01
										</a>
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%;">
										<button type="button" class="close" aria-label="Close"
											style="position: absolute; right: 0; top: 0px">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
								</div>

								<div style="padding: 5%; height: 19%; border: none; font-size: 13px;">
									<div style="display: inline-block; width: 90%">
										<a href="" style="color: black; cursor: pointer;">
											'������' ���� ����� �޾ҽ��ϴ�.<br>
											2019.2.4___19:01
										</a>
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%;">
										<button type="button" class="close" aria-label="Close"
											style="position: absolute; right: 0; top: 0px">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
								</div>

								<div style="padding: 5%; height: 19%; border: none; font-size: 13px;">
									<div style="display: inline-block; width: 90%">
										<a href="" style="color: black; cursor: pointer;">
											'������' ���� ����� �޾ҽ��ϴ�.<br>
											2019.2.4___19:01
										</a>
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%;">
										<button type="button" class="close" aria-label="Close"
											style="position: absolute; right: 0; top: 0px">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
								</div>

								<div style="padding: 5%; height: 19%; border: none; font-size: 13px;">
									<div style="display: inline-block; width: 90%">
										<a href="" style="color: black; cursor: pointer;">
											'������' ���� ����� �޾ҽ��ϴ�.<br>
											2019.2.4___19:01
										</a>
									</div>
									<div style="position: relative; display: inline-block; width: 5%; height: 100%;">
										<button type="button" class="close" aria-label="Close"
											style="position: absolute; right: 0; top: 0px">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
								</div>
							</div>
						</div>




						<a class="mail"><img src="img/mail.png" title="����"></a>

						<div class="a1" style="border: 1px solid black;">
							<div style="background-color: rgb(168, 9, 49); height: 40%; text-align: center;">
								<button type="button" class="close" id="close_����������" aria-label="Close"
									style="position: absolute; right: 0; top: 2%; right: 5%;">
											<span aria-hidden="true">&times;</span>
									</button>
<!-- 								<img src="img/jihyo.jpg"  -->
								<img src="${user.user_image }"
								style="position: absolute; width: 30%; left: 35%; top: 9%;">
							</div>
							<div style="background-color: white; height: 60%; text-align: center;">
								<div style="margin-left: 5%; height: 20%; font-size: 20px;">
									to. <input id="msg_receiver" type="text" placeholder="�޴»���� �г����� �Է��ϼ���." 
									onfocus="this.placeholder = ''" onblur="this.placeholder = '�޴»���� �г����� �Է��ϼ���.'"
									style="width: 80%; height: 80%; font-size: 15px; border: none; margin-top: 5%;">
								</div>

								<div style="margin-left: 10%; height: 60%;">
									<textarea id="msg_content" cols="30" rows="10" placeholder="������ �Է��ϼ���." 
									onfocus="this.placeholder = ''" onblur="this.placeholder = '������ �Է��ϼ���.'"
									style="font-size: 10px; width: 80%; height: 60%; border: none; margin-top: 8%; margin-right: 10%;"></textarea>
									</textarea>
									<div id="msg_send_result" style="margin-top: 5px; margin-right: 40px; text-align: right; color: green; font-size: 6px;"></div>
								</div>
								<div>
									<input type="button" value="������" 
									style="text-align: right; background-color: white; color: rgb(168, 9, 49); border: none; cursor: pointer;" onclick=sendMessage();>

								</div>
							</div>
						</div>

                        <a class="avatar" href="profile"><img src="img/avatar.png" title="������ ����"></a>
                        <a class="cancel" href="logoutForm"><img src="img/cancel.png" title="�α׾ƿ�"></a>
					</div>
				</div>��
			</nav>
		</div>
	</header>

	<!--================Header Menu Area =================-->
	<script src="/js/jquery-3.2.1.min.js"></script>
	<script>

		$('.mail').on('click', function() {
			$('.a1').slideToggle('fast');
			$('.a2').hide('fast');
		});

		$('.notification').on('click', function() {
			$('.a2').slideToggle('fast');
			$('.a1').hide('fast');
		});


		$('.����').hover(function() {
			$('.����').css('background-color', 'white');
			$('.����_����').css('display', 'block');
			$('.�˸�_����').css('display', 'none');
			$('.����_����').css('background-color', 'lightgreen');
		}, function() {
			$('.����').css('background-color', 'lightgreen');
		});

		$('.�˸�').hover(function() {
			$('.�˸�').css('background-color', 'white');
			$('.����_����').css('display', 'none');
			$('.�˸�_����').css('display', 'block');
			$('.�˸�_����').css('background-color', 'white');
		}, function() {
			$('.�˸�').css('background-color', 'white');
		});

		$('#close').click(function() {
			// $('.msg1').hide();
			$('.msg1').remove();
		});

		$('#close_����Ȯ��â').click(function() {
			// $('.msg1').hide();
			$('.message-box').hide();
		});

		$('#close_����������').click(function() {
			// $('.msg1').hide();
			$('#msg_receiver').val('');
			$('#msg_content').val('');
			$('.a1').hide();
		});

		$('.msg_click').click(function() {
			$('.message-box').show('fast');
		});

		$('.�����ϱ�').on('click', function() {
			$('#msg_receiver').val($(this).attr('sender'));
			$('.a1').slideToggle('fast');
		});

		$(".cancel").click(function() {
			alert("�α׾ƿ� �Ǿ����ϴ�. �ȳ���������.~~")
		});
		
		function sendMessage() {
	    	$.ajax({
	    		type : "POST", 
	    		url : "http://localhost:8000/sendMessage", 
	    		data : {
	    			mess_sender : '${user.user_name }', 
	    			mess_receiver : $('#msg_receiver').val(), 
	    			mess_content : $('#msg_content').val()
	    		}, 
	    		success : function() {
	    			$('#msg_receiver').val('');
	    			$('#msg_content').val('');
					$('#msg_send_result').text('�޽����� �����Ͽ����ϴ�.');
					setTimeout(function() {
						$('#msg_send_result').text('');
						$('.a1').slideToggle('fast');
					}, 1000);
	    		}
	    		, error : function() {
	    			alert("�ڳ�.. �޽����� �����µ� �����Ͽ���.. �̾��ϳ�..");
	    		}
	    	})
		};

		function msg_click(mess_num) {
			$.ajax({
				type : "POST", 
				url : "http://localhost:8000/readMessage", 
				data : {
					mess_num : mess_num
				}, 
				dataType : "json", 
				success : function(msg) {
					$('#mess_sender_area').text(msg.mess_sender);
					$('#mess_content_area').text(msg.mess_content);
					$('.�����ϱ�').attr("sender", msg.mess_sender);
					$('.message-box').show('fast');
					$('.mess'+mess_num).text('')
				}, 
				error : function() {
					alert('�޽��� �ε� ����!!!!!�޶�')
				}
			});
		}
		
	</script>
</body>
</html>