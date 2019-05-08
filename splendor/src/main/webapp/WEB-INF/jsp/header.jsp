<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>R.N.G Gmaes</title>
<script
  src="https://code.jquery.com/jquery-3.4.0.js"
  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
  crossorigin="anonymous"></script>
  
 	<script type="text/javascript">
 		$(document).ready(function() {
//  			$('.nav-link').click(function() {
//  				alert('a');
//  			});
// 			alert("${pageContext.request.requestURL}")
// 			alert("${pageContext.request.contextPath}")

<%-- 			alert('<%=pageContext.getServletContext()%>') --%>
<%-- 	 			<% --%>
// 	 				String location = null;
// 	 				if(request.getCookies() != null) {
// 	 					for(Cookie tmp : request.getCookies()) {
// 	 						if(tmp.getName().equals("location")) {
// 	 							location = tmp.getValue();
// 	 						}
// 	 					}
// 	 				}
<%-- 	 		 	%> --%>
	 		 	
<%-- 				var location = '<%=location%>'; --%>
<%-- 				alert('<%=location%>') --%>
// 				if(location != null) {
// 					$('.' + location).addClass('active');
// 				}
 		});
 		
 	
 	</script> 
  
  
</head>
<body>

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
						<ul class="nav navbar-nav menu_nav justify-content-center"style ="width:70%">
							<li class="nav-item"><a class="nav-link" href="index">홈페이지</a></li>
							<li class="nav-item active"><a class="nav-link" href="about-us">게임소개</a></li>
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
						<ul class="nav navbar-nav navbar-right" > 
							<a href="login" class="primary_btn">로그인</a>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>

</body>
</html>