<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="/img/joystick.png" type="image/png">
	<title>R.N.G Games</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/vendors/linericon/style.css">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<link rel="stylesheet" href="/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="/css/magnific-popup.css">
	<link rel="stylesheet" href="/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="/vendors/animate-css/animate.css">
	<link rel="stylesheet" href="/vendors/flaticon/flaticon.css">
	<!-- main css -->
	<link rel="stylesheet" href="/css/style.css" type="text/css">

</head>

<body>
	<!--================Header Menu Area =================-->
	<c:set var="user" value="${user }"></c:set>
   		<c:if test="${user == null}"><jsp:include page="header.jsp"></jsp:include></c:if>
	
		<c:if test="${user != null}"><jsp:include page="loginHeader.jsp"></jsp:include></c:if>
    
    
	<!--================Header Menu Area =================-->
	
	<!--================Home Banner Area =================-->
	<section class="home_banner_area">
		<div class="banner_inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="home_left_img">
                            <!-- <img class="img-fluid" src="img/banner/home-left.png" alt=""> -->
                            <ul class="home_info">
                                <li class="home_info2"><h1>�г��� : </h1><h2>${user.user_name }</h2></li>
                                <li class="home_info2"><h1>��ŷ : </h1><h2> </h2></li>
                                <li class="home_info2"><h1>���� : </h1><h2> </h2></li>
                                <li class="home_info2"><h1>���� : </h1><h2> </h2></li>
