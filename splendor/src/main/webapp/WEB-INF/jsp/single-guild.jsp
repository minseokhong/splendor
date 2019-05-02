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
        
        <!--================guild Area =================-->
        <section class="guild_area single-post-area section_gap">
            <div class="container">
                <div class="row">

                    
                    <div class="each_guild" style="width: 80%; margin: auto;">
                        <div class="single-post row">
                            <div class="col-lg-12" style="text-align: center;">
                                <!-- <div class="feature-img">
                                    <img class="img-fluid" src="img/guild/feature-img1.jpg" alt="" style="width: 100%;">
                                </div>									 -->
                            </div>
                            <div class="col-lg-3  col-md-3">
                                <div class="guild_info text-right">
                                    <ul class="guild_meta list">
                                        <li><a href="#">현빈<i class="lnr lnr-user"></i></a></li>
                                        <li><a href="#">12명<i class="lnr lnr-home"></i></a></li>
                                        <li><a href="#">현빈<i class="lnr lnr-"></i></a></li>
                                        <li><a href="#">12명<i class="lnr lnr-home"></i></a></li>
                                    </ul>
                                    <img class="img-fluid" src="img/guild/feature-img1.jpg" alt="" style="width: 100%;">
                                    <!-- <ul class="social-links">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-github"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                    </ul> -->
                                </div>
                            </div>
                            <div class="col-lg-9 col-md-9 guild_details">
                                <h1 style="text-align: center;">< 우주최강 > </h1>
                                <div class="excert">
                                    우리 길드는 친목 위주의 .....
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui amet excepturi eaque ullam quasi, odit animi alias officia ab recusandae dignissimos rem explicabo, voluptatibus harum veniam? Maxime dicta est similique!
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui amet excepturi eaque ullam quasi, odit animi alias officia ab recusandae dignissimos rem explicabo, voluptatibus harum veniam? Maxime dicta est similique!
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui amet excepturi eaque ullam quasi, odit animi alias officia ab recusandae dignissimos rem explicabo, voluptatibus harum veniam? Maxime dicta est similique!
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui amet excepturi eaque ullam quasi, odit animi alias officia ab recusandae dignissimos rem explicabo, voluptatibus harum veniam? Maxime dicta est similique!
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui amet excepturi eaque ullam quasi, odit animi alias officia ab recusandae dignissimos rem explicabo, voluptatibus harum veniam? Maxime dicta est similique!
                                </div>
                                <!-- <p class="excert">
                                    MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction.
                                </p>
                                <p>
                                    Boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually sit through a self-imposed
                                </p>
                                <p>
                                    Boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually sit through a self-imposed
                                </p> -->
                            </div>
                            <div class="col-lg-12" style="text-align: center; margin-top: 10%; overflow-y: scroll; height: 500px;">
                                <h2>구성원</h2>
                                <div class="quotes">
                                    
                                    <table style="font-size: 20px; width: 100%;">
                                        <thead style="width: 100%;">
                                            <tr>
                                                <th style="padding: 10px 0;">닉네임</th>
                                                <th style="padding: 10px 0;">등급</th>
                                                <th style="padding: 10px 0;">점수</th>
                                                <th style="padding: 10px 0;">승률</th>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td style="padding: 10px 0;">닉네임1</td>
                                            <td style="padding: 10px 0;">길드운영자</td>
                                            <td style="padding: 10px 0;">45</td>
                                            <td style="padding: 10px 0;">50%</td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px 0;">닉네임2</td>
                                            <td style="padding: 10px 0;">회원</td>
                                            <td style="padding: 10px 0;">20</td>
                                            <td style="padding: 10px 0;">50%</td>
                                        </tr>
                                        <tr>
                                            <td style="padding: 10px 0;">닉네임3</td>
                                            <td style="padding: 10px 0;">회원</td>
                                            <td style="padding: 10px 0;">11</td>
                                            <td style="padding: 10px 0;">50%</td>
                                        </tr>
                                        <tr>
                                                <td style="padding: 10px 0;">닉네임3</td>
                                                <td style="padding: 10px 0;">회원</td>
                                                <td style="padding: 10px 0;">11</td>
                                                <td style="padding: 10px 0;">50%</td>
                                            </tr>
                                            <tr>
                                                    <td style="padding: 10px 0;">닉네임3</td>
                                                    <td style="padding: 10px 0;">회원</td>
                                                    <td style="padding: 10px 0;">11</td>
                                                    <td style="padding: 10px 0;">50%</td>
                                                </tr>
                                                <tr>
                                                        <td style="padding: 10px 0;">닉네임3</td>
                                                        <td style="padding: 10px 0;">회원</td>
                                                        <td style="padding: 10px 0;">11</td>
                                                        <td style="padding: 10px 0;">50%</td>
                                                    </tr>
                                                    <tr>
                                                            <td style="padding: 10px 0;">닉네임3</td>
                                                            <td style="padding: 10px 0;">회원</td>
                                                            <td style="padding: 10px 0;">11</td>
                                                            <td style="padding: 10px 0;">50%</td>
                                                        </tr>
                                                        <tr>
                                                                <td style="padding: 10px 0;">닉네임3</td>
                                                                <td style="padding: 10px 0;">회원</td>
                                                                <td style="padding: 10px 0;">11</td>
                                                                <td style="padding: 10px 0;">50%</td>
                                                            </tr>
                                                            <tr>
                                                                    <td style="padding: 10px 0;">닉네임3</td>
                                                                    <td style="padding: 10px 0;">회원</td>
                                                                    <td style="padding: 10px 0;">11</td>
                                                                    <td style="padding: 10px 0;">50%</td>
                                                                </tr>
                                    </table>									
                                </div>
                                <!-- <div class="row">
                                    <div class="col-6">
                                        <img class="img-fluid" src="img/guild/post-img1.jpg" alt="">
                                    </div>
                                    <div class="col-6">
                                        <img class="img-fluid" src="img/guild/post-img2.jpg" alt="">
                                    </div>	
                                    <div class="col-lg-12 mt-25">
                                        <p>
                                            MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower.
                                        </p>
                                        <p>
                                            MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower.
                                        </p>											
                                    </div>									
                                </div> -->
                            </div>
                        </div>
                        <!-- <div class="navigation-area"> -->
                            <!-- <div class="row">
                                <div class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                                    <div class="thumb">
                                        <a href="#"><img class="img-fluid" src="img/guild/prev.jpg" alt=""></a>
                                    </div>
                                    <div class="arrow">
                                        <a href="#"><span class="lnr text-white lnr-arrow-left"></span></a>
                                    </div>
                                    <div class="detials">
                                        <p>Prev Post</p>
                                        <a href="#"><h4>Space The Final Frontier</h4></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
                                    <div class="detials">
                                        <p>Next Post</p>
                                        <a href="#"><h4>Telescopes 101</h4></a>
                                    </div>
                                    <div class="arrow">
                                        <a href="#"><span class="lnr text-white lnr-arrow-right"></span></a>
                                    </div>
                                    <div class="thumb">
                                        <a href="#"><img class="img-fluid" src="img/guild/next.jpg" alt=""></a>
                                    </div>										
                                </div>									
                            </div> -->
                        <!-- </div> -->
                        <div class="comments-area">
                            <h4>05 Comments</h4>

                            <div class="comment-list">
                                <div class="single-comment justify-content-between d-flex">
                                    <div class="user justify-content-between d-flex">
                                        <div class="thumb">
                                            <img src="img/guild/c1.jpg" alt="">
                                        </div>
                                        <div class="desc">
                                            <h5><a href="#">에밀리</a></h5>
                                            <p class="date">2019.5.16___15:12</p>
                                            <p class="comment">
                                                안녕하세요 ^^
                                            </p>
                                        </div>
                                    </div>
                                    <div class="reply-btn">
                                           <a id="대댓글달기" class="btn-reply text-uppercase">대댓글달기</a> 
                                    </div>
                                </div>

                                <div class="대댓글창" style="position: relative; display: none;">
                                    <form>
                                        <div class="form-group form-inline">
                                        </div>
                                        <div style="display: inline-block; width: 80%;">
                                            <textarea class="form-control mb-10" rows="5" name="message" placeholder="내용을 입력해주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '내용을 입력해주세요'" required=""></textarea>
                                        </div>
                                        <div style="position: absolute; display: inline-block; top: 60%;">
                                            <a href="#" class="primary-btn primary_btn">등록</a>	

                                        </div>
                                    </form>
                                </div>
                            </div>	

                            

                            <div class="comment-list left-padding">
                                <div class="single-comment justify-content-between d-flex">
                                    <div class="user justify-content-between d-flex">
                                        <div class="thumb">
                                            <img src="img/guild/c2.jpg" alt="">
                                        </div>
                                        <div class="desc">
                                            <h5><a href="#">미키</a></h5>
                                            <p class="date">2019.5.16___15:12</p>
                                            <p class="comment">
                                                안녕하세요 ^^
                                            </p>
                                        </div>
                                    </div>
                                    <div class="reply-btn">
                                           <a href="" class="btn-reply text-uppercase">대댓글달기</a> 
                                    </div>
                                </div>
                            </div>	
                            <div class="comment-list left-padding">
                                <div class="single-comment justify-content-between d-flex">
                                    <div class="user justify-content-between d-flex">
                                        <div class="thumb">
                                            <img src="img/guild/c3.jpg" alt="">
                                        </div>
                                        <div class="desc">
                                            <h5><a href="#">애니</a></h5>
                                            <p class="date">2019.5.16___15:12</p>
                                            <p class="comment">
                                                안녕하세요 ^^
                                            </p>
                                        </div>
                                    </div>
                                    <div class="reply-btn">
                                           <a href="" class="btn-reply text-uppercase">대댓글달기</a> 
                                    </div>
                                </div>
                            </div>	
                            <div class="comment-list">
                                <div class="single-comment justify-content-between d-flex">
                                    <div class="user justify-content-between d-flex">
                                        <div class="thumb">
                                            <img src="img/guild/c4.jpg" alt="">
                                        </div>
                                        <div class="desc">
                                            <h5><a href="#">마리아</a></h5>
                                            <p class="date">2019.5.16___15:12</p>
                                            <p class="comment">
                                                안녕하세요 ^^
                                            </p>
                                        </div>
                                    </div>
                                    <div class="reply-btn">
                                           <a href="" class="btn-reply text-uppercase">대댓글달기</a> 
                                    </div>
                                </div>
                            </div>	
                            <div class="comment-list">
                                <div class="single-comment justify-content-between d-flex">
                                    <div class="user justify-content-between d-flex">
                                        <div class="thumb">
                                            <img src="img/guild/c5.jpg" alt="">
                                        </div>
                                        <div class="desc">
                                            <h5><a href="#">스미스</a></h5>
                                            <p class="date">2019.5.16___15:12</p>
                                            <p class="comment">
                                                안녕하세요 ^^
                                            </p>
                                        </div>
                                    </div>
                                    <div class="reply-btn">
                                           <a href="" class="btn-reply text-uppercase">대댓글달기</a> 
                                    </div>
                                </div>
                            </div>	                                             				
                        </div>
                        <div class="comment-form">
                            <h4>댓글달기</h4>
                            <form>
                                <div class="form-group form-inline">
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control mb-10" rows="5" name="message" placeholder="내용을 입력해주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '내용을 입력해주세요'" required=""></textarea>
                                </div>
                                <a href="#" class="primary-btn primary_btn">등록</a>	
                            </form>
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
        <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="vendors/isotope/isotope-min.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/mail-script.js"></script>
        <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
        <script src="vendors/counter-up/jquery.counterup.min.js"></script>
        <script src="js/theme.js"></script>

        <script>
            $('#대댓글달기').click(function() {
                $('.대댓글창').toggle('normal');
            });
        </script>
    </body>
</html>