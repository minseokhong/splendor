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
                  <h2>���� �Ұ�</h2>
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
                     <h6>���÷���</h6>
                     <h1>�ְ��� �������<br>������Ʈ���� ��ܺ���!</h1>
                     <p>���� ������ �Ǿ� ��, ���Ӷ���, ���, ���̾Ƹ��, �����̾ ������ �°� �����Ѵ�. 
                        ������� �㿡���� 96��(2017�� 7�� ����)�̴�. 
                        ���� ��Ʈ �䷹���θ�ũ�� ����Ű�� ������ �ý��۰� ���� ��Ģ, ġ���� ���������� �������Գ� ������� ������ ���� �����̴�.</p>
                        

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
                           <h2>�޴���</h2>
              
                           <p class="excert">
                                 ������ ���÷��� �ʽ� ���� Ž����� ������, ó���� ���ϰ� ������ ���ϰ� �̷��� �̷��� �ϸ� �ʽ�!! �̷��� �ƽ��Ե� �Ұ��� �մϴ�.



                                 ���÷����� ���� ���� ���� ���� ������ �ƴϰ� ���ΰ� ������ �ִ� ���;׼� �����̱� ����������.
                                 
                                 
                                 
                                 �׷��ٰ� '�̷� ������ ������ ���ƿ�'��� ���ϱ⿡�� ���� �����Դϴ�.
                                 
                                 �Ʒ��� ������ ������ 2��(�����켱����, 3Ƽ�� ��ȿ������)�� ������ ��������, �� ������ �ᱹ�� �������� � ������ �⺻���� �͵��ϰ� �־�� �ϱ� �����Դϴ�.
                                 
                                 
                                 
                                 ���÷��� ���� Ž���� ���� ���������� �õ��� ������ ���� ��� 2Ƽ�� �ߵ��� �ٸ� ������ �õ��� ��������, ���� ���� �·��� ���� �ʾ� ����� ���� �Դϴ�.
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
                              <h2>2���ð� 3���� 4���� ������ ��ȭ</h2>
                     
                           <div class="quotes">
                                 ���� ��ū : ���޶���(���), ���̾Ƹ��(���), �����̾�(û��), �ٸ���(���), ���(����) ��ū�� ���� 7�� �� �ְ�, Ȳ��(Ȳ��)[1]�� 5���� �ִ�. �� 40��.<br>
                                 ���� ī�� : 1�ܰ� ī��(���) 40��, 2�ܰ� ī��(Ȳ��) 30��, 3�ܰ� ī��(û��) 20������ �� 90���� �ִ�. 1�ܰ迡�� �� �������� 8�徿, 2�ܰ�� 6�徿, 3�ܰ�� 4�徿 �����Ǿ� �ִ�.<br>
                                 ���� Ÿ�� : �� 10���� �����ߴ� �����ι���� �����Ǿ� �ִ�.                              
                           </div>
                              <p class="excert">
                                    �⺻���� ������ ����ϰ� �� �� ������ �ο����� ���� �ִ� ��� ������ ������ ���� �޶� �ٸ� ������� �÷��̰� �� �� �ֽ��ϴ�.



                                    Ư�� �Ʒ��� �Ұ��� 3Ƽ�� ����� ������ �ο����� ����� ũ�� �޶����� �մϴ�.
                                <br>
								<br>
								<br>
								<br>
								
								
								 </p>
                              
                        </div>
                           
                           <div class="col-lg-9 col-md-9 blog_details">
                                 <h2>2���ð� 3���� 4���� ������ ��ȭ</h2>
                                 <p class="excert">
                                       �⺻���� ������ ����ϰ� �� �� ������ �ο����� ���� �ִ� ��� ������ ������ ���� �޶� �ٸ� ������� �÷��̰� �� �� �ֽ��ϴ�.
   
   
   
                                       Ư�� �Ʒ��� �Ұ��� 3Ƽ�� ����� ������ �ο����� ����� ũ�� �޶����� �մϴ�.
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
                              	<h2>2���� Ȥ�� 4�����̶��?</h2>
                                 <p>
                                 2���� �� ���� �� ������ ������ �ִ� 4�� �ۿ� �ȵǱ� ������ ���� Ȳ�� 3���� ������ ���� ������� �÷��̰� �����ϱ� ������,<br>
                                                        �����ϸ� 1~3�� ������ ���ϴ� ������ ������ ī�带 ���� ���ϰ�, �����ϴ� �÷��̰� �ʿ� �մϴ�.<br>
								4������ ��� ���� ������ ������� ù ���� 2���� �������� ���� �� ������ ���� ī�带 ���� Ȯ���ϴ� ���� ���� �� �ֽ��ϴ�.
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
                              	<h2 style="color:#DB7093 ">�ظ��� �غ����</h2>
                                 <p>
                                 	���������� ������ �� ���� ���ؼ��� ���� �غ��� �մϴ�. Ư�� 3Ƽ�� ��ȿ�� ����� ������ ���� ���� �ϴ°� ���� �����Ϸ��� �п��� �õ��� ������ �˾� ������, �� �������� ���ϴ� ���� ���ҽ��ϴ�.<br>
									�������̷� ��ȿ�� ī�带 ŵ�ϰ�, ������ ������ ����� ����߱� ������, ������ ������ �� �� �־����ϴ�.<br> 
									���� ��� ŵ���� ������ ������ 3ī�带 ŵ�ϴ� �ٶ��� �� �̻� ŵ�� ���ϴ� ��Ȳ�� �����, �� ��Ȳ�� ���ŵ� ���ϰ�, ���ϴ� ������ ������ ǰ�� ���¶� �� �� �׼��� ���̰� �Ǿ����ϴ�.<br>
									������ �̷��� �̷���, ������ ������ �����ϱ⿡�� ��Ȳ�� �ʹ� ���Ƽ� ����� �մϴ�. ���� �غ��� ����� ����� ������, ��Ȳ�� ����ġ ���� �� �ֽ��ϴ�.<br>
									������ Ž���� ���� ���������δ� ���÷��� ������ (�����/PC ����) �׽�Ʈ�غ��� ���� ����� ������ �˴ϴ�.<br>
									��� ������̱�� ������ ���� ������ �ϱ� ������, ���ζ� �����Ͽ� ������ ������ ������ �ϼ���.<br>
									AI�� �׷��� ���ϰų� �ϴ� ���� �ƴ�����, �׷� AI���� �̱��� ���ϴ� �����̳� ������ ���� ��ų �� ������, �� ������ �����̳� ��Ȳ�� ���� ������ ������ �����µ��� ����� ������ �˴ϴ�.<br>
									<br>
									�̷� ���� �پ��� ������ ������ �ᱹ�� ��Ÿũ����Ʈ��, ���׿��극���嵵 �׷���, ���� �غ����Ѵٴ� ����� �Ȱ��� ������ ����Ʈ ���� ����Ʈ ������ �ᱹ �پ��� ������ �ʿ��� �� �մϴ�.<br> 
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