<!--                                 <li class="home_info2"><h1>��� ��ŷ : </h1><h2>45��</h2></li> -->
                                <li class="home_info2"><h1>��� ��ŷ : </h1><h2> </h2></li>
                                

                            </ul>


                            
						</div>
					</div>
					<div class="col-lg-6">
						<div class="banner_content">
							<h2>
								wellcome <br>
								to <br>
								hell~
							</h2>
							<p>
								������ �ҹ��ϰ� �Բ� ��� �� �ִ� �� ����! ���÷����� ���� ��带 ��ϰ� ������ ���� ���� �ְ� �Ǿ����!
							</p>
							<div class="d-flex align-items-center">
								<!-- <a id="play-home-video" class="video-play-button" href="https://www.youtube.com/watch?v=vParh5wE-tM">
									<span></span>
								</a> -->
								<a class='play' href="Splendor-master/Splendor-master/public/index">
									<img class="play-img" src="img/casino.png">
								</a>
								<div class="watch_video text-uppercase">
									<-���� ����
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Start About Us Area =================-->
	<section class="about_us_area section_gap_top">
		<div class="container">
			<div class="row about_content align-items-center">
				<div class="col-lg-6">
					<div class="section_content">
						<h6>���� �Ұ�</h6>
						<h1>���÷����� <br>�䷱ ���� �Դϴ�.</h1>
						<p>���� ���Ӱ��� ��Ʃ�� ������ ������ �Ʒ� ��ư�� ���� ����� �۷� Ǯ�� �ڼ��ϰ� ������ �޴� �Դϴ�.</p>
						<a class="primary_btn" href="#">�� �˾ƺ���</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about_us_image_box justify-content-center">
							<iframe width="579" height="406" src="https://www.youtube.com/embed/mAKsZ26SabQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						<!-- <img class="img-fluid w-100" src="img/about_img.png" alt=""> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!--================End About Us Area =================-->

	<!--================First Upcoming Games Area =================-->
	<!-- <section class="upcoming_games_area">
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
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="new_games_item">
						<img src="img/b_map1.png" alt="">
						<div class="upcoming_title">
							<h3><a href="games">Best Ps4 Games</a></h3>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="new_games_item">
						<img src="img/b_map2.png" alt="">
						<div class="upcoming_title">
							<h3><a href="games">World Dart 2019</a></h3>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="new_games_item">
						<img src="img/b_map3.png" alt="">
						<div class="upcoming_title">
							<h3><a href="games">New XBox Games</a></h3>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="new_games_item">
						<img src="img/b_map4.png" alt="">
						<div class="upcoming_title">
							<h3><a href="games">Amarican Football</a></h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!--================End Upcoming Games Area =================-->

	<!--================Start Recent Update Area =================-->
	<section class="recent_update_area section_gap">
		<div class="container">
			<div class="recent_update_inner">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item">
						<a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">
							���� ����
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
						 aria-selected="false">
							�ְ��� ���
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
						 aria-selected="true">
							��������
						</a>
					</li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
						<div class="row recent_update_text">
							<div class="col-lg-6">
								<div class="chart_img">
									<img class="img-fluid" src="img/jihyo.jpg" alt="">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="section_content">
									<h6>���� ����</h6>
									<h1>��ŷ 1�� <br>'������' �� </h1>
									<p>������ �Ƿ����� ��ŷ 1���� ��� �Ͻ� '������'�� �Դϴ�. �Ƿ��� Ű�� � �پ�ѵ��� �غ�����!</p>
									<a class="primary_btn" href="#">��ŷ ��������</a>
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
									<h6>�ְ��� ���</h6>
									<h1>�ְ��� �Ƿ��ڵ��� ����! <br>��ŷ 1�� 'R.N.G' !!!</h1>
									<p>inappropriate behavior is often laughed off as ��boys will be boys,�� women face higher conduct standards
										especially in the workplace. That��s why it��s crucial that as women.</p>
									<a class="primary_btn" href="#">��巩ŷ ��������</a>
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
									<h6>��������</h6>
									<h1>1.15 ��ġ���� <br>ī�� ��Ų ���...!!</h1>
									<p>ī�彺Ų�� ������ �°� �������� ����Ǿ�...</p>
									<a class="primary_btn" href="#">�ڼ��� ��������</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Recent Update Area =================-->


	<!--================ Start screenshot Area =================-->
	<section class="screenshot_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="main_title">
						<h2>��ũ��������</h2>
						<h1>��ũ����</h1>
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

	<!--================ Start Frequently Asked Questions Area ================-->
	<section class="frequently_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="main_title">
						<h2>������</h2>
						<h1>������</h1>
					</div>
				</div>
			</div>
			<div class="row frequent_inner">
				<div class="col-lg-5 col-md-5">
					<div class="frequent_item">
						<h3>FAQ</h3>
						<p>inappropriate behavior is often laughed off as ��boys will be boys,�� women face higher conduct standards
							especially in the workplace. That��s why it��s crucial that as women.</p>
					</div>
				</div>
				<div class="offset-lg-2 col-lg-5 offset-md-2 col-md-5">
					<div class="frequent_item">
						<h3>1:1 ����</h3>
						<p>inappropriate behavior is often laughed off as ��boys will be boys,�� women face higher conduct standards
							especially in the workplace. That��s why it��s crucial that as women.</p>
					</div>
				</div>
				<div class="col-lg-5 col-md-5">
					<div class="frequent_item">
						<h3>�����Ű�</h3>
						<p>inappropriate behavior is often laughed off as ��boys will be boys,�� women face higher conduct standards
							especially in the workplace. That��s why it��s crucial that as women.</p>
					</div>
				</div>
				<div class="offset-lg-2 col-lg-5 offset-md-2 col-md-5">
					<div class="frequent_item">
						<h3>���� �� ��å</h3>
						<p>inappropriate behavior is often laughed off as ��boys will be boys,�� women face higher conduct standards
							especially in the workplace. That��s why it��s crucial that as women.</p>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!--================ End Frequently Asked Questions Area ================-->

	<!--================ Start guild Area ================-->
	<section class="guild_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="main_title">
						<h2>�����Խ���</h2>
						<h1>�����Խ���</h1>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="guild_items">
						<div class="guild_img_box">
							<img class="img-fluid" src="img/jihyo.jpg" alt="">
						</div>
						<div class="guild_content">
							<a class="title" href="guild">Ȩ������ ui�� �ʹ� ������ �̤�</a>
							<p>���ӵ� ���� �λ����̳��� �̤� </p>
							<div class="date">
								<a href="#"><i class="fa fa-calendar" aria-hidden="true"></i>2019.4.2 </a>
								<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 15</a>
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i> 05</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="guild_items">
						<div class="guild_img_box">
							<img class="img-fluid" src="img/guild_img2.png" alt="">
						</div>
						<div class="guild_content">
							<a class="title" href="guild">Portable Fashion for women</a>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
								dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
							<div class="date">
								<a href="#"><i class="fa fa-calendar" aria-hidden="true"></i>2019.4.2 </a>
								<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 15</a>
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i> 05</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 hidden-md">
					<div class="guild_items">
						<div class="guild_img_box">
							<img class="img-fluid" src="img/guild_img3.png" alt="">
						</div>
						<div class="guild_content">
							<a class="title" href="guild">Portable Fashion for women</a>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
								dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
							<div class="date">
								<a href="#"><i class="fa fa-calendar" aria-hidden="true"></i>2019.4.2 </a>
								<a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 15</a>
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i> 05</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End guild Area ================-->

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
	<script src="/js/jquery-3.2.1.min.js"></script>
	<script src="/js/popper.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/stellar.js"></script>
	<script src="/js/jquery.magnific-popup.min.js"></script>
	<script src="/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="/vendors/isotope/isotope-min.js"></script>
	<script src="/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="/js/jquery.ajaxchimp.min.js"></script>
	<script src="/vendors/counter-up/jquery.waypoints.min.js"></script>
	<script src="/vendors/counter-up/jquery.counterup.min.js"></script>
	<script src="/js/mail-script.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/js/gmaps.min.js"></script>
	<script src="/js/theme.js"></script>

	<script>

		$('.mail').on('click', function() {
			$('.a1').slideToggle('fast');
			$('.a2').hide('fast');
		});

		$('.notification').on('click', function() {
			$('.a2').slideToggle('fast');
			$('.a1').hide('fast');
		});


		$('.����').hover(function() {
			$('.����').css('background-color', 'white');
			$('.����_����').css('display', 'block');
			$('.�˸�_����').css('display', 'none');
			$('.����_����').css('background-color', 'lightgreen');
		}, function() {
			$('.����').css('background-color', 'lightgreen');
		});

		$('.�˸�').hover(function() {
			$('.�˸�').css('background-color', 'white');
			$('.����_����').css('display', 'none');
			$('.�˸�_����').css('display', 'block');
			$('.�˸�_����').css('background-color', 'white');
		}, function() {
			$('.�˸�').css('background-color', 'white');
		});

		$('#close').click(function() {
			// $('.msg1').hide();
			$('.msg1').remove();
		});

		$('#close_����Ȯ��â').click(function() {
			// $('.msg1').hide();
			$('.message-box').hide();
		});

		$('#close_����������').click(function() {
			// $('.msg1').hide();
			$('.a1').hide();
		});

		$('.msg_click').click(function() {
			$('.message-box').show('fast');
		});

		$('.�����ϱ�').on('click', function() {
			$('.a1').slideToggle('fast');
		});

		
		
	</script>


</body>

</html>