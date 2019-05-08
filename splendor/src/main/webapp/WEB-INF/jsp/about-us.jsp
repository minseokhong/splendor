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
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="vendors/animate-css/animate.css">
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
    <body class="about_page">

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
                  <h2>게임 소개</h2>
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
                     <h6>스플랜더</h6>
                     <h1>최강의 보드게임<br>웹사이트에서 즐겨보자!</h1>
                     <p>보석 상인이 되어 금, 에머랄드, 루비, 다이아몬드, 사파이어를 목적에 맞게 수집한다. 
                        보드게임 긱에서는 96위(2017년 7월 기준)이다. 
                        명작 상트 페레르부르크를 상기시키는 간단한 시스템과 쉬운 규칙, 치밀한 전략성으로 누구에게나 사랑받을 조건을 갖춘 게임이다.</p>
                        

                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="video-container">
                     <iframe width="479" height="506" src="https://www.youtube.com/embed/78Ga9vT3eIE"
                      frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                      allowfullscreen>
                     </iframe>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--================End About Us Area =================-->
   
      <section class="blog_area single-post-area section_gap">
            <div class="container">
               <div class="row">
                  <div class="col-lg-22 posts-list">
                     <div class="single-post row">
                        <div class="col-lg-9 col-md-9 blog_details">
                           <h2>메뉴얼</h2>
              
                           <p class="excert">
                                 제목은 스플랜더 필승 전략 탐구라고 했지만, 처음에 뭐하고 다음에 뭐하고 이렇게 이렇게 하면 필승!! 이런건 아쉽게도 불가능 합니다.



                                 스플랜더는 세팅 부터 매판 같은 게임이 아니고 서로가 영향을 주는 인터액션 게임이기 때문이지요.
                                 
                                 
                                 
                                 그렇다고 '이런 형태의 전략이 좋아요'라고 말하기에도 힘든 게임입니다.
                                 
                                 아래에 전략의 방향을 2개(귀족우선전략, 3티어 고효율전략)을 예시해 놓았지만, 그 전략도 결국엔 마지막의 운영 전략을 기본으로 터득하고 있어야 하기 때문입니다.
                                 
                                 
                                 
                                 스플랜더 전략 탐구를 위해 여러가지를 시도해 봤지만 예를 들어 2티어 중득점 다매 전략을 시도해 보았지만, 생각 보다 승률이 좋지 않아 폐기한 전략 입니다.
                                 <br>
								<br>
								<br>
								<br>
								<br>
								<br>
                                 
                                 
                           </p>
                           
                        </div>
						
                        <div class="col-lg-12">
                        <div class="col-lg-12">
                           <div class="feature-img">
                              <img class="img-fluid" src="img/blog/feature-img2.jpg" alt="">
                           </div>                           
                        </div>
                        <div class="col-lg-9 col-md-9 blog_details">
                              <h2>2인플과 3인플 4인플 전략의 변화</h2>
                     
                           <div class="quotes">
                                 보석 토큰 : 에메랄드(녹색), 다이아몬드(백색), 사파이어(청색), 줄마노(흑색), 루비(적색) 토큰이 각각 7개 씩 있고, 황금(황색)[1]은 5개가 있다. 총 40개.<br>
                                 개발 카드 : 1단계 카드(녹색) 40장, 2단계 카드(황색) 30장, 3단계 카드(청색) 20장으로 총 90장이 있다. 1단계에선 각 보석별로 8장씩, 2단계는 6장씩, 3단계는 4장씩 구성되어 있다.<br>
                                 귀족 타일 : 총 10개로 실존했던 역사인물들로 구성되어 있다.                              
                           </div>
                              <p class="excert">
                                    기본적인 전략을 비슷하게 갈 수 있지만 인원수에 따라 최대 사용 가능한 보석의 수가 달라서 다른 양상으로 플레이가 될 수 있습니다.



                                    특히 아래에 소개된 3티어 고득점 전략은 인원수별 운용이 크게 달라져야 합니다.
                                <br>
								<br>
								<br>
								<br>
								
								
								 </p>
                              
                        </div>
                           
                           <div class="col-lg-9 col-md-9 blog_details">
                                 <h2>2인플과 3인플 4인플 전략의 변화</h2>
                                 <p class="excert">
                                       기본적인 전략을 비슷하게 갈 수 있지만 인원수에 따라 최대 사용 가능한 보석의 수가 달라서 다른 양상으로 플레이가 될 수 있습니다.
   
   
   
                                       특히 아래에 소개된 3티어 고득점 전략은 인원수별 운용이 크게 달라져야 합니다.
                                 <br>
								<br>
								<br>
								<br>
								<br>
								
                                 </p>
                                 
                           </div>
                        


                           <div class="row">
                              <div class="col-6">
                                 <img class="img-fluid" src="img/blog/feature-img2.jpg" alt="">
                              </div>
                              <div class="col-6">
                                 <img class="img-fluid" src="img/blog/feature-img2.jpg" alt="">
                              </div>   
                              <div class="col-lg-12 mt-25">
                              	<h2>2인플 혹은 4인플이라면?</h2>
                                 <p>
                                 2인플 일 때는 한 색상의 보석이 최대 4개 밖에 안되기 때문에 물론 황금 3개를 가져와 같은 방식으로 플레이가 가능하긴 하지만,<br>
                                                        가능하면 1~3개 정도의 원하는 색상의 저렴한 카드를 먼저 구하고, 진행하는 플레이가 필요 합니다.<br>
								4인플인 경우 역시 마지막 순서라면 첫 라운드 2개를 가져오기 힘들 수 있으니 개발 카드를 먼저 확보하는 것이 좋을 수 있습니다.
								<br>
								<br>
								<br>
								<br>
								<br>

                                 </p>
                              </div>                           
                           </div>
                           <div class="row">
                              <div class="col-6">
                                 <img class="img-fluid" src="img/blog/feature-img2.jpg" alt="">
                              </div>
                              <div class="col-6">
                                 <img class="img-fluid" src="img/blog/feature-img2.jpg" alt="">
                              </div>   
                              <div class="col-lg-12 mt-25">
                              	<h2 style="color:#DB7093 ">※많이 해보기※</h2>
                                 <p>
                                 	최종적으로 전략을 잘 쓰기 위해서는 많이 해봐야 합니다. 특히 3티어 고효율 고득점 전략의 경우는 제가 하는걸 보고 따라하려던 분에서 봤듯이 컨셉은 알아 봤지만, 잘 적용하지 못하는 것을 보았습니다.<br>
									마구잡이로 고효율 카드를 킵하고, 보석을 모으는 방식을 사용했기 때문에, 실패한 경향을 볼 수 있었습니다.<br> 
									예를 들어 킵에만 몰두한 나머지 3카드를 킵하는 바람에 더 이상 킵을 못하는 상황이 생겼고, 그 상황에 구매도 못하고, 원하는 색상의 보석은 품절 사태라 이 후 액션이 꼬이게 되었습니다.<br>
									일일이 이럴땐 이렇게, 저럴땐 저렇게 나열하기에는 상황이 너무 많아서 힘들듯 합니다. 많이 해보는 방법이 좋기는 하지만, 상황이 여의치 않을 수 있습니다.<br>
									전략을 탐구할 때는 개인적으로는 스플랜더 앱으로 (모바일/PC 스팀) 테스트해보는 것이 상당히 도움이 됩니다.<br>
									비록 유료앱이기는 하지만 자주 할인을 하기 때문에, 할인때 구매하여 전략을 연습해 보도록 하세요.<br>
									AI가 그렇게 잘하거나 하는 것은 아니지만, 그런 AI에도 이기지 못하는 전략이나 선택은 배제 시킬 수 있으며, 잘 먹히는 전략이나 상황에 따라 최적의 선택을 익히는데는 상당한 도움이 됩니다.<br>
									<br>
									이런 저런 다양한 설명을 했지만 결국엔 스타크래프트나, 리그오브레전드도 그렇듯, 많이 해봐야한다는 결론이 똑같은 점에서 포인트 바이 포인트 게임은 결국 다양한 경험이 필요한 듯 합니다.<br> 
                                 </p>
                              </div>                           
                           </div>
                        </div>
                     </div>
                     
                  </div>
                  
               </div>
            </div>
         </section>
         <!--================Blog Area =================-->
      <!--========== Start Testimonials Area ==================-->
   
   
      
   
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
      <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
      <script src="vendors/counter-up/jquery.counterup.min.js"></script>
      <script src="js/mail-script.js"></script>
      <!--gmaps Js-->
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
      <script src="js/gmaps.min.js"></script>
      <script src="js/theme.js"></script>
   </body>
</html>