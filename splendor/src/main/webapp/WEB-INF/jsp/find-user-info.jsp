<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="img/favicon.png" type="image/png">
        <title>아이디/비밀번호 찾기</title>
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
    </head>
        
       <!--================Header Menu Area =================-->
    <c:set var="user" value="${user }"></c:set>
   		<c:if test="${user == null}"><jsp:include page="header.jsp"></jsp:include></c:if>
	
		<c:if test="${user != null}"><jsp:include page="loginHeader.jsp"></jsp:include></c:if>
   
        <!--================Header Menu Area =================-->
        
        <!--================Find-User-Info Area =================-->
        <section class="container" id="find-user_container">
            <div class="find-user-info_area">
                <div class="find_title">
                    <div class="find_select_area" id="find_email" onclick="showFindEmailArea();">아이디 찾기</div>
                    <div class="find_select_area" id="find_password" onclick="showFindPasswordArea();">비밀번호 찾기</div>
                </div>
                <form class="find_email_area" action="" method="GET">
                    <div class="find_nickname">
                        <div class="find_subtitle">닉네임</div>
                        <input name="nickname" class="form-control find_contents" placeholder="사용한 닉네임을 입력하세요.">
                    </div>
                    <div class="find_period">
                        <div class="find_subtitle">(예상되는)<br>가입 일시</div>
                        <div class="find_contents">
                            <input name="start_date" type="date" class="form-control" id="find_email_start_date">　에서
                            <input name="end_date" type="date" class="form-control" id="find_email_end_date">　사이.
                        </div>
                    </div>
                    <div class="find_button_area">
                        <input type="submit" class="btn btn-primary" value="입력한 정보로 아이디 찾기">
                    </div>
                </form>
                <form class="find_password_area" action="" method="GET" style="display: none;">
                    <div class="find_email">
                        <div class="find_subtitle">이메일</div>
                        <input name="email" class="form-control find_contents" placeholder="이메일을 입력하세요.">
                        <div class="find_subtitle"></div>
                        <div class="btn btn-dark" id="send_email_button">인증번호 발송하기</div>
                    </div>
                    <div class="find_varify">
                        <div class="find_subtitle">인증번호</div>
                        <div class="find_contents">
                            <input class="form-control" placeholder="인증번호를 입력하세요.">
                            <div class="btn btn-primary" float="right">인증</div>
                        </div>
                    </div>
                    <div class="find_varify_result">
                        <div class="find_subtitle"></div>
                        <div class="find_contents" id="varify_result">인증 되었습니다. 등 결과 출력되는 공간!!!</div>
                    </div>
                    <div class="find_button_area">
                        <input type="submit" class="btn btn-primary" value="입력한 정보로 비밀번호 찾기">
                    </div>
                </form>
            </div>
        </section>
        <!--================End Find-User-Info Area =================-->
        
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
        <!-- find-user-info js -->
        <script src="js/find-user-info.js"></script>
    </body>
</html>