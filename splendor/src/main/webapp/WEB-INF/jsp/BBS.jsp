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
   <link rel="stylesheet" href="css1/bootstrap.css">
     


   <link rel="stylesheet" href="css/bootstrap.css">
   <link rel="stylesheet" href="vendors/linericon/style.css">
   <link rel="stylesheet" href="css/font-awesome.min.css">
   <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
   <link rel="stylesheet" href="css/magnific-popup.css">
   <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
   <link rel="stylesheet" href="vendors/animate-css/animate.css">
   <link rel="stylesheet" href="vendors/flaticon/flaticon.css">
   <!-- main css -->
   <link rel="stylesheet" href="css/style.css">

<style>
   table > tbody > tr:hover {
    background-color: #d1f1f1;
    cursor: pointer;
    
    }
    .hiddenRow{
        padding: 0 4px !important;
        background-color: #eeeeee;
        font-size: 13px;
    }
</style>

</head>

<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
    
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
					
						<h2>FAQ</h2>
					</div>
				</div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->
        
        <!--================Blog Area =================-->
        <div class="container" style="margin-top: 100px; margin-bottom: 100px;">
            <div class="row">
                <table id="report" class="table" style="text-align: center; border:1px solid #dddddd;" >
                    <thead>
                        <tr>
                    

                        </tr>
                    </thead>
                    <tbody>
                        <tr data-toggle="collapse" data-target="#demo1" class="accordion-toggle">
                            <td>Q.</td>
                            <td style="font-weight: bold; color: blueviolet; ">[계정문의]</td>
                            <td style="text-align: left">아이디/비밀번호가 기억나지 않아요. 어떻게 찾을 수 있나요?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo1" style="text-align: center; color:cornflowerblue"> 생성한 아이디와 비밀번호를 잊어버린 경우 
                                    홈페이지 첫 화면의 [ID/PW 찾기] 버튼을 클릭 후 본인 인증을 통하여 
                                    생성된 모든 아이디를 찾을 수 있습니다.</div> 
                            </td>
                        </tr>

                        <tr data-toggle="collapse" data-target="#demo2" class="accordion-toggle">
                            <td>Q.</td>
                            <td style="font-weight: bold; color: blueviolet;">[계정문의]</td>
                            <td style="text-align: left">비밀번호는 어떻게 변경하나요?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo2" style="text-align: center; color:cornflowerblue"> 생성한 아이디와 비밀번호를 잊어버린 경우 
                                    홈페이지 첫 화면의 [정보 수정]을 클릭한 후 [비밀번호 변경] 메뉴에서 변경할 수 있습니다.
                                </div> 
                            </td>
                        </tr>
                        

                        <tr data-toggle="collapse" data-target="#demo3" class="accordion-toggle">
                            <td>Q.</td>
                            <td style="font-weight: bold; color: blueviolet;">[계정문의]</td>
                            <td style="text-align: left">개인정보 수정하려면 어떻게 하나요?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo3" style="text-align: center; color:cornflowerblue">
                                    로그인 화면에서 [정보 수정]을 클릭한 후 [개인정보 변경] 메뉴에서 변경할 수 있습니다.
                                </div> 
                            </td>
                        </tr>
                        
                        <tr data-toggle="collapse" data-target="#demo4" class="accordion-toggle">
                             <td>Q.</td>
                             <td style="font-weight: bold; color: blueviolet;">[계정문의]</td>
                            <td style="text-align: left">계정 탈퇴는 어떻게 하나요?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo4" style="text-align: center; color:cornflowerblue">
                                    홈페이지 첫 화면의 [정보 수정]을 클릭한 후 [회원탈퇴] 메뉴에서 본인 인증을 통해 탈퇴할 수 있으며,
                                     신청 즉시 처리되오니 신중히 판단하신 후 신청해주시기를 바랍니다.
                                </div> 
                            </td>
                        </tr>

                        <tr data-toggle="collapse" data-target="#demo5" class="accordion-toggle">
                            <td>Q.</td>
                            <td style="font-weight: bold; color: blueviolet;">[계정문의]</td>
                            <td style="text-align: left">탈퇴한 계정을 복구할 수 있나요?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo5" style="text-align: center; color:cornflowerblue">
                                    탈퇴 진행후 계정이 복구되지않습니다 신중한 선택 부탁드립니다.
                                </div> 
                            </td>
                        </tr>
                        <tr data-toggle="collapse" data-target="#demo7" class="accordion-toggle">
                                <td>Q.</td>
                                <td style="font-weight: bold; color: rgb(118, 192, 7);">[실행문의]</td>
                                <td style="text-align: left">건의 사항이 있어요!</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo7" style="text-align: center; color:cornflowerblue">
                                    R.N.G에 무한한 애정을 보여주시는 회원님께 진심으로 감사합니다.
                                    더 좋은 R.N.G가 되기 위해 건의 및 개선 사항이 있으시다면
                                    언제든 형식에 구애 없이 고객센터로 보내주세요~♥
                                    보내주시는 많은 좋은 의견들은 게임에 반영될 수 있도록 노력하겠습니다!
                                </div> 
                            </td>
                        </tr>       
                        <tr data-toggle="collapse" data-target="#demo6" class="accordion-toggle">
                            <td>Q.</td>
                            <td style="font-weight: bold; color: red;">[신고접수]</td>
                            <td style="text-align: left">이용 제한되었다고 하는데 왜 제한이 된건가요?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo6" style="text-align: center; color:cornflowerblue">
                                        이용약관 및 운영정책에 근거하여 부적절한 게임 이용 시
                                        해당 계정은 게임 이용이 제한될 수 있습니다.<br>
                                        정확한 확인을 위하여 고객님의 게임 닉네임을 기재하여
                                        [ 고객센터 > 1:1 문의 ]를 통하여 접수하여 주신다면 확인 후 안내 드리겠습니다.<br>
                                        
                                        다만, 해당 계정의 본인이 직접 문의를 접수해야만
                                        안내를 드릴 수 있으니 이 점 참고 부탁 드립니다.
                                    </div> 
                                </td>
                            </tr>
                        </tbody>
                            
                </table>
                
            </div>
                    <div>
                        <a class="primary_btn pull-right" href="나문의">1:1문의</a>
                    </div>
        </div>
        <!--================Blog Area =================-->
        
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
  

    </body>
</html>