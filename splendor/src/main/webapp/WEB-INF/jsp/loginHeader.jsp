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
  
  </script>

</head>
<body>
<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
				
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index"><img class="logo" src="img/joystick.png" alt="">R.N.G<aside>
                        
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
							<li class="nav-item"><a class="nav-link" href="index">홈페이지</a></li>
							<li class="nav-item"><a class="nav-link" href="about-us">게임소개</a></li>
							<li class="nav-item"><a class="nav-link" href="screenshot">스크린샷</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">커뮤니티</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="guild">길드</a></li>
									<li class="nav-item"><a class="nav-link" href="자유게시판">자유게시판</a></li>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">고객센터</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="BBS">FAQ</a></li>
									<li class="nav-item"><a class="nav-link" href="나문의">1:1문의</a></li>
								</ul>
							</li>
						</ul>
						
						<a class="notification"><img src="/img/notification.png"></a>


						<div class="message-box" style="border: 1px solid black;">
							<div style="background-color: rgb(205, 216, 54); height: 40%; text-align: center;">
								<button type="button" class="close" id="close_쪽지확인창" aria-label="Close"
								style="position: absolute; right: 0; top: 2%; right: 5%;">
										<span aria-hidden="true">&times;</span>
								</button>
									
								<img src="/img/jihyo.jpg" 
								style="position: absolute; width: 30%; left: 35%; top: 9%;">
							</div>
							<div style="position: relative; background-color: white; height: 60%; text-align: center;">
								<div style="margin-left: 5%; height: 20%; font-size: 20px;">
									from. <div
									style="display: inline-block; width: 60%; height: 80%; font-size: 15px; border: none; margin-top: 5%;"> 윤현빈</div> 
									
								</div>

								<div style="position: absolute; margin-left: 10%; height: 60%;">
									<div cols="30" rows="10"
									style="font-size: 10px; text-align: left; width: 80%; height: 60%; border: none; margin-top: 8%; margin-right: 10%; overflow-y: scroll;">
										안녕 현빈아 ^^ 잘 지내지????
										Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem similique tenetur molestiae, quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum? quasi consectetur quidem odit incidunt reiciendis natus accusamus, fuga consequuntur in. Eos vel beatae, incidunt necessitatibus in ipsum?
									</div>
								</div>
								<div style="position: absolute; bottom: 10%; text-align: center; width: 100%;">
									<input class="답장하기" type="button" value="답장하기"
									style="background-color: white; color: rgb(205, 216, 54); border: none; cursor: pointer;">

								</div>
							</div>
						</div>


						<div class="a2" style="border: 1px solid black;">
							<div 
							style="display: inline-block; height: 8%; text-align: center; width: 100%; background-color: white;">
								<div class="쪽지" style="display: inline-block; background-color: lightgreen; width: 49%; height: 100%; ">쪽지</div>
								<div class="알림" style="display: inline-block; background-color: skyBlue; width: 49%; height: 100%;">알림</div>
							</div>

							<div class="쪽지_내용" style="background-color: lightgreen; height: 92%; overflow-y: scroll; ">

								<div class="msg1" style="padding: 5%; height: 30%; border: 1px solid;">
									<div style="position: relative; display: inline-block; width: 30%; margin-right: 5%; height: 100%;">
										<img src="/img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;">
									</div>
									<div style="display: inline-block; width: 50%; font-size: 12px;">
										<a class="msg_click" style="color: black; width: 100%; cursor: pointer;">
											지효' 님에게 쪽지가 도착했습니다.
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
										<img src="/img/jihyo.jpg" width="100%" style="position: absolute; top: auto; margin-right: 5%;">
									</div>
									<div style="display: inline-block; width: 50%; font-size: 12px; cursor: pointer;">
										<a href="" style="color: black; width: 100%;">
											'지효' 님에게 쪽지가 도착했습니다.
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
											'지효' 님에게 쪽지가 도착했습니다.
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
											'지효' 님에게 쪽지가 도착했습니다.
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
											'지효' 님에게 쪽지가 도착했습니다.
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

							
							<div class="알림_내용" style="display: none; background-color: skyBlue; height: 92%; text-align: center; overflow-y: scroll;">

								<div style="padding: 5%; height: 19%; border: none; font-size: 13px;">
									<div style="display: inline-block; width: 90%">
										<a href="" style="color: black; cursor: pointer;">
											'윤현빈' 님이 댓글을 달았습니다.<br>
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
											'윤현빈' 님이 댓글을 달았습니다.<br>
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
											'윤현빈' 님이 댓글을 달았습니다.<br>
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
											'윤현빈' 님이 댓글을 달았습니다.<br>
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
											'윤현빈' 님이 댓글을 달았습니다.<br>
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
											'윤현빈' 님이 댓글을 달았습니다.<br>
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
											'윤현빈' 님이 댓글을 달았습니다.<br>
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




						<a class="mail"><img src="img/mail.png"></a>

						<div class="a1" style="border: 1px solid black;">
							<div style="background-color: rgb(168, 9, 49); height: 40%; text-align: center;">
								<button type="button" class="close" id="close_쪽지보내기" aria-label="Close"
									style="position: absolute; right: 0; top: 2%; right: 5%;">
											<span aria-hidden="true">&times;</span>
									</button>
<!-- 								<img src="img/jihyo.jpg"  -->
								<img src="${user.user_image }"
								style="position: absolute; width: 30%; left: 35%; top: 9%;">
							</div>
							<div style="background-color: white; height: 60%; text-align: center;">
								<div style="margin-left: 5%; height: 20%; font-size: 20px;">
									to. <input type="text" placeholder="받는사람의 닉네임을 입력하세요." 
									onfocus="this.placeholder = ''" onblur="this.placeholder = '받는사람의 닉네임을 입력하세요.'"
									style="width: 80%; height: 80%; font-size: 15px; border: none; margin-top: 5%;">
								</div>

								<div style="margin-left: 10%; height: 60%;">
									<textarea cols="30" rows="10" placeholder="내용을 입력하세요." 
									onfocus="this.placeholder = ''" onblur="this.placeholder = '내용을 입력하세요.'"
									style="font-size: 10px; width: 80%; height: 60%; border: none; margin-top: 8%; margin-right: 10%;"></textarea>
									</textarea>
								</div>
								<div>
									<input type="button" value="보내기" 
									style="text-align: right; background-color: white; color: rgb(168, 9, 49); border: none; cursor: pointer;">

								</div>
							</div>
						</div>

                        <a class="avatar" href="profile"><img src="img/avatar.png"></a>
                        <a class="cancel" href="logoutForm"><img src="img/cancel.png"></a>
					</div>
				</div>
			</nav>
		</div>
	</header>

	<!--================Header Menu Area =================-->

</body>
</html>