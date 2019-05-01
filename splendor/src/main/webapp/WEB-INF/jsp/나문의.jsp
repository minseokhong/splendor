<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<body>

	<!--================Header Menu Area =================-->
    <c:set var="user" value="${user }"></c:set>
   		<c:if test="${user == null}"><jsp:include page="header.jsp"></jsp:include></c:if>
	
		<c:if test="${user != null}"><jsp:include page="loginHeader.jsp"></jsp:include></c:if>
   
        <!--================Header Menu Area =================-->

	<!--================Home Banner Area =================-->
	<section class="banner_area">
	<div class="banner_inner d-flex align-items-center">
		<div class="overlay bg-parallax" data-stellar-ratio="0.9"
			data-stellar-vertical-offset="0" data-background=""></div>
		<div class="container">
			<div class="banner_content text-center">

				<h2>1:1문의</h2>

			</div>
		</div>
	</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Contact Area =================-->
	<section class="contact_area section_gap">
	<div class="container">




		<div class="row">
			<div class="col-lg-3">
				<div class="contact_info">
					<div class="info_item">
						<i class="lnr lnr-home"></i>
						<h6>대한민국</h6>
						<p style="color: cadetblue">seoul</p>
					</div>

					<div class="info_item">
						<i class="lnr lnr-envelope"></i>
						<h6>
							<a href="#">didlshadk97@nate.com</a>
						</h6>
						<p style="color: brown">운영자 이메일</p>
					</div>
				</div>
			</div>
			<div class="col-lg-9">

				<div class="form-group">
					<input type="email" class="form-control" id="email" name="email"
						placeholder="닉네임입력해주세요.">
				</div>
				<form class="row contact_form" action="contact_process.php"
					method="post" id="contactForm" novalidate="novalidate">
					<div class="col-md-6">
						<select style="border: 1px solid;">
							<option>전체</option>

							<option>버그</option>
							<option>기타</option>
						</select>
						<div class="form-group">
							<textarea class="form-control" name="message" id="message"
								rows="1" placeholder="문의사항 입력해주세요."
								style="border: 1px solid; height: 300px;"></textarea>
						</div>
					</div>
					<div class="col-md-6"></div>
					<div class="col-md-12 text-right">
						<button type="submit" value="submit" class="primary_btn">문의하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<!--================Contact Area =================-->

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
					<li><a href="#"></a>For Business</a></li>
					<a href="#">
						<li><a href="#"></a>Premium Plans
					</a>
					</li>
					<li><a href="#"></a>Reviews</a></li>
					<li><a href="#"></a>How it Works</a></li>
					<li><a href="#"></a>Farfly Blog</a></li>
				</ul>
				</aside>
			</div>
			<div class="col-lg-3 col-sm-6">
				<aside class="f_widget ab_widget">
				<div class="f_title">
					<h4>개발자</h4>
				</div>
				<ul>
					<li><a href="#"></a>김도형</a></li>
					<a href="#">
						<li><a href="#"></a>주민섭
					</a>
					</li>
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
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

						<!-- Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
      All rights reserved | This template is made with 
      <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->

						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-12">
				<div class="social_widget">
					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!--================End Footer Area =================-->

	<!--================Contact Success and Error message Area =================-->
	<div id="success" class="modal modal-message fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<i class="fa fa-close"></i>
					</button>
					<h2>Thank you</h2>
					<p>Your message is successfully sent...</p>
				</div>
			</div>
		</div>
	</div>

	<!-- Modals error -->

	<div id="error" class="modal modal-message fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<i class="fa fa-close"></i>
					</button>
					<h2>Sorry !</h2>
					<p>Something went wrong</p>
				</div>
			</div>
		</div>
	</div>
	<!--================End Contact Success and Error message Area =================-->




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
	<!-- contact js -->
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/contact.js"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/theme.js"></script>
</body>
</html>