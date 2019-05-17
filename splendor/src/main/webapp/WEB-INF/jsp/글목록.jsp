<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="img/favicon.png" type="image/png">
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
    
    <script
  src="https://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>
    
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
            <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0"
                data-background=""></div>
            <div class="container">
                <div class="banner_content text-center">
                    <div class="page_link">
                        <a href="index">홈페이지</a>
                        <a href="freeboard">자유게시판</a>
                    </div>
                    <h2>자유게시판</h2>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================boardform Area =================-->

    <div class="container radius"
        style="position:relative; border-radius: 5px; width:1000px; left:50% ; margin-left:-500px; margin-top:100px; margin-bottom: 100px; background-color:
        /* antiquewhite; */
       #F5F5F5;
         color:rgb(151, 137, 137);">
         <a class="btn btn-primary" href="자유게시판" style="background-color: white; color: black">목록으로</a>
        <form id="write_ok" method="post" encType="multipart/form-data">
        
        <table class="table table-bordered text-center">
			<thead>
				<tr>
                    <th colspan="3"> 
					    <h2 style="color:rgb(151, 137, 137); text-align: center; padding: 15px; color: 	black"> ${detail.board_title}</h2>
					</th>
				</tr>
			</thead>
            <tbody>
            		 <tr style="text-align: right">
                    	<td height="30">
                    	글쓴이:
                    	<span class="member" style="color: #4169E1">
                    		${detail.board_writer}
                    	</span>
                    	날짜:
                    	<span class="dateTime" style="color: #4169E1">${detail.board_date}</span>
                    	조회:
                    	<span class="boardcount" style="color: #4169E1">${detail.board_count}</span>
                    	</td>
                    	
                       
                    </tr>

                        
                    <tr>
                        <td colspan="3"> 
                        
                        		<p style="padding-top: 20px; ">${detail.board_content}</p>
                        </td>
                    </tr>
                    


                    <tr>
                        <td colspan="3"> 
                        	<input type="submit" value="좋아요" class="btn btn-primary"  style="color:	#FF0000 ; background-color: white;"/>
                            <input type="button" value="싫어요" class="btn btn-primary " style="color:	#4169E1 ; background-color: white;" />

                        </td>
                    </tr>

            </tbody>
        </table>
        </form>
    </div>





    <!--================guild Area =================-->
    <!--================guild Area =================-->

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