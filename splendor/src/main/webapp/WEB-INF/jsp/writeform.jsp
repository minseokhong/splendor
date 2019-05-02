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
    <tr></tr>

    <div class="container radius"
        style="position:relative; border-radius: 5px; width:1000px; left:50% ; margin-left:-500px; margin-top:100px; margin-bottom: 100px; background-color:
        /* antiquewhite; */
        #e6e6e6;
         color:rgb(151, 137, 137);">
        <table class="table table-bordered">

            <tbody>

                <h2 style="color:rgb(151, 137, 137); text-align: center; padding: 15px;"> 글 작성</h2>
                <form action="write_ok" method="post" encType="multiplart/form-data">
                    
                    <tr>
                        <th>제목　<input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"
                                style="display: inline; width: 90%" /></th>


                               
                    </tr>

                        
                    <tr>
                        <th>내용　<input type=file name='file1' style='display: none;'>
                            <img src='img/pictures.png' align="right" width="30" height="35" name='find' id='find'
                                border='0'
                                onclick='document.all.file1.click(); document.all.file2.value=document.all.file1.value'>

                            <img src='img/video-camera.png' style="margin-right: 15px;" align="right" width="30"
                                height="35" name='find' id='find' border='0'
                                onclick='document.all.file1.click(); document.all.file2.value=document.all.file1.value'>



                        </th>

                    <tr>
                        <th><textarea rows="15" cols="10" placeholder="내용을 입력하세요. " name="content" class="form-control"
                                style=" width: 90%; margin-left: 40px;
                                    "></textarea></th>
                    </tr>



                    </tr>
                    <th>
                        <secret style="margin-left: 850px;">비밀글</secret>　
                        <input type="checkbox" id="secretcheck" name="비밀글" />
                    </th>
                    <tr>
                        <th> <input type="button" value="글쓰기"
                                style=" width:100px; background-color: dodgerblue; border-radius: 5px;border: 0; outline: 0; color: white"
                                ; a href="freeboard" onclick="alert('작성완료');" class="pull-right large" />
                            <input type="button" value="취　소"
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