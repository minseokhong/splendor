<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
  src="https://code.jquery.com/jquery-3.4.0.js"
  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
  crossorigin="anonymous"></script>
  
 	<script type="text/javascript">
 		$(document).ready(function() {
 			
//  			$('.nav-link').click(function() {
//  				alert('a');
//  			});
 			if('.${activeLocation }' != ".") {
 	 			$('.${activeLocation }').addClass('active');
 			}// 컨트롤러에서 header로 보낸 값을 읽어서 읽은 값과 클래스명이 같은 li태그 클래스를 찾습니다.
 														// 컨트롤러에서 header로 보낸 값은 ('index'나 'about-us', 'screenshot 등등의 문자열을 담고 있습니다.')
 														// 찾은 태그에 active라는 클래스를 추가합니다. ((ex) 64번 라인의 li 태그에 active 클래스를 추가합니다.)
 			
<%-- 	 			<% //by. 도형... 제가 공부하려고 놔둔 구문입니다. 주석 지우지 말고 놔둬주세요. ㅠㅠ~~~ --%>
// 	 				String location = null;
// 	 				if(request.getCookies() != null) {
// 	 					for(Cookie tmp : request.getCookies()) {
// 	 						if(tmp.getName().equals("location")) {
// 	 							location = tmp.getValue();
// 	 						}
// 	 					}
// 	 				}
<%--   	 		 	%> --%>
	 		 	
<%-- 				var location = '<%=location%>'; --%>
<%-- 				alert('<%=location%>') --%>
// 				if(location != null) {
// 					$('.' + location).addClass('active');
// 				}
			
 		});
 	
 	</script>

<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index" style="text-align: center; color: #777777;"><img class="logo" src="img/joystick.png" alt="">R.N.G<aside></aside></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent" >
						<ul class="nav navbar-nav menu_nav justify-content-center" style ="width:70%">
<!-- 						li 태그의 클래스 명에 미리 컨트롤러에서 받아올 데이터 문자와 같은 이름의 클래스를 추가해 놓았습니다. index 등의 클래스는 클래스 선택자로 선택할 수 있습니다. -->
							<li class="nav-item index"><a class="nav-link" href="index">홈페이지</a></li>
							<li class="nav-item about-us"><a class="nav-link" href="about-us">게임소개</a></li>
							<li class="nav-item screenshot"><a class="nav-link" href="screenshot">스크린샷</a></li>
							<li class="nav-item community submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">커뮤니티</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="guild">길드</a></li>
									<li class="nav-item"><a class="nav-link" href="자유게시판">자유게시판</a></li>
								</ul>
							</li>
							<li class="nav-item service submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">고객센터</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="BBS">FAQ</a></li>
									<li class="nav-item"><a class="nav-link" href="나문의">1:1문의</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav navbar-nav navbar-right" > 
							<a href="login" class="primary_btn">로그인</a>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>