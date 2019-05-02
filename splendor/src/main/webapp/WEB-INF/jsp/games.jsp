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
        <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="vendors/animate-css/animate.css">
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
    <body class="upcoming_games">

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
						<h2>Upcoming Games</h2>
					</div>
				</div>
			</div>
		</section>
		<!--================End Home Banner Area =================-->
	
		<!--================First Upcoming Games Area =================-->
		<section class="upcoming_games_area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="main_title">
							<h2>Upcoming Games</h2>
							<h1>Upcoming Games</h1>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-lg-3 col-md-6">
						<div class="new_games_item">
							<img src="img/b_map1.png" alt="">
							<div class="upcoming_title">
								<h3><a href="#">Best Ps4 Games</a></h3>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="new_games_item">
							<img src="img/b_map2.png" alt="">
							<div class="upcoming_title">
								<h3><a href="#">World Dart 2019</a></h3>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="new_games_item">
							<img src="img/b_map3.png" alt="">
							<div class="upcoming_title">
								<h3><a href="#">New XBox Games</a></h3>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="new_games_item">
							<img src="img/b_map4.png" alt="">
							<div class="upcoming_title">
								<h3><a href="#">Amarican Football</a></h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--================End Upcoming Games Area =================-->
	
		<!--================Start Recent Update Area =================-->
		<section class="recent_update_area section_gap">
			<div class="container">
				<div class="recent_update_inner">
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item">
							<a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">
								Live Streaming
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
							 aria-selected="false">
								Upcoming Challanges
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
							 aria-selected="false">
								Recent Famous Games
							</a>
						</li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
							<div class="row recent_update_text">
								<div class="col-lg-6">
									<div class="chart_img">
										<img class="img-fluid" src="img/recent_up.png" alt="">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="section_content">
										<h6>About Us</h6>
										<h1>We Believe that <br>Interior beauty Lasts Long</h1>
										<p>inappropriate behavior is often laughed off as ¡°boys will be boys,¡± women face higher conduct standards
											especially in the workplace. That¡¯s why it¡¯s crucial that as women.</p>
										<a class="primary_btn" href="#">Learn More</a>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
							<div class="row recent_update_text">
								<div class="col-lg-6">
									<div class="chart_img">
										<img class="img-fluid" src="img/recent_up.png" alt="">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="section_content">
										<h6>About Us</h6>
										<h1>We Believe that <br>Interior beauty Lasts Long</h1>
										<p>inappropriate behavior is often laughed off as ¡°boys will be boys,¡± women face higher conduct standards
											especially in the workplace. That¡¯s why it¡¯s crucial that as women.</p>
										<a class="primary_btn" href="#">Learn More</a>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade show active" id="contact" role="tabpanel" aria-labelledby="contact-tab">
							<div class="row recent_update_text">
								<div class="col-lg-6">
									<div class="chart_img">
										<img class="img-fluid" src="img/recent_up.png" alt="">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="section_content">
										<h6>About Us</h6>
										<h1>We Believe that <br>Interior beauty Lasts Long</h1>
										<p>inappropriate behavior is often laughed off as ¡°boys will be boys,¡± women face higher conduct standards
											especially in the workplace. That¡¯s why it¡¯s crucial that as women.</p>
										<a class="primary_btn" href="#">Learn More</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--================End Recent Update Area =================-->
	
		<!--================ Start Frequently Asked Questions Area ================-->
		<section class="frequently_area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="main_title">
							<h2>Frequently Asked Questions</h2>
							<h1>Frequently Asked Questions</h1>
						</div>
					</div>
				</div>
				<div class="row frequent_inner">
					<div class="col-lg-5 col-md-5">
						<div class="frequent_item">
							<h3>We Believe that Interior beauty Lasts Long</h3>
							<p>inappropriate behavior is often laughed off as ¡°boys will be boys,¡± women face higher conduct standards
								especially in the workplace. That¡¯s why it¡¯s crucial that as women.</p>
						</div>
					</div>
					<div class="offset-lg-2 col-lg-5 offset-md-2 col-md-5">
						<div class="frequent_item">
							<h3>We Believe that Interior beauty Lasts Long</h3>
							<p>inappropriate behavior is often laughed off as ¡°boys will be boys,¡± women face higher conduct standards
								especially in the workplace. That¡¯s why it¡¯s crucial that as women.</p>
						</div>
					</div>
					<div class="col-lg-5 col-md-5">
						<div class="frequent_item">
							<h3>We Believe that Interior beauty Lasts Long</h3>
							<p>inappropriate behavior is often laughed off as ¡°boys will be boys,¡± women face higher conduct standards
								especially in the workplace. That¡¯s why it¡¯s crucial that as women.</p>
						</div>
					</div>
					<div class="offset-lg-2 col-lg-5 offset-md-2 col-md-5">
						<div class="frequent_item">
							<h3>We Believe that Interior beauty Lasts Long</h3>
							<p>inappropriate behavior is often laughed off as ¡°boys will be boys,¡± women face higher conduct standards
								especially in the workplace. That¡¯s why it¡¯s crucial that as women.</p>
						</div>
					</div>
					<div class="col-lg-5 col-md-5">
						<div class="frequent_item last-child">
							<h3>We Believe that Interior beauty Lasts Long</h3>
							<p>inappropriate behavior is often laughed off as ¡°boys will be boys,¡± women face higher conduct standards
								especially in the workplace. That¡¯s why it¡¯s crucial that as women.</p>
						</div>
					</div>
					<div class="offset-lg-2 col-lg-5 offset-md-2 col-md-5">
						<div class="frequent_item last-child">
							<h3>We Believe that Interior beauty Lasts Long</h3>
							<p>inappropriate behavior is often laughed off as ¡°boys will be boys,¡± women face higher conduct standards
								especially in the workplace. That¡¯s why it¡¯s crucial that as women.</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--================ End Frequently Asked Questions Area ================-->
	
		<!--================ Start Newsletter Area ================-->
		<section class="newsletter_area">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-12">
						<div class="newsletter_inner">
							<h1>Subscribe Our Newsletter</h1>
							<p>We won¡¯t send any kind of spam</p>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-12">
						<aside class="newsletter_widget">
							<div id="mc_embed_signup">
								<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								 method="get" class="subscribe_form relative">
									<div class="input-group d-flex flex-row">
										<input name="EMAIL" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your email address'"
										 required="" type="email">
										<button class="btn primary_btn">Subscribe</button>
									</div>
								</form>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</section>
		<!--================ End Newsletter Area ================-->
	
		<!--================Footer Area =================-->
   
	   	<jsp:include page="footer.jsp"></jsp:include>
   
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