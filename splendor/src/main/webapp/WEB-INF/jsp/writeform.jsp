<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="img/favicon.png" type="image/png">
    <title>Nexus SaaS</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="vendors/linericon/style.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="vendors/animate-css/animate.css">
    <!-- main css -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
</head>

<body class="guild_page">

    <!--================Header Menu Area =================-->
    <header class="header_area">
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="index"><img src="img/logo.png" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav justify-content-center">
                            <li class="nav-item"><a class="nav-link" href="index">Ȩ������</a></li>
                            <li class="nav-item"><a class="nav-link" href="about-us">���ӼҰ�</a></li>
                            <li class="nav-item"><a class="nav-link" href="guild">��ũ����</a>
                                <!-- <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                     aria-expanded="false">Ŀ�´�Ƽ</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="price">���</a>
                                        <li class="nav-item"><a class="nav-link" href="games">�����Խ���</a>
                                        <li class="nav-item"><a class="nav-link" href="elements">��������</a>
                                    </ul>
                                </li> -->
                            <li class="nav-item active submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                                    aria-haspopup="true" aria-expanded="false">Ŀ�´�Ƽ</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="guild">���</a></li>
                                    <li class="nav-item"><a class="nav-link" href="freeboard">�����Խ���</a></li>
                                    <li class="nav-item"><a class="nav-link" href="elements">��������</a>
                                </ul>
                            </li>
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                                    aria-haspopup="true" aria-expanded="false">������</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href=";;">FAQ</a></li>
                                    <li class="nav-item"><a class="nav-link" href=";;">1:1����</a></li>
                                    <li class="nav-item"><a class="nav-link" href=";;">�Ű�</a>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="nav-item"><a href="#" class="primary_btn">ȸ������</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!--================Header Menu Area =================-->

    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0"
                data-background=""></div>
            <div class="container">
                <div class="banner_content text-center">
                    <div class="page_link">
                        <a href="index">Ȩ������</a>
                        <a href="freeboard">�����Խ���</a>
                    </div>
                    <h2>�����Խ���</h2>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================boardform Area =================-->
    <tr></tr>

    <div class="container radius"
        style="position:relative; border-radius: 5px; width:1000px; left:50% ; margin-left:-500px; margin-top:100px; margin-bottom: 100px; background-color:
        /* antiquewhite; */
        #e6e6e6;
         color:rgb(151, 137, 137);">
        <table class="table table-bordered">

            <tbody>

                <h2 style="color:rgb(151, 137, 137); text-align: center; padding: 15px;"> �� �ۼ�</h2>
                <form action="write_ok" method="post" encType="multiplart/form-data">
                    
                    <tr>
                        <th>����<input type="text" placeholder="������ �Է��ϼ���. " name="subject" class="form-control"
                                style="display: inline; width: 90%" /></th>


                               
                    </tr>

                        
                    <tr>
                        <th>���롡<input type=file name='file1' style='display: none;'>
                            <img src='img/pictures.png' align="right" width="30" height="35" name='find' id='find'
                                border='0'
                                onclick='document.all.file1.click(); document.all.file2.value=document.all.file1.value'>

                            <img src='img/video-camera.png' style="margin-right: 15px;" align="right" width="30"
                                height="35" name='find' id='find' border='0'
                                onclick='document.all.file1.click(); document.all.file2.value=document.all.file1.value'>



                        </th>

                    <tr>
                        <th><textarea rows="15" cols="10" placeholder="������ �Է��ϼ���. " name="content" class="form-control"
                                style=" width: 90%; margin-left: 40px;
                                    "></textarea></th>
                    </tr>



                    </tr>
                    <th>
                        <secret style="margin-left: 850px;">��б�</secret>��
                        <input type="checkbox" id="secretcheck" name="��б�" />
                    </th>
                    <tr>
                        <th> <input type="button" value="�۾���"
                                style=" width:100px; background-color: dodgerblue; border-radius: 5px;border: 0; outline: 0; color: white"
                                ; a href="freeboard" onclick="alert('�ۼ��Ϸ�');" class="pull-right large" />
                            <input type="button" value="�롡��"
                                style=" width:100px; background-color: dodgerblue; border-radius: 5px; border: 0; outline: 0; color: white"
                                ; onclick="location.href='freeboard'" class="pull-left large" />

                        </th>
                    </tr>

                </form>
            </tbody>
        </table>
    </div>





    <!--================guild Area =================-->
    <!--================guild Area =================-->

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
                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

                            <!-- Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
All rights reserved | This template is made with 
<i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
                            �̻��Դϴ�
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
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
    <script src="vendors/lightbox/simpleLightbox.min.js"></script>
    <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
    <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
    <script src="vendors/isotope/isotope-min.js"></script>
    <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendors/counter-up/jquery.counterup.min.js"></script>
    <script src="js/theme.js"></script>
</body>

</html>