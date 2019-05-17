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
    </head>
    <body class="screenshot_page">

		<!--================Header Menu Area =================-->
    <c:set var="user" value="${user }"></c:set>
   		<c:if test="${user == null}"><jsp:include page="header.jsp"></jsp:include></c:if>
	
		<c:if test="${user != null}"><jsp:include page="loginHeader.jsp"></jsp:include></c:if>
   
        <!--================Header Menu Area =================-->
	
		<!--================Home Banner Area =================-->
		<section class="banner_area">
			<div class="banner_inner d-flex align-items-center">
				<div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
				<div class="container">
					<div class="banner_content text-center">
						<h2>스크린샷 갤러리</h2>
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
							<h2>스크린샤샤샤</h2>
							<h1>스크린샷</h1>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="single-screenshot">
									<div class="overlay"></div>
									<img class="img-fluid w-100" src="img/내가이겼스.png" alt="">
									<div class="content">
										<a class="pop-up-image" href="img/내가이겼스.png">
											<i class="lnr lnr-eye"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="single-screenshot">
									<div class="overlay"></div>
									<img class="img-fluid w-100" src="img/방만듬.png" alt="">
									<div class="content">
										<a class="pop-up-image" href="img/방만듬.png">
											<i class="lnr lnr-eye"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="single-screenshot">
									<div class="overlay"></div>
									<img class="img-fluid w-100" src="img/내턴.png" alt="">
									<div class="content">
										<a class="pop-up-image" href="img/내턴.png">
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
							<img class="img-fluid w-100" src="img/머니머니.png" alt="">
							<div class="content">
								<a class="pop-up-image" href="img/머니머니.png">
									<i class="lnr lnr-eye"></i>
								</a>
							</div>
						</div>
						<div class="single-screenshot">
							<div class="overlay"></div>
							<img class="img-fluid w-100" src="img/실제.png" alt="">
							<div class="content">
								<a class="pop-up-image" href="img/실제.png">
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