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
 			
 			$('.${activeLocation }').addClass('active');// ��Ʈ�ѷ����� header�� ���� ���� �о ���� ���� Ŭ�������� ���� li�±� Ŭ������ ã���ϴ�.
 														// ��Ʈ�ѷ����� header�� ���� ���� ('index'�� 'about-us', 'screenshot ����� ���ڿ��� ��� �ֽ��ϴ�.')
 														// ã�� �±׿� active��� Ŭ������ �߰��մϴ�. ((ex) 64�� ������ li �±׿� active Ŭ������ �߰��մϴ�.)
 			
<%-- 	 			<% //by. ����... ���� �����Ϸ��� ���� �����Դϴ�. �ּ� ������ ���� �����ּ���. �Ф�~~~ --%>
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
<!-- 						li �±��� Ŭ���� �� �̸� ��Ʈ�ѷ����� �޾ƿ� ������ ���ڿ� ���� �̸��� Ŭ������ �߰��� ���ҽ��ϴ�. index ���� Ŭ������ Ŭ���� �����ڷ� ������ �� �ֽ��ϴ�. -->
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
						<ul class="nav navbar-nav navbar-right" > 
							<a href="login" class="primary_btn">�α���</a>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>

</body>
</html>