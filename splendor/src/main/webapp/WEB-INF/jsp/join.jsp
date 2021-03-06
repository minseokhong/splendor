<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="img/joystick.png" type="image/png">
	    <title>R.N.G Games</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="vendors/linericon/style.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="vendors/animate-css/animate.css">
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
        
        <script
  src="https://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>
  
  <script type="text/javascript">
  	$(document).ready(function() {
  		$('#joinForm').submit(function(e) {
  			e.preventDefault();
  			
  	  		var email = $('#email');
  	  		var password = $('#password');
  	  		var password_confirm = $('#password_confirm');
  	  		var nickname = $('#nickname');
  	  		
  	  		if(email.val() == '') {
  	  			alert('이메일을 입력해주세요.')
  	  			email.focus();
  	  		} else if(password.val() == '') {
  	  			alert('비밀번호를 입력해주세요.');
  	  			$('#password').val('');
  	  			$('#password_confirm').val('');
  	  			password.focus();
  	  		} else if(password_confirm.val() == '') {
  	  			alert('비밀번호를 재 입력해주세요');
  	  			$('#password').val('');
  	  			$('#password_confirm').val('');
  	  			password_confirm.focus();
  	  		} else if(nickname.val() == '') {
  	  			alert('닉네임을 입력해주세요');
  	  			$('#password').val('');
  	  			$('#password_confirm').val('');
  	  			nickname.focus();
  	  		} else { //현빈씨 코드에 이 부분만 추가. 이 주석은 확인하면 지워주세요.
  	  			if(!checkAll()) { //join.js 11라인 메서드. 회원정보 입력 체킹 통과 못하면 가입시키지 않고 리턴.. submit 무효화
  	  				alert("입력된 정보를 다시한번 확인 해 주세요.");
  	  				return;
  	  			}
  	  			else 
  	  				join(email.val(), password.val(), password_confirm.val(), nickname.val());
  	  		}
  		});
  	});
  	
  	function join(email, password, password_confirm, nickname) {
		$.ajax({
// 			type : "GET", 비밀번호가 있으니깐 post로 수정 합니다.
			type : "POST", 
			url : "http://localhost:8000/join2",
			dataType : "text",				//	결과를 받을 데이터 타입
			data : {
				userEmail: email,
				userPw: password,
				userPwC: password_confirm,
				nickName: nickname
			},
			timeout : 100, 
			success : function(data) {
				if (data == 'true') {
					alert(nickname + ' 님 회원가입이 완료되었습니다.');
					
					location.href = 'joinView';
				} else if(data == 'nickFalse') {
					alert('이미 등록된 닉네임 입니다.')
	  	  			$('#nickname').val('');
					$('#nickname').focus();
					
				} else if(data == 'pwFalse') {
					alert('비밀번호가 일치하지 않습니다.');
	  	  			$('#password').val('');
	  	  			$('#password_confirm').val('');
	  	  			$('#password').focus();
				}
			}, 
			error : function() {
				$.ajax({
//		 			type : "GET", 비밀번호가 있으니깐 post로 수정 합니다.
					type : "POST", 
					url : "http://121.138.121.114:8000/join2",
					dataType : "text",				//	결과를 받을 데이터 타입
					data : {
						userEmail: email,
						userPw: password,
						userPwC: password_confirm,
						nickName: nickname
					},
					success : function(data) {
						if (data == 'true') {
							alert(nickname + ' 님 회원가입이 완료되었습니다.');
							
							location.href = 'joinView';
						} else if(data == 'nickFalse') {
							alert('이미 등록된 닉네임 입니다.')
			  	  			$('#nickname').val('');
							$('#nickname').focus();
							
						} else if(data == 'pwFalse') {
							alert('비밀번호가 일치하지 않습니다.');
			  	  			$('#password').val('');
			  	  			$('#password_confirm').val('');
			  	  			$('#password').focus();
						}
					}
				});
			}
		});
	}
  </script>
        
    </head>
        
        <!--================Header Menu Area =================-->
    <c:set var="user" value="${user }"></c:set>
   		<c:if test="${user == null}"><jsp:include page="header.jsp"></jsp:include></c:if>
	
		<c:if test="${user != null}"><jsp:include page="loginHeader.jsp"></jsp:include></c:if>
   
        <!--================Header Menu Area =================-->
        
        <!--================Join Area =================-->
        <section class="join">
            <div class="container">
                <div class="join_title_area">
                    <div class="genric-btn e-large logging radius">회원가입</div>
                </div>
                <div class="join_form_area radius">
                    <form id="joinForm" class="form-group">
                        <!-- <div class="form-inline">
                            <img class="img-fluid" src="img/join/id.png">
                            <input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력해주세요." onkeyup="checkId(value)" onchange="checkId(value)">
                            <span class="space"></span>
                            <p class="result_sp" id="check_id_result"></p>
                        </div> -->
                        <div class="form-inline">
                            <img class="img-fluid" src="img/join/email.png">
                            <input type="text" name="id" class="form-control" id="email" name="email" placeholder="이메일 주소를 입력해주세요." onkeyup="checkEmail(value)" onchange="checkEmail(value)">
                            <span class="genric-btn info e-large radius" id="email_confirm">이메일 인증</span>
                            <p class="result_sp" id="check_email_result"></p>
                        </div>
                        <div class="form-inline">
                            <img class="img-fluid" src="img/join/password.png">
                            <input type="password" name="pw" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해주세요." onkeyup="checkPassword(value)" onchange="checkPassword(value)">
                            <span class="space"></span>
                            <p class="result_sp" id="check_password_result"></p>
                        </div>
                        <div class="form-inline">
                            <img class="img-fluid" src="img/join/password_.png">
                            <input type="password" class="form-control" id="password_confirm" name="password_confirm" placeholder="비밀번호를 재 입력해주세요." onkeyup="checkPasswordConfirm(value)" onchange="checkPasswordConfirm(value)">
                            <span class="space"></span>
                            <p class="result_sp" id="check_password_confirm_result"></p>
                        </div>
                        <div class="form-inline">
                            <img class="img-fluid" src="img/join/nickname.png">
                            <input type="text" class="form-control" id="nickname" name="nickname" placeholder="닉네임을 입력해주세요." onkeyup="checkNickname(value)" onchange="checkNickname(value)">
                            <span class="space"></span>
                            <p class="result_sp" id="check_nickname_result"></p>
                        </div>
                        <div class="form-inline">
                            <input type="submit" class="genric-btn success e-large radius" value="가입하기"></div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <div style="width:100%; height:100px;"></div>
        <!--================Join Area =================-->
        
       <!--================Footer Area =================-->
   
	   	<jsp:include page="footer.jsp"></jsp:include>
   
 	<!--================End Footer Area =================-->
        
        
        
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.js"></script>
		<script src="js/jquery.jrumble.1.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/stellar.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
        <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="vendors/isotope/isotope-min.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/mail-script.js"></script>
        <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
        <script src="vendors/counter-up/jquery.counterup.min.js"></script>
        <script src="js/theme.js"></script>
        <!-- join js -->
        <script src="js/join.js"></script>
    </body>
</html>