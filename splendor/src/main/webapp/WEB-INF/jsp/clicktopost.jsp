<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <a href="index.html">홈페이지</a>
                        <a href="freeboard.html">자유게시판</a>
                    </div>
                    <h2>자유게시판</h2>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================boardform Area =================-->
    <tr></tr>

    <div class="container"
        style= "border-radius:5px; position:relative; width:1000px; left:50% ; margin-left:-500px; margin-top:100px; margin-bottom: 100px; background-color:#e6e6e6; color:rgb(151, 137, 137);">
        <table class="table table-bordered">

            <tbody>
                <form action="write_ok.jsp" method="post" encType="multiplart/form-data">
                    <tr>
                        <th style="border-radius:5px; background-color:white; color:black; text-align: center;">${detail.board_title }</th>


                    </tr>
                    
                    <tr>
                        <h5 style="padding: 5px;">No.${detail.board_num}</h5>
                    </tr>


                    <tr>
                        <th>
                            <img src="img/calendar (1).png" style=" margin-left:20px;" align="left" width="15" height="20">
                            <w_date style="color:black; margin-left: 10px;">2019.04.11 </w_date>
                            <img src="img/edit.png" style=" margin-left:300px;" width="15" height="20">
                            <nick style="color:black; margin-left: 10px;">${detail.board_writer }</nick>
                            <img src="img/cartoon-happy-eyes.png" style=" margin-left:370px;" width="15" height="20">
                            <count style="color:black; margin-left:10px;">${detail.board_count }</count>


                        </th>

                       


                    <tr>
                        <th style="background-color: #e6e6e6; padding: 40px; ">
                            <content name=" content"  
                                style="word-break:break-all; font: small; color: darkblue; display: inline; ">
                                <div style="width: 850px; border-radius: 5px; background: #fff; border: 1; border-color: lightgray; margin: -20px auto; padding: 60px 10px;">
                       				${detail.board_content }

                                </div>
                                



                            </content>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <img src="img/save.png" style=" margin-left: 20px; " width="20" height="20">
                            <downfile style="color: black; margin-left: 5px">파일이름.jpg</downfile>
                            
                        </th>
                    </tr>

                    <tr>
                        <th style="background-color:white; border-radius: 5px; background-color: white;">
                                <check style="color:black; margin-left: 5px;" onclick="location.href='나문의'">신고하기</check>
                                <img onclick="location.href='나문의'" src="img/siren.png" style=" margin-left:20px;" align="left" width="25" height="25">

                                <img src="img/like.png" style=" margin-left:670px;" width="25" height="25">
                                <like style="color:black; margin-left: 5px;">100</like>
                                
                                
                                <img src="img/thumbs-down-silhouette.png" style=" margin-left:15px;" width="25" height="25">
                                <count style="color:black; margin-left:5px;">100</count>  
                        </th>
                    </tr>

                    <tr>


                        <tr>
                            
                        </tr>
                        <th>
                                                        
                                <div>
                                    <span style=" display: inline-block; text-align: center; margin-left: 20px; width: 100px; color: red;">민경훈</span> <div style=" display: inline-block; word-break:break-all; border-radius: 5px; margin-left: -20px; width: 760px; background: #fff; border: 1; border-color: lightgray; color:black;"> 좋아요 눌러주세요~~~</div>
                                    <input type="button" value="답글" onclick=""; style="background-color: dodgerblue; border-radius: 5px;border: 0; outline: 0; color: white "
                                    ;">

                                    <div></div>
                                    
                                    
                                    <span style=" display: inline-block; text-align: center; margin-left: 20px; width: 100px; color: red;">민경훈안티</span> <div style=" display: inline-block; word-break:break-all; border-radius: 5px; margin-left: -20px; width: 760px; background: #fff; border: 1; border-color: lightgray; color:black;"> ㅡㅡㅗ----------------------민경훈아직도 노래함?</div>
                                    <input type="button" value="답글" onclick=""; style="background-color: dodgerblue; border-radius: 5px;border: 0; outline: 0; color: white "
                                    ;">

                                    <span style=" display: inline-block; text-align: center; margin-left: 20px; width: 100px; color: red;">강호동</span> <div style=" display: inline-block; word-break:break-all; border-radius: 5px; margin-left: -20px; width: 760px; background: #fff; border: 1; border-color: lightgray; color:black;"> 아형안나옴?????</div>
                                    <input type="button" value="답글" onclick=""; style="background-color: dodgerblue; border-radius: 5px;border: 0; outline: 0; color: white "
                                    ;">

                                    <span style=" display: inline-block; text-align: center; margin-left: 20px; width: 100px; color: red;">이수근</span> <div style=" display: inline-block; word-break:break-all; border-radius: 5px; margin-left: -20px; width: 760px; background: #fff; border: 1; border-color: lightgray; color:black;"> 마카오갈사람 모집함~~ 손!</div>
                                    <input type="button" value="답글" onclick=""; style="background-color: dodgerblue; border-radius: 5px;border: 0; outline: 0; color: white "
                                    ;">

                                    <span style=" display: inline-block; text-align: center; margin-left: 40px; width: 100px; color: red;">⤷ 포돌이</span> <div style=" display: inline-block; word-break:break-all; border-radius: 5px; margin-left: -20px; width: 760px; background: #fff; border: 1; border-color: lightgray; color:black;"> ????????????????</div>
                                    <input type="button" value="답글" onclick=""; style="background-color: dodgerblue; border-radius: 5px;border: 0; outline: 0; color: white "
                                    ;">

                                    <span style=" display: inline-block; text-align: center; margin-left: 50px; width: 100px; color: red;">⤷ 이수근</span> <div style=" display: inline-block; word-break:break-all; border-radius: 5px; margin-left: -20px; width: 760px; background: #fff; border: 1; border-color: lightgray; color:black;"> 회원탈퇴 요청합니다.</div>
                                    <input type="button" value="답글" onclick=""; style="background-color: dodgerblue; border-radius: 5px;border: 0; outline: 0; color: white "
                                    ;">

                                </div>


                               


                                <textarea rows="3" cols="5" placeholder="인터넷은 우리가 함께 만들어가는 소중한 공간입니다.                                                                                                  댓글 작성 시 타인에 대한 배려와 책임을 담아주세요." name="comment" class="form-control"
                                style="display: inline; width: 85%; margin-top: 20px; margin-left: 40px;"></textarea>
                                
                                <input type="button" value="등록" style=" margin-top: 20px; width:100px; height: 85px; background-color: rgb(230, 101, 101); border-radius: 5px; border: 0; outline: 0; color: white"
                                ; a href="freeboard.html" onclick="alert('작성완료');" class="pull-right " />
                        
                            
                        </th>

                    </tr>

                    <tr>
                        <th> 
                           
                                 <input type="button" value="글쓰기"
                                style="  width:100px; background-color: dodgerblue; border-radius: 5px;border: 0; outline: 0; color: white"
                                ; onclick="location.href='writeform.html'" class="pull-right large" />
                            
                         
                                <input type="button" value="수정하기"
                                style=" width:100px; margin-right: 10px;background-color: dodgerblue; border-radius: 5px;border: 0; outline: 0; color: white"
                                ; onclick="location.href='midification.html'" class="pull-right large" />
                           
                                <input type="button" value="목　록"
                                style=" width:100px; background-color: dodgerblue; border-radius: 5px; border: 0; outline: 0; color: white"
                                ; onclick="location.href=''" class="pull-left large" />
                            
                                <input type="button" value="삭　제"
                                style=" width:100px; margin-left: 10px; background-color: dodgerblue; border-radius: 5px; border: 0; outline: 0; color: white"
                                ; onclick="location.href=''" class="pull-left large" />

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