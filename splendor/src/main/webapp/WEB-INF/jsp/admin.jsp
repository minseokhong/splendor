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
    <style>
        .nice-select {
            float: right;
            color: black;
            border: 0;
        }
    </style>
    
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
                    
                    <h2>회원관리</h2>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================boardform Area =================-->
    <tr></tr>

    <div class="container radius"
        style="position:relative; border-radius: 5px; width:1500px; left:50% ; margin-left:-550px; margin-top:100px; margin-bottom: 100px; background-color: #e6e6e6;
         color:rgb(151, 137, 137);">
        <table class="table table-bordered">

            <tbody>

                <h2 style="color:#060606; display: inline; font-size: 20px; padding: 7px; margin-left: 10px; ">유저 검색</h2>
                <form action="write_ok.jsp" method="post" encType="multiplart/form-data">

                                        
                    <input type="text" placeholder="　닉네임 입력" name="searchuser" style="font-size:1em; margin-top: 15px; margin-bottom: -2px; margin-left:800px; border-radius: 5px;">
                    <input type="image" src="img/magnifier.png" style="font-size: 1.2em; margin-left:10px;" height="20"; width="20"; border="0">

                    <hr height="10px"; width="1100px" align="center" color="gray" >
                   
                    <tr align="center" style="color:black; font-weight: bold; margin-left: 80px; position:relative; background-color: white; width: 900px;">                     
                        
                        <th >닉네임</th>                          
                                                
                        <th style="width: 500px;">차단 사유 입력</th>
                                                
                        <th style="width: 100px;">신고</th>
                                                
                        <th>관리</th>
                              
                    </tr>

                    <tr align="center" style="color:black;">
                        <td>
                            헬프엘프
                        </td>

                        <td>
                            <input type="text" placeholder="　차단사유 입력" style="width: 500px;">
                        </td>

                        <td>
                            0
                        </td>

                        <td>
                                <input type="button" value="차단"
                                style="margin-right: 35px; margin-left:20px;  width:50px; height:30px;  background-color: dodgerblue; border-radius: 5px; border: 0; outline: 0; color: white"
                                ; onclick="alert('작성완료'); location.href='clicktopost.html'" class="pull-right" />
                                <input type="button" value="신고"
                                style="margin-left: -150px; width:50px; height:30px;  background-color: dodgerblue; border-radius: 5px; border: 0; outline: 0; color: white"
                                ; onclick="alert('작성완료'); location.href='clicktopost.html'" class="pull-right" />  

                        </td>

                    </tr>

                    <tr align="center" style="color:black;">
                            <td>
                                헬프미
                            </td>
    
                            <td>
                                <input type="text" placeholder="　차단사유 입력" style="width: 500px;">
                            </td>
    
                            <td>
                                0
                            </td>
    
                            <td>
                                    <input type="button" value="차단"
                                    style="margin-right: 35px; margin-left:20px;  width:50px; height:30px; background-color: dodgerblue; border-radius: 5px; border: 0; outline: 0; color: white"
                                    ; onclick="alert('작성완료'); location.href='clicktopost.html'" class="pull-right" />
                                    <input type="button" value="신고"
                                    style="margin-left: -100px; width:50px; height:30px;  background-color: dodgerblue; border-radius: 5px; border: 0; outline: 0; color: white"
                                    ; onclick="alert('작성완료'); location.href='clicktopost.html'" class="pull-right" />  
    
                            </td>
    
                        </tr>

                        <tr align="center" style="color:black;">
                                <td>
                                    헤헤헤헤헬프으으
                                </td>
        
                                <td>
                                    <input type="text" placeholder="　차단사유 입력" style="width: 500px;">
                                </td>
        
                                <td>
                                    2
                                </td>
        
                                <td>
                                        <input type="button" value="차단"
                                        style="margin-right: 35px; margin-left:20px;  width:50px; height:30px;  background-color: dodgerblue; border-radius: 5px; border: 0; outline: 0; color: white"
                                        ; onclick="alert('작성완료'); location.href='clicktopost.html'" class="pull-right" />
                                        <input type="button" value="신고"
                                        style="margin-left: -150px; width:50px; height:30px;  background-color: dodgerblue; border-radius: 5px; border: 0; outline: 0; color: white"
                                        ; onclick="alert('작성완료'); location.href='clicktopost.html'" class="pull-right" />  
        
                                </td>
        
                            </tr>    
                            
                
                </form>
            </tbody>
        </table>
        <br>
        
        <table>
            <tbody2>
                <form>
                    <div>
                        <h2 style="color:#060606; display:inline-block; font-size: 20px; padding: 7px; margin-left: 10px; ">차단 유저 목록</h2>
                        <form action="write_ok.jsp" method="post" encType="multiplart/form-data"></form>

                        
                      
                        <select name="search" style="float:right;" >
                            <option values='0' selected>선　택</option>
                            <option value='2' style='color: black'>닉네임</option>
                            <option value='1' style='color: black'>신고수</option>
                            <option value='1' style='color: black'>해제일</option>
                        </select>
                    
                                                
                        <hr height="10px"; width="1100px" align="center" color="gray" >

                        <tr align="center" style="color:black; font-weight: bold; margin-left: 80px; position:relative; background-color: white; width: 900px; height: 40px;">                     
                        
                                <th style="width: 50px;">선택</th>                          
                                                        
                                <th style="width: 200px;">닉네임</th>
                                                        
                                <th style="width: 500px;">차단 사유</th>
                                                        
                                <th style="width: 200px;">신고</th>

                                <th style=" width:150px;">차단 해제일</th>

                                <th style=" width:100px;">관리</th>
                                      
                            </tr>
        
                            <tr align="center" style="color:black; height: 50px;">
                                <td>
                                    <input type="checkbox" style="background-color:white";>
                                </td>
        
                                <td>
                                    갓민서
                                </td>
        
                                <td>
                                    폭력적인 게시글 공유
                                </td>
        
                                <td>
                                     52
                                </td>

                                <td>
                                    2019.04.16
                                </td>

                                <td>
                                        <input type="button" value="차단해제"
                                        style="margin-right: 15px; width:70px; height:30px;  background-color: darkgray; border-radius: 5px; border: 0; outline: 0; color: white"
                                        ; onclick="alert('작성완료'); location.href='clicktopost.html'" class="pull-right" />  
                                </td>
        
                            </tr>

                            <tr align="center" style="color:black; height: 50px;">
                                    <td>
                                        <input type="checkbox" style="background-color:white";>
                                    </td>
            
                                    <td>
                                        애꾸낙지
                                    </td>
            
                                    <td>
                                        지속적인 악성 댓글 작성
                                    </td>
            
                                    <td>
                                         83
                                    </td>
    
                                    <td>
                                        2019.04.16
                                    </td>
    
                                    <td>
                                            <input type="button" value="차단해제"
                                            style="margin-right: 15px; width:70px; height:30px;  background-color: darkgray; border-radius: 5px; border: 0; outline: 0; color: white"
                                            ; onclick="alert('작성완료'); location.href='clicktopost.html'" class="pull-right" />  
                                    </td>
            
                                </tr>

                                <tr align="center" style="color:black; height: 50px;">
                                        <td>
                                            <input type="checkbox" style="background-color:white";>
                                        </td>
                
                                        <td>
                                            24세부장님
                                        </td>
                
                                        <td>
                                            지속적인 노잼개그
                                        </td>
                
                                        <td>
                                             26
                                        </td>
        
                                        <td>
                                            2019.04.16
                                        </td>
        
                                        <td>
                                                <input type="button" value="차단해제"
                                                style="margin-right: 15px; width:70px; height:30px;  background-color: darkgray; border-radius: 5px; border: 0; outline: 0; color: white"
                                                ; onclick="alert('작성완료'); location.href='clicktopost.html'" class="pull-right" />  
                                        </td>
                                        
                                        
                                    </tr>

                                    <td>
                                       
                                       <tr>
                                           
                                        

                                          <th>
                                              
                                          </th>

                                        

                                       </tr>
                                        

                                    </td>
                                    
                        </div>             
                                   
                </form> 
                               
            </tbody2>
          </table>
          <hr height="10px"; width="1100px" align="center" color="gray" >
          
                <input type="button" value="일괄해제"
                style="margin-right: 15px; width:70px; height:30px;  background-color: dodgerblue; border-radius: 5px; border: 0; outline: 0; color: white"
                ; onclick="alert('작성완료'); location.href='clicktopost.html'" class="pull-right" />  
                <br>
                <br>
                
                <pagelist>
                    <input type="button" value="<<"
                    style="width :35px; height:35px; margin-left: 380px; border-radius: 5px; border: 0; outline: 0; color: black;"
                    >
                    <input type="button" value="<"
                    style="width :35px; height:35px; border-radius: 5px; border: 0; outline: 0; color: black;"
                    >
                    <input type="button" value="1"
                    style="width :35px; height:35px; border-radius: 5px; border: 0; outline: 0; color: black;"
                    >
                    <input type="button" value="2"
                    style="width :35px; height:35px; border-radius: 5px; border: 0; outline: 0; background-color: dodgerblue; color: black;"
                    >
                    <input type="button" value="3"
                    style="width :35px; height:35px; border-radius: 5px; border: 0; outline: 0; color: black;"
                    >
                    <input type="button" value="4"
                    style="width :35px; height:35px; border-radius: 5px; border: 0; outline: 0; color: black;"
                    >
                    <input type="button" value="5"
                    style="width :35px; height:35px; border-radius: 5px; border: 0; outline: 0; color: black;"
                    >
                    <input type="button" value=">"
                    style="width :35px; height:35px; border-radius: 5px; border: 0; outline: 0; color: black;"
                    >
                    <input type="button" value=">>"
                    style="width :35px; height:35px; border-radius: 5px; border: 0; outline: 0; color: black;"
                    >
                </pagelist>
                <br>
                <br>
            
         
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