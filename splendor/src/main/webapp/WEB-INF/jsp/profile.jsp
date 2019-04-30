<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
        <header class="header_area">
                <div class="main_menu">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="container">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <a class="navbar-brand logo_h" href="index"><img class="logo" src="img/joystick.png" alt="">R.N.G<aside></aside></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse offset" id="navbarSupportedContent" >
                                <ul class="nav navbar-nav menu_nav justify-content-center"style ="width:70%";">
                                    <li class="nav-item"><a class="nav-link" href="index">홈페이지</a></li>
                                    <li class="nav-item"><a class="nav-link" href="about-us">게임소개</a></li>
                                    <li class="nav-item"><a class="nav-link" href="screenshot">스크린샷</a></li>
                                    <li class="nav-item submenu dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="false">커뮤니티</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item"><a class="nav-link" href="guild">길드</a></li>
                                            <li class="nav-item"><a class="nav-link" href="자유게시판">자유게시판</a></li>
                                            <li class="nav-item"><a class="nav-link" href="elements">공지사항</a>
                                        </ul>
                                    </li>
                                    <li class="nav-item submenu dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                        aria-expanded="false">고객센터</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item"><a class="nav-link" href="BBS">FAQ</a></li>
                                            <li class="nav-item"><a class="nav-link" href="나문의">1:1문의</a></li>
                                            <li class="nav-item"><a class="nav-link" href=";;">신고</a>
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
            <!--================Header Menu Area =================-->
        
        <!--================Profile Area =================-->
        <section class="container" style="margin-bottom: 10%;">
                <div class="profile_title_area">
                    <div class="genric-btn e-large logging radius">프로필 설정</div>
                </div>
                <div class="profile_form_area radius">
<!---------------------- 아래쪽에 내려가면 form 태그 action 하나 더 있습니다. 같이 지정해주세요. -->
                    <form class="form-group" id="profile_form" action="" method="do">
                        <div class="profile_image_area">
<!------------------------------ 프로필 이미지 첨부파일, name만 수정해주세요. -->
                            <!-- DB에서 불러와서 표시할 이미지 파일의 경로는 아래의 img 태그에 지정해주세요. -->
                            <input name="file" type="file" id="profile_image_input" hidden="hidden">
                            <div class="profile_image_div">
<!---------------------------------- 프로필 이미지 화면에 띄울 이미지 영역, name만 수정해주세요. -->
                                <img name="img" class="profile_image" src="img/no_profile.png">
                            </div>
                            <p>※ 클릭하여 이미지 교체.</p>
                        </div>
                        <div class="introduce_area">
                            <div class="genric-btn e-large logging radius">자기소개 ^.^</div>
<!------------------------------ 자기소개 글 작성란, name만 수정해주세요. -->
                            <textarea name="content" class="form-control" id="introduce_content_textarea" placeholder="내용을 입력해 주세요."></textarea>
                        </div>
                        <div class="btn-area" id="change_profile_only_area">
                            <span class="genric-btn info large radius" onclick=returnPage();>돌아가기</span>
                            <span class="genric-btn info large radius" id="open_change_password_btn" onclick=openChangePasswordArea()>비밀번호 변경</span>
                            <span class="genric-btn success large radius" id="submit_without_password" value="수정하기" onclick=submitWithoutPassword();>수정하기</span>
                        </div>
                        <div class="change_password_area" id="change_password_area" style="display: none;">
                            <!-- <div class="introduce_area">
                                <div class="genric-btn e-large logging radius">비밀번호 변경</div>
                            </div> -->
                            <div class="form-inline">
                                <img class="img-fluid" src="img/join/password_.png">
<!---------------------------------- 오리지널 패스워드. name만 수정해서 사용해주세요. -->
                                <input name="password" type="password" class="form-control" id="password" placeholder="기존 비밀번호를 입력해주세요." onkeyup="checkPassword(value)" onchange="checkPassword(value)">
                                <div class="result_div">
                                    <p class="result_sp" id="check_password_result">여기는 결과 표시</p>
                                </div>
                            </div>
                            <div class="form-inline">
                                <img class="img-fluid" src="img/join/password.png">
<!---------------------------------- 새 패스워드. name만 수정해서 사용해주세요. -->
                                <input name="new_password" type="password" class="form-control" id="new_password" placeholder="새 비밀번호를 입력해주세요." onkeyup="checkNewPassword(value)" onchange="checkNewPassword(value)">
                                <div class="result_div">
                                    <p class="result_sp" id="check_new_password_result"></p>
                                </div>
                            </div>
                            <div class="form-inline">
                                <img class="img-fluid" src="img/join/password.png">
                                <input name="new_password_confirm" type="password" class="form-control" id="new_password_confirm" placeholder="새 비밀번호를 다시 입력해주세요." onkeyup="checkNewPasswordConfirm(value)" onchange="checkNewPasswordConfirm(value)">
                                <div class="result_div">
                                    <p class="result_sp" id="check_new_password_confirm_result"></p>
                                </div>
                            </div>
                            <div class="btn-area">
                                <span class="genric-btn info large radius" id="close_change_password_btn" onclick=closeChangePasswordArea()>변경 취소</span>
                                <input type="submit" class="genric-btn success large radius" value="변경하기"></input>
                            </div>
                        </div>
                    </form>
 <!--------------------- 위쪽 77라인 form태그 action과 동일하게 수정이 필요함 -->
                    <form class="form-group" action="" method="do">
                        <div class="leave_toggle_area" id="leave_toggle_area">
                            <div class="genric-btn small info radius" id="leave_toggle_button" onclick="$('.bubble').toggle()";>회원 탈퇴</div>
                            <div class="bubble" style="display: none;">
                                <div>진짜 탈퇴할래???</div>
                                <input name="password" class="form-control" type="password" placeholder="패스워드 입력">
                                <button class="genric-btn success small radius">ㅇㅇ탈퇴</button>
                            </div>
                        </div>
                    </form>
                </div>
        </section>
        <!--================End Profile Area =================-->
        
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
        <!-- profile js -->
        <script src="js/profile.js"></script>
    </body>
</html>