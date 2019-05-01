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
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="vendors/animate-css/animate.css">
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
    <body class="guild_page">
        
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
						<h2>자유게시판</h2>
					</div>
				</div>
            </div>
		</section>
		<!--================End Home Banner Area =================-->
        
        <!--================guild Area =================-->
        <section class="guild_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="guild_left_sidebar">
                            <hr>
                            <article class="row guild_item">
                                    <div class="col-md-3">
                                        <div class="guild_info text-right">
                                             <ul class="guild_meta list">
                                                 <li><a href="#">윤현빈<i class="lnr lnr-user"></i></a></li>
                                                 <li><a href="#">2019.4.3<i class="lnr lnr-calendar-full"></i></a></li>
                                                 <li><a href="#">123 Views<i class="lnr lnr-eye"></i></a></li>
                                                 <li><a href="#">6개<i class="lnr lnr-bubble"></i></a></li>
                                             </ul>
                                         </div>
     
                                    </div>
                                     <div class="col-md-9">
                                         <div class="guild_post">
                                             <div class="guild_details">
                                                 <a href="single-guild" style="color: black;"><h4>자유게시판 제목</h4></a>
                                             </div>
                                             <!-- <ul class="guild_meta list">
                                                 <li><i class="lnr lnr-user"></i><a href="#">작성자</a></li>
                                                 <li><i class="lnr lnr-calendar-full"></i><a href="#">작성날짜</a></li>
                                             </ul> -->
                                         </div>
                                     </div>
                                 </article>

                          

                            <!-- <article class="row guild_item">
                               <div class="col-md-3">
                                   <div class="guild_info text-right">
                                        <div class="post_tag">
                                            <a href="#">Food,</a>
                                            <a class="active" href="#">Technology,</a>
                                            <a href="#">Politics,</a>
                                            <a href="#">Lifestyle</a>
                                        </div>
                                        <ul class="guild_meta list">
                                            <li><a href="#">Mark wiens<i class="lnr lnr-user"></i></a></li>
                                            <li><a href="#">12 Dec, 2017<i class="lnr lnr-calendar-full"></i></a></li>
                                            <li><a href="#">1.2M Views<i class="lnr lnr-eye"></i></a></li>
                                            <li><a href="#">06 Comments<i class="lnr lnr-bubble"></i></a></li>
                                        </ul>
                                    </div>
                               </div>
                                <div class="col-md-9">
                                    <div class="guild_post">
                                        <img src="img/guild/main-guild/m-guild-2.jpg" alt="">
                                        <div class="guild_details">
                                            <a href="single-guild"><h2>The Basics Of Buying A Telescope</h2></a>
                                            <p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction.</p>
                                            <a href="single-guild" class="guild_btn">View More</a>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <article class="row guild_item">
                               <div class="col-md-3">
                                   <div class="guild_info text-right">
                                        <div class="post_tag">
                                            <a href="#">Food,</a>
                                            <a class="active" href="#">Technology,</a>
                                            <a href="#">Politics,</a>
                                            <a href="#">Lifestyle</a>
                                        </div>
                                        <ul class="guild_meta list">
                                            <li><a href="#">Mark wiens<i class="lnr lnr-user"></i></a></li>
                                            <li><a href="#">12 Dec, 2017<i class="lnr lnr-calendar-full"></i></a></li>
                                            <li><a href="#">1.2M Views<i class="lnr lnr-eye"></i></a></li>
                                            <li><a href="#">06 Comments<i class="lnr lnr-bubble"></i></a></li>
                                        </ul>
                                    </div>
                               </div>
                                <div class="col-md-9">
                                    <div class="guild_post">
                                        <img src="img/guild/main-guild/m-guild-3.jpg" alt="">
                                        <div class="guild_details">
                                            <a href="single-guild"><h2>The Glossary Of Telescopes</h2></a>
                                            <p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction.</p>
                                            <a href="single-guild" class="guild_btn">View More</a>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <article class="row guild_item">
                               <div class="col-md-3">
                                   <div class="guild_info text-right">
                                        <div class="post_tag">
                                            <a href="#">Food,</a>
                                            <a class="active" href="#">Technology,</a>
                                            <a href="#">Politics,</a>
                                            <a href="#">Lifestyle</a>
                                        </div>
                                        <ul class="guild_meta list">
                                            <li><a href="#">Mark wiens<i class="lnr lnr-user"></i></a></li>
                                            <li><a href="#">12 Dec, 2017<i class="lnr lnr-calendar-full"></i></a></li>
                                            <li><a href="#">1.2M Views<i class="lnr lnr-eye"></i></a></li>
                                            <li><a href="#">06 Comments<i class="lnr lnr-bubble"></i></a></li>
                                        </ul>
                                    </div>
                               </div>
                                <div class="col-md-9">
                                    <div class="guild_post">
                                        <img src="img/guild/main-guild/m-guild-4.jpg" alt="">
                                        <div class="guild_details">
                                            <a href="single-guild"><h2>The Night Sky</h2></a>
                                            <p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction.</p>
                                            <a href="single-guild" class="guild_btn">View More</a>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <article class="row guild_item">
                               <div class="col-md-3">
                                   <div class="guild_info text-right">
                                        <div class="post_tag">
                                            <a href="#">Food,</a>
                                            <a class="active" href="#">Technology,</a>
                                            <a href="#">Politics,</a>
                                            <a href="#">Lifestyle</a>
                                        </div>
                                        <ul class="guild_meta list">
                                            <li><a href="#">Mark wiens<i class="lnr lnr-user"></i></a></li>
                                            <li><a href="#">12 Dec, 2017<i class="lnr lnr-calendar-full"></i></a></li>
                                            <li><a href="#">1.2M Views<i class="lnr lnr-eye"></i></a></li>
                                            <li><a href="#">06 Comments<i class="lnr lnr-bubble"></i></a></li>
                                        </ul>
                                    </div>
                               </div>
                                <div class="col-md-9">
                                    <div class="guild_post">
                                        <img src="img/guild/main-guild/m-guild-5.jpg" alt="">
                                        <div class="guild_details">
                                            <a href="single-guild"><h2>Telescopes 101</h2></a>
                                            <p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction.</p>
                                            <a href="single-guild" class="guild_btn">View More</a>
                                        </div>
                                    </div>
                                </div>
                            </article> -->


                            <nav class="guild-pagination justify-content-center d-flex">
		                        <ul class="pagination">
		                            <li class="page-item">
		                                <a href="#" class="page-link" aria-label="Previous">
		                                    <span aria-hidden="true">
		                                        <span class="lnr lnr-chevron-left"></span>
		                                    </span>
		                                </a>
		                            </li>
		                            <li class="page-item"><a href="#" class="page-link">01</a></li>
		                            <li class="page-item active"><a href="#" class="page-link">02</a></li>
		                            <li class="page-item"><a href="#" class="page-link">03</a></li>
		                            <li class="page-item"><a href="#" class="page-link">04</a></li>
		                            <li class="page-item"><a href="#" class="page-link">09</a></li>
		                            <li class="page-item">
		                                <a href="#" class="page-link" aria-label="Next">
		                                    <span aria-hidden="true">
		                                        <span class="lnr lnr-chevron-right"></span>
		                                    </span>
		                                </a>
		                            </li>
		                        </ul>
                            </nav>
                            
                        </div>
                    </div>


                    <div class="col-lg-4">
                        <div class="guild_right_sidebar">
                            <aside class="single_sidebar_widget search_widget">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search Posts">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button"><i class="lnr lnr-magnifier"></i></button>
                                    </span>
                                </div><!-- /input-group -->
                                <div class="br"></div>
                            </aside>

                            <aside class="single_sidebar_widget author_widget">
                                <img class="author_img rounded-circle" src="img/guild/author.png" alt="">
                                <h4>Charlie Barber</h4>
                                <p>Senior guild writer</p>
                                <div class="social_icon">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-github"></i></a>
                                    <a href="#"><i class="fa fa-behance"></i></a>
                                </div>
                                <p>Boot camps have its supporters andit sdetractors. Some people do not understand why you should have to spend money on boot camp when you can get. Boot camps have itssuppor ters andits detractors.</p>
                                <div class="br"></div>
                            </aside>

                            <aside class="single_sidebar_widget popular_post_widget">
                                <h3 class="widget_title">Popular Posts</h3>
                                <div class="media post_item">
                                    <img src="img/guild/popular-post/post1.jpg" alt="post">
                                    <div class="media-body">
                                        <a href="guild-details"><h3>Space The Final Frontier</h3></a>
                                        <p>02 Hours ago</p>
                                    </div>
                                </div>
                                <div class="media post_item">
                                    <img src="img/guild/popular-post/post2.jpg" alt="post">
                                    <div class="media-body">
                                        <a href="guild-details"><h3>The Amazing Hubble</h3></a>
                                        <p>02 Hours ago</p>
                                    </div>
                                </div>
                                <div class="media post_item">
                                    <img src="img/guild/popular-post/post3.jpg" alt="post">
                                    <div class="media-body">
                                        <a href="guild-details"><h3>Astronomy Or Astrology</h3></a>
                                        <p>03 Hours ago</p>
                                    </div>
                                </div>
                                <div class="media post_item">
                                    <img src="img/guild/popular-post/post4.jpg" alt="post">
                                    <div class="media-body">
                                        <a href="guild-details"><h3>Asteroids telescope</h3></a>
                                        <p>01 Hours ago</p>
                                    </div>
                                </div>
                                <div class="br"></div>
                            </aside>
                            <aside class="single_sidebar_widget ads_widget">
                                <a href="#"><img class="img-fluid" src="img/guild/add.jpg" alt=""></a>
                                <div class="br"></div>
                            </aside>
                            <aside class="single_sidebar_widget post_category_widget">
                                <h4 class="widget_title">Post Catgories</h4>
                                <ul class="list cat-list">
                                    <li>
                                        <a href="#" class="d-flex justify-content-between">
                                            <p>Technology</p>
                                            <p>37</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="d-flex justify-content-between">
                                            <p>Lifestyle</p>
                                            <p>24</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="d-flex justify-content-between">
                                            <p>Fashion</p>
                                            <p>59</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="d-flex justify-content-between">
                                            <p>Art</p>
                                            <p>29</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="d-flex justify-content-between">
                                            <p>Food</p>
                                            <p>15</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="d-flex justify-content-between">
                                            <p>Architecture</p>
                                            <p>09</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="d-flex justify-content-between">
                                            <p>Adventure</p>
                                            <p>44</p>
                                        </a>
                                    </li>															
                                </ul>
                                <div class="br"></div>
                            </aside>
                            <aside class="single-sidebar-widget newsletter_widget">
                                <h4 class="widget_title">Newsletter</h4>
                                <p>
                                Here, I focus on a range of items and features that we use in life without
                                giving them a second thought.
                                </p>
                                <div class="form-group d-flex flex-row">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                                        </div>
                                        <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Enter email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email'">
                                    </div>
                                    <a href="#" class="bbtns">Subcribe</a>
                                </div>	
                                <p class="text-bottom">You can unsubscribe at any time</p>	
                                <div class="br"></div>							
                            </aside>
                            <aside class="single-sidebar-widget tag_cloud_widget">
                                <h4 class="widget_title">Tag Clouds</h4>
                                <ul class="list">
                                    <li><a href="#">Technology</a></li>
                                    <li><a href="#">Fashion</a></li>
                                    <li><a href="#">Architecture</a></li>
                                    <li><a href="#">Fashion</a></li>
                                    <li><a href="#">Food</a></li>
                                    <li><a href="#">Technology</a></li>
                                    <li><a href="#">Lifestyle</a></li>
                                    <li><a href="#">Art</a></li>
                                    <li><a href="#">Adventure</a></li>
                                    <li><a href="#">Food</a></li>
                                    <li><a href="#">Lifestyle</a></li>
                                    <li><a href="#">Adventure</a></li>
                                </ul>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================guild Area =================-->
        
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