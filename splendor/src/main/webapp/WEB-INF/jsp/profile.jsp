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
                                    <li class="nav-item"><a class="nav-link" href="index">Ȩ������</a></li>
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
            <!--================Header Menu Area =================-->
        
        <!--================Profile Area =================-->
        <section class="container" style="margin-bottom: 10%;">
                <div class="profile_title_area">
                    <div class="genric-btn e-large logging radius">������ ����</div>
                </div>
                <div class="profile_form_area radius">
<!---------------------- �Ʒ��ʿ� �������� form �±� action �ϳ� �� �ֽ��ϴ�. ���� �������ּ���. -->
                    <form class="form-group" id="profile_form" action="" method="do">
                        <div class="profile_image_area">
<!------------------------------ ������ �̹��� ÷������, name�� �������ּ���. -->
                            <!-- DB���� �ҷ��ͼ� ǥ���� �̹��� ������ ��δ� �Ʒ��� img �±׿� �������ּ���. -->
                            <input name="file" type="file" id="profile_image_input" hidden="hidden">
                            <div class="profile_image_div">
<!---------------------------------- ������ �̹��� ȭ�鿡 ��� �̹��� ����, name�� �������ּ���. -->
                                <img name="img" class="profile_image" src="img/no_profile.png">
                            </div>
                            <p>�� Ŭ���Ͽ� �̹��� ��ü.</p>
                        </div>
                        <div class="introduce_area">
                            <div class="genric-btn e-large logging radius">�ڱ�Ұ� ^.^</div>
<!------------------------------ �ڱ�Ұ� �� �ۼ���, name�� �������ּ���. -->
                            <textarea name="content" class="form-control" id="introduce_content_textarea" placeholder="������ �Է��� �ּ���."></textarea>
                        </div>
                        <div class="btn-area" id="change_profile_only_area">
                            <span class="genric-btn info large radius" onclick=returnPage();>���ư���</span>
                            <span class="genric-btn info large radius" id="open_change_password_btn" onclick=openChangePasswordArea()>��й�ȣ ����</span>
                            <span class="genric-btn success large radius" id="submit_without_password" value="�����ϱ�" onclick=submitWithoutPassword();>�����ϱ�</span>
                        </div>
                        <div class="change_password_area" id="change_password_area" style="display: none;">
                            <!-- <div class="introduce_area">
                                <div class="genric-btn e-large logging radius">��й�ȣ ����</div>
                            </div> -->
                            <div class="form-inline">
                                <img class="img-fluid" src="img/join/password_.png">
<!---------------------------------- �������� �н�����. name�� �����ؼ� ������ּ���. -->
                                <input name="password" type="password" class="form-control" id="password" placeholder="���� ��й�ȣ�� �Է����ּ���." onkeyup="checkPassword(value)" onchange="checkPassword(value)">
                                <div class="result_div">
                                    <p class="result_sp" id="check_password_result">����� ��� ǥ��</p>
                                </div>
                            </div>
                            <div class="form-inline">
                                <img class="img-fluid" src="img/join/password.png">
<!---------------------------------- �� �н�����. name�� �����ؼ� ������ּ���. -->
                                <input name="new_password" type="password" class="form-control" id="new_password" placeholder="�� ��й�ȣ�� �Է����ּ���." onkeyup="checkNewPassword(value)" onchange="checkNewPassword(value)">
                                <div class="result_div">
                                    <p class="result_sp" id="check_new_password_result"></p>
                                </div>
                            </div>
                            <div class="form-inline">
                                <img class="img-fluid" src="img/join/password.png">
                                <input name="new_password_confirm" type="password" class="form-control" id="new_password_confirm" placeholder="�� ��й�ȣ�� �ٽ� �Է����ּ���." onkeyup="checkNewPasswordConfirm(value)" onchange="checkNewPasswordConfirm(value)">
                                <div class="result_div">
                                    <p class="result_sp" id="check_new_password_confirm_result"></p>
                                </div>
                            </div>
                            <div class="btn-area">
                                <span class="genric-btn info large radius" id="close_change_password_btn" onclick=closeChangePasswordArea()>���� ���</span>
                                <input type="submit" class="genric-btn success large radius" value="�����ϱ�"></input>
                            </div>
                        </div>
                    </form>
 <!--------------------- ���� 77���� form�±� action�� �����ϰ� ������ �ʿ��� -->
                    <form class="form-group" action="" method="do">
                        <div class="leave_toggle_area" id="leave_toggle_area">
                            <div class="genric-btn small info radius" id="leave_toggle_button" onclick="$('.bubble').toggle()";>ȸ�� Ż��</div>
                            <div class="bubble" style="display: none;">
                                <div>��¥ Ż���ҷ�???</div>
                                <input name="password" class="form-control" type="password" placeholder="�н����� �Է�">
                                <button class="genric-btn success small radius">����Ż��</button>
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
                                <h4>���� ����</h4>
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
                                <h4>������</h4>
                            </div>
                            <ul>
                                <li><a href="#"></a>�赵��</a></li><a href="#">
                                    <li><a href="#"></a>�ֹμ�
                                </a></li>
                                <li><a href="#"></a>ȫ�μ�</a></li>
                                <li><a href="#"></a>�ڿ���</a></li>
                                <li><a href="#"></a>������</a></li>
                            </ul>
                        </aside>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <aside class="f_widget ab_widget">
                            <div class="f_title">
                                <h4>ã�ƿ��ô±�</h4>
                            </div>
                            <ul>
                                <li><a href="#"></a>���� ������...</a></li>
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
    �̻��Դϴ�
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