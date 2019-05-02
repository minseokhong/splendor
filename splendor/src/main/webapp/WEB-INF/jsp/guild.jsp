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
						<h2>길드</h2>
					</div>
				</div>
            </div>
		</section>
		<!--================End Home Banner Area =================-->
     

        <!--================Home Banner Area =================-->
        <!-- <section class="home_banner_area">
            <div class="banner_inner">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="home_left_img">
                                <img class="img-fluid" src="img/banner/home-left.png" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="banner_content">
                                <h2>
                                    For All Occasion <br>
                                    HairStyle is a Must <br>
                                    Try Fashion
                                </h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temp or incididunt ut labore et dolore
                                    magna aliqua. Ut enim ad minim.
                                </p>
                                <div class="d-flex align-items-center">
                                    <a id="play-home-video" class="video-play-button" href="https://www.youtube.com/watch?v=vParh5wE-tM">
                                        <span></span>
                                    </a>
                                    <div class="watch_video text-uppercase">
                                        watch the video
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        <!--================End Home Banner Area =================-->
            
        <!--================guild Categorie Area =================-->
        <section class="guild_categorie_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="categories_post">
                            <img src="img/guild/cat-post/cat-post-3.jpg" alt="post">
                            <div class="categories_details">
                                <div class="categories_text">
                                    <a href="single-guild"><h5>1st</h5></a>
                                    <div class="border_line"></div>
                                    <p>메가박스</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="categories_post">
                            <img src="img/guild/cat-post/cat-post-2.jpg" alt="post">
                            <div class="categories_details">
                                <div class="categories_text">
                                    <a href="single-guild"><h5>2nd</h5></a>
                                    <div class="border_line"></div>
                                    <p>삼성전자</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="categories_post">
                            <img src="img/guild/cat-post/cat-post-1.jpg" alt="post">
                            <div class="categories_details">
                                <div class="categories_text">
                                    <a href="single-guild"><h5>3rd</h5></a>
                                    <div class="border_line"></div>
                                    <p>캠프</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================guild Categorie Area =================-->
        
        <!--================guild Area =================-->
        <section class="guild_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="guild_left_sidebar" style="background-color: #eeeeee">
                            <article class="row guild_item" >
                               <div class="col-md-3">
                                   <div class="guild_info text-right">
                                        <div class="post_tag">
                                        </div>
                                        <ul class="guild_meta list" >
                                            <li style="text-align: center;"><img src="img/jihyo.jpg" style="width: 80%"></li>
                                            <li style="height: 20px;"></li>
                                            <li><a href="#">내가일등유저<i class="lnr lnr-user"></i></a></li>
                                            <li><a href="#">12명<i class="lnr lnr-home"></i></a></li>
                                        </ul>
                                    </div>
                               </div>
                                <div class="col-md-9">
                                    <div class="guild_post">
                                        <div class="guild_details">
                                            <a href="single-guild"><h2>메가박스</h2></a>
                                            <p>점수 만들어서 우리 영화봐요 Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                                                Possimus facilis, veniam dolorum ullam ea aspernatur 
                                                ipsum placeat rerum quia expedita laboriosam! Eum maxime eveniet 
                                                fugit numquam illum autem nisi exercitationem.</p>
                                            <a href="single-guild" class="guild_btn" style="border: 1px solid">View More</a>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <article class="row guild_item">
                               <div class="col-md-3">
                                   <div class="guild_info text-right">
                                        <div class="post_tag">
                                          
                                        </div>
                                        <ul class="guild_meta list">
                                            <li><a href="#">나는이등유저<i class="lnr lnr-user"></i></a></li>
                                            <li><a href="#">12 Dec, 2017<i class="lnr lnr-calendar-full"></i></a></li>
                                            <li><a href="#">8명<i class="lnr lnr-home"></i></a></li>
                                        </ul>
                                    </div>
                               </div>
                                <div class="col-md-9">
                                    <div class="guild_post">
                                        <div class="guild_details">
                                            <a href="single-guild"><h2>삼성전자</h2></a>
                                            <p>게임해서 삼성전차 취업 가즈아!</p>
                                            <a href="single-guild" class="guild_btn" style="border: 1px solid">View More</a>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <article class="row guild_item">
                               <div class="col-md-3">
                                   <div class="guild_info text-right">
                                        <div class="post_tag">
                                            
                                        </div>
                                        <ul class="guild_meta list">
                                            <li><a href="#">나는삼등유저<i class="lnr lnr-user"></i></a></li>
                                            <li><a href="#">12 Dec, 2017<i class="lnr lnr-calendar-full"></i></a></li>
                                            <li><a href="#">9명s<i class="lnr lnr-home"></i></a></li>
                                        </ul>
                                    </div>
                               </div>
                                <div class="col-md-9">
                                    <div class="guild_post">
                                        <div class="guild_details">
                                            <a href="single-guild"><h2>캠프</h2></a>
                                            <p>비트캠프를위하여!</p>
                                            <a href="single-guild" class="guild_btn" style="border: 1px solid">View More</a>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            
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
                            <a href="write.js" class="primary_btn" style="width: 300px">길드생성</a>
                            <div style="margin-top: 20px">

                            </div>
                            <aside class="single_sidebar_widget search_widget">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="길드이름검색">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button"><i class="lnr lnr-magnifier"></i></button>
                                    </span>
                                </div><!-- /input-group -->
                                <div class="br"></div>
                            </aside>
                            <aside class="single_sidebar_widget author_widget">
                                <img class="author_img rounded-circle" src="img/guild/author.png" alt="">
                                <h4>닉네임</h4>
                                <p>소속 길드</p>
                                <p>길드 가입신청합니다 받아주세요 활동할게요.</p>
                                <div class="br"></div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================guild Area =================-->
        
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