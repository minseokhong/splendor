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
    <title>길드 생성하기</title>
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
	<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous"></script>
	
	<script>
		$(document).ready(function() {
			$('#create-guild_form').submit(function(e) {
				e.preventDefault();
				
				var guildName = $('#guild_name');
				var guildComm = $('#guild_content');
				var guildLogo = $('guild_img');
				var conScore = $('#required_total_score');
				var conPlay = $('#required_total_played');
				var conWinRate = $('#required_win_rate');
				
				if(guildName.val() == '') {
					alert('길드명을 입력해주세요');
					guildName.focus();
					
				} else if(guildComm.val() == '')  {
					guildComm.focus();
					alert('길드소개을 입력해주세요');
					
				} else {
					createGuild(guildName.val(), guildComm.val(), guildLogo.val(), 
							conScore.val(), conPlay.val(), conWinRate.val());
				}
			});
		})
		
		function createGuild(guildName, guildComm, guildLogo, conScore, conPlay, conWinRate) {
			$.ajax({
				type : "GET",
				url : "http://localhost:8000/createGuildForm",
				dataType : "text",
				data : {
					guildName : guildName,
					guildComm : guildComm,
					guildLogo : guildLogo,
					conScore : conScore,
					conPlay : conPlay,
					conWinRate : conWinRate
				},
				timeout : 100, 
				success : function(data) {
					if(data == 'true') {
						location.href = 'guild';
						alert('성공~~');
					}
				}
				, error : function() {
					$.ajax({
						type : "GET",
						url : "http://121.138.121.114:8000/createGuildForm",
						dataType : "text",
						data : {
							guildName : guildName,
							guildComm : guildComm,
							guildLogo : guildLogo,
							conScore : conScore,
							conPlay : conPlay,
							conWinRate : conWinRate
						},
						success : function(data) {
							if(data == 'true') {
								location.href = 'guild';
								alert('성공~~');
							}
						}
						, error : function() {
							alert("길드 데이터 서버가 응답하지 않습니다. 잠시후에 다시 시도해주세요.")
						}
					})
				}
			})
		}
	</script>


</head>
        
       <!--================Header Menu Area =================-->
    <c:set var="user" value="${user }"></c:set>
   		<c:if test="${user == null}"><jsp:include page="header.jsp"></jsp:include></c:if>
	
		<c:if test="${user != null}"><jsp:include page="loginHeader.jsp"></jsp:include></c:if>
   
        <!--================Header Menu Area =================-->
        
        <!--================Create-Guild Area =================-->
        <section class="container" id="create-guild">
            <div class="create-guild_title_area genric-btn e-large logging radius">길드 생성하기</div>
            <form class="form-group" id="create-guild_form" action="" method="do">
                <div class="create-guild_area">
                    <div class="create-guild_area_1 radius">
                        <div class="guild_title">
                            <span class="genric-subjectblock radius">길드명</span>
                            <input name="guild_name" id="guild_name" type="text" class="form-control" placeholder="길드 이름을 입력해 주세요.">
                        </div>
                        <div class="guild_content">
                            <span class="genric-subjectblock radius">길드 소개</span>
                            <textarea id="guild_content" name="guild_content" class="form-control" placeholder="내용을 입력해 주세요."></textarea>
                        </div>
                    </div>
                    <div class="create-guild_area_2 radius">
                        <div class="guild_image">
                            <span class="genric-subjectblock radius">대표 사진</span>
                            <input id="guild_img" name="guild_img" type="file" id="profile_image_input" hidden="hidden">
                            <div class="guild_profile_image_div">
                                <img class="guild_profile_image" src="img/screenshot_img2.png">
                            </div>
                            <p>※ 클릭하여 이미지 교체.</p>
                        </div>
                        <div class="guild_required">
                            <span class="genric-subjectblock radius">가입 조건 추가란</span>
                            <div class="guild_required_div">
                                <div class="select_result radius">
                                    <div class="result_header">통합 스코어 : </div>
                                    <div class="result_data" id="required_score_result">선택사항 없음</div>
                                    <div class="result_header">총 플레이 수 : </div>
                                    <div class="result_data" id="required_played_result">선택사항 없음</div>
                                    <div class="result_header">통합 승률 : </div>
                                    <div class="result_data" id="required_win_rate_result">선택사항 없음</div>
                                </div>
                                <div class="select_required">
                                    <div>
                                        <select name="required_score" class="nice-select" id="required_total_score" onchange=printRequiredScoreResult();>
                                            <!-- <option value="0">SCORE</option> -->
                                            <option value="0">없음</option>
                                            <option value="100">최소 100점</option>
                                            <option value="200">최소 200점</option>
                                            <option value="500">최소 500점</option>
                                        </select>
                                    </div>
                                    <div>
                                        <select name="required_played" class="nice-select" id="required_total_played" onchange=printRequiredPlayedResult();>
                                            <!-- <option value="0">총 플레이 수</option> -->
                                            <option value="0">없음</option>
                                            <option value="10">최소 10판</option>
                                            <option value="100">최소 100판</option>
                                            <option value="1000">최소 1000판</option>
                                        </select>
                                    </div>
                                    <div>
                                        <select name="required_win_rate" class="nice-select" id="required_win_rate" onchange=printRequiredWinRateResult();>
                                            <!-- <option value="0">승리 비율</option> -->
                                            <option value="0">없음</option>
                                            <option value="40">최소 40%</option>
                                            <option value="50">최소 50%</option>
                                            <option value="60">최소 60%</option>
                                            <option value="70">최소 70%</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="create-guild_button_area">
                    <div class="genric-btn info large radius" onclick="location.href='guild'">돌아가기</div>
                    <input type="submit" class="genric-btn success large radius" value="길드 생성">
                </div>
            </form>
        </section>
        <!--================End Create-Guild Area =================-->
        
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
        <!-- create-guild js -->
        <script src="js/create-guild.js"></script>
    </body>
</html>