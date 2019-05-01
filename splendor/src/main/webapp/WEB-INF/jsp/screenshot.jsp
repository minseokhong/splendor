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
    <body class="screenshot_page">

		<!--================Header Menu Area =================-->
    
   		<c:if test="${user ==''}"><jsp:include page="header.jsp"></jsp:include></c:if>
	
		<c:if test="${user !=''}"><jsp:include page="loginHeader.jsp"></jsp:include></c:if>
   
        <!--================Header Menu Area =================-->
	
		<!--================Home Banner Area =================-->
		<section class="banner_area">
			<div class="banner_inner d-flex align-items-center">
				<div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
				<div class="container">
					<div class="banner_content text-center">
						<h2>½ºÅ©¸°¼¦ °¶·¯¸®</h2>
					</div>
				</div>
			</div>
		</section>
		<!--================End Home Banner Area =================-->
	
		<!--================ Start screenshot Area =================-->
		<section class="screenshot_area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="main_title">
							<h2>½ºÅ©¸°»þ»þ»þ</h2>
							<h1>½ºÅ©¸°¼¦</h1>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="single-screenshot">
									<div class="overlay"></div>
									<img class="img-fluid w-100" src="img/jihyo.jpg" alt="">
									<div class="content">
										<a class="pop-up-image" href="img/jihyo.jpg">
											<i class="lnr lnr-eye"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="single-screenshot">
									<div class="overlay"></div>
									<img class="img-fluid w-100" src="img/screenshot_img2.png" alt="">
									<div class="content">
										<a class="pop-up-image" href="img/screenshot_img2.png">
											<i class="lnr lnr-eye"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="single-screenshot">
									<div class="overlay"></div>
									<img class="img-fluid w-100" src="img/screenshot_img3.png" alt="">
									<div class="content">
										<a class="pop-up-image" href="img/screenshot_img3.png">
											<i class="lnr lnr-eye"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 hidden-md hidden-sm">
						<div class="single-screenshot">
							<div class="overlay"></div>
							<img class="img-fluid w-100" src="img/screenshot_img4.png" alt="">
							<div class="content">
								<a class="pop-up-image" href="img/screenshot_img4.png">
									<i class="lnr lnr-eye"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--================ End screenshot Area =================-->
	
		<!--================Footer Area =================-->
		<footer class="footer_area section_gap_top">
			<div class="container">
				<div class="row footer_inner">
					<div class="col-lg-3 col-sm-6">
						<aside class="f_widget ab_widget">
							<div class="f_title">
								<h4>À¯»ç °ÔÀÓ</h4>
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
								<h4>°³¹ßÀÚ</h4>
							</div>
							<ul>
								<li><a href="#"></a>±èµµÇü</a></li><a href="#">
									<li><a href="#"></a>ÁÖ¹Î¼·
								</a></li>
								<li><a href="#"></a>È«¹Î¼®</a></li>
								<li><a href="#"></a>¹Ú¿µ¿í</a></li>
								<li><a href="#"></a>À±Çöºó</a></li>
							</ul>
						</aside>
					</div>
					<div class="col-lg-3 col-sm-6">
						<aside class="f_widget ab_widget">
							<div class="f_title">
								<h4>Ã£¾Æ¿À½Ã´Â±æ</h4>
							</div>
							<ul>
								<li><a href="#"></a>¼­¿ï °­³²±¸...</a></li>
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
ÀÌ»óÀÔ´Ï´ç
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
		<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
		<script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
		<script src="vendors/isotope/isotope-min.js"></script>
		<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="vendors/counter-up/jquery.waypoints.min.js"></script>
		<script src="vendors/counter-up/jquery.counterup.min.js"></script>
		<script src="js/mail-script.js"></script>
		<!--gmaps Js-->
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
		<script src="js/gmaps.min.js"></script>
		<script src="js/theme.js"></script>
	</body>
</html>