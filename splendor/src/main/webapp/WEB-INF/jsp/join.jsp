<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
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
    </head>
        
        <!--================Header Menu Area =================-->
    
   		<c:if test="${user ==''}"><jsp:include page="header.jsp"></jsp:include></c:if>
	
		<c:if test="${user !=''}"><jsp:include page="loginHeader.jsp"></jsp:include></c:if>
   
        <!--================Header Menu Area =================-->
        
        <!--================Join Area =================-->
        <section class="join">
            <div class="container">
                <div class="join_title_area">
                    <div class="genric-btn e-large logging radius">회원가입</div>
                </div>
                <div class="join_form_area radius">
                    <form class="form-group" action="joinTest" method="GET">
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
	<footer class="footer_area section_gap_top">
            <div class="container">
                <div class="row footer_inner">
                    <div class="col-lg-3 col-sm-6">
                        <aside class="f_widget ab_widget">
                            <div class="f_title">
                                <h4>유사 게임</h4>
                            </div>
                            <ul>
                                <li><a href="#"></a>For Business</a></li><a href="#">
                                    <li><a href="#"></a>Premium Plans
                                </a></li>
                                <li><a href="#"></a>Reviews</a></li>
                                <li><a href="#"></a>How it Works</a></li>
                                <li><a href="#"></a>Farfly guild</a></li>
                            </ul>
                        </aside>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <aside class="f_widget ab_widget">
                            <div class="f_title">
                                <h4>개발자</h4>
                            </div>
                            <ul>
                                <li><a href="#"></a>김도형</a></li><a href="#">
                                    <li><a href="#"></a>주민섭
                                </a></li>
                                <li><a href="#"></a>홍민석</a></li>
                                <li><a href="#"></a>박영욱</a></li>
                                <li><a href="#"></a>윤현빈</a></li>
                            </ul>
                        </aside>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <aside class="f_widget ab_widget">
                            <div class="f_title">
                                <h4>찾아오시는길</h4>
                            </div>
                            <ul>
                                <li><a href="#"></a>서울 강남구...</a></li>
                            </ul>
                        </aside>
                    </div>
                    <!-- <div class="col-lg-3 col-sm-6">
                        <aside class="f_widget ab_widget">
                            <div class="f_title">
                                <h4>Legal</h4>
                            </div>
                            <ul>
                                <li><a href="#"></a>Terms and conditions</a></li><a href="#">
                                    <li><a href="#"></a>Privacy Policy
                                </a></li>
                                <li><a href="#"></a>Cookie Information</a></li>
                                <li><a href="#"></a>Opt - Out</a></li>
                            </ul>
                        </aside>
                    </div> -->
                </div>
                <div class="row single-footer-widget">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="copy_right_text">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    
    <!-- Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
    All rights reserved | This template is made with 
    <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
    이상입니당
    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="social_widget">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-behance"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--================End Footer Area =================-->
        
        
        
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.js"></script>
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