<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="icon" href="/img/joystick.png" type="image/png">
	<title>R.N.G Games</title>
   <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="/css1/css/bootstrap.css">
     


   <link rel="stylesheet" href="/css/bootstrap.css">
   <link rel="stylesheet" href="/vendors/linericon/style.css">
   <link rel="stylesheet" href="/css/font-awesome.min.css">
   <link rel="stylesheet" href="/vendors/owl-carousel/owl.carousel.min.css">
   <link rel="stylesheet" href="/css/magnific-popup.css">
   <link rel="stylesheet" href="/vendors/nice-select/css/nice-select.css">
   <link rel="stylesheet" href="/vendors/animate-css/animate.css">
   <link rel="stylesheet" href="/vendors/flaticon/flaticon.css">
   <!-- main css -->
   <link rel="stylesheet" href="/css/style.css">
<!--    <script src="/js/jquery-3.2.1.min.js"></script> -->
   <script
  src="https://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>
   <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script>
		$(document).ready(function() {
			$('#loginForm').submit(function(e) {
				e.preventDefault();//������ �̵� ������
				
				var id = $('#userId');
				var pw = $('#userPw');
				
				if(id.val() == '') {
					alert('���̵� �Է����ּ���!');
					id.focus();
					
				} else if(pw.val() == '') {
					alert('��й�ȣ�� �Է����ּ���!');
					pw.focus();
					
				} else {
					login(id.val(), pw.val());
				}
			})
		});
		
// 		1. ���̵�� ����� GET / POST ������� �ѱ��
// 		2. ���� �ѱ����
// 		3. �Ѱܼ� � ������� �޾ƿðǰ�
// 		4. �α��� ���� / ���� ���ο����� � �׼��� �ٰǰ�
		
		function login(id, pw) {
			$.ajax({
				type : "GET",
				url : "http://localhost:8000/test",
				dataType : "text",				//	����� ���� ������ Ÿ��
				data : {
					userId: id,
					userPw: pw //userId�� controller���� �״�λ��
				},
				success : function(data) {
					if (data == 'true') {
						alert(id + ' �� ȯ���մϴ� ^.^')
						
						location.href = 'testView';
					} else {
						$('#userId').val('');
						$('#userPw').val('');
						alert('�̸��� �� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.');
					}
				}
			});
		}
	</script>


   
</head>
<style>
    #search a:hover { 
        font-weight:bold;
        color:#FF0000;
        cursor: pointer;
         
    }
    .form-control{
        width: 70%;
        margin:0px auto;
    }
  
</style>
    


<body>
	<script src="/js/bootstrap.min.js"></script>
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
                     <div class="collapse navbar-collapse offset" id="navbarSupportedContent" >
                        <ul class="nav navbar-nav menu_nav justify-content-center"style ="width:70%">
                           <li class="nav-item active"><a class="nav-link" href="index">Ȩ������</a></li>
                           <li class="nav-item"><a class="nav-link" href="about-us">���ӼҰ�</a></li>
                           <li class="nav-item"><a class="nav-link" href="screenshot">��ũ����</a></li>
                           <li class="nav-item submenu dropdown">
                              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">Ŀ�´�Ƽ</a>
                              <ul class="dropdown-menu">
                                 <li class="nav-item"><a class="nav-link" href="guild">���</a></li>
                                 <li class="nav-item"><a class="nav-link" href="�����Խ���">�����Խ���</a></li>
                                 <li class="nav-item"><a class="nav-link" href="elements">��������</a>
                              </ul>
                           </li>
                           <li class="nav-item submenu dropdown">
                              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                              aria-expanded="false">������</a>
                              <ul class="dropdown-menu">
                                 <li class="nav-item"><a class="nav-link" href="BBS">FAQ</a></li>
                                 <li class="nav-item"><a class="nav-link" href="������">1:1����</a></li>
                                 <li class="nav-item"><a class="nav-link" href=";;">�Ű�</a>
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
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   
   		 <!--================Header Menu Area =================-->
    
   			<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>
   
        <!--================Header Menu Area =================-->

   <section class="login"  style="margin-top: 200px; margin-bottom: 100px;">
        <div class="container d-flex justify-content-center">
            <div class="col-lg-7 col-12">
               <div class="jumbotron">
                  <form id="loginForm"> 
                  <!--action�� id�� �ٲ۴�  -->
                     <h3 style="text-align: center;">���÷��� �α���</h3>
                     <div style="width:100%; height:30px;">
                        
                     </div>
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="�̸���" id="userId" name="userId" maxlength="20">
                     </div>
                     <div class="form-group">
                        <input type="password" class="form-control" placeholder="��й�ȣ" id="userPw" name="userPw" maxlength="20" autocomplete="off">
                     </div>
<!--  -->
                     <div style="width:100%; height:30px;"></div>
<!--  -->
                     <div  style="width:100%; height:100px; text-align: center" >
                        <input type="submit" class="btn btn-primary" value="�α���" style="border: 1px solid; width: 200px">
                        <input type="button" class="btn btn-primary" value="ȸ������" style="border: 1px solid;  width: 200px" onclick="location.href='join'">

                     </div>

                     <div id="search" class="col-lg-7 col-12">
                        <a style="position:absolute; bottom:0px;" href="write.js" >���̵�ã�� / ��й�ȣã�� </a>
                     </div>
					 <!-- ���̹����̵�ηα��� ��ư ���� ���� -->
					 <div id="naver_id_login" style="margin-bottom: auto; position: relative; width: 5%" class="pull-right"></div>
					 <!-- //���̹����̵�ηα��� ��ư ���� ���� -->
					 <script type="text/javascript">
					  var naver_id_login = new naver_id_login("kJZ3dXggDV9mMHj928wu", "http://localhost:8000/naver-callback", false);
					  var state = naver_id_login.getUniqState();
					  naver_id_login.setButton("green", 1, 28);
					  naver_id_login.setDomain("http://localhost:8000");
					  naver_id_login.setState(state);
// 					  naver_id_login.setPopup();
					  naver_id_login.init_naver_id_login();
					 </script>
                     <a href="https://www.kakaocorp.com/service/KakaoTalk"><img src="img/īī����api.png" style="margin-bottom: auto; position: relative; width: 5%" class="pull-right"></a>
                     <a href="http://www.google.com"><img src="img/����api.png" style="margin-bottom: auto; position: relative; width: 5%" class="pull-right"></a>
                  </form>
               </div>
            </div>
               
        </div>
   </section>
   
   <!--================Footer Area =================-->
   
	   	<jsp:include page="footer.jsp"></jsp:include>
   
 	<!--================End Footer Area =================-->
        
        
        
        
        <!-- Optional JavaScript -->
        <!-- naver-api js -->
</body>
</html>
