<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
</head>
<style>
    #search a:hover { 
        font-weight:bold;
        color:#FF0000;
        cursor: pointer;
         
    }
    .form-control{
        width: 70%;
        margin:0px auto;
    }
  
</style>
    


<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
   
   		 <!--================Header Menu Area =================-->
    
   			<jsp:include page="header.jsp"></jsp:include>
   
        <!--================Header Menu Area =================-->
   

   <section class="login"  style="margin-top: 200px; margin-bottom: 100px;">
        <div class="container d-flex justify-content-center">
            <div class="col-lg-7 col-12">
               <div class="jumbotron">
                  <form method="get" action='test'>
                     <h3 style="text-align: center;">스플랜더 로그인</h3>
                     <div style="width:100%; height:30px;">
                        
                     </div>
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
                     </div>
                     <div class="form-group">
                        <input type="password" class="form-control" placeholder="비밀번호" name="userID" maxlength="20" >
                     </div>
<!--  -->
                     <div style="width:100%; height:30px;"></div>
<!--  -->
                     <div  style="width:100%; height:100px; text-align: center" >
                        <input type="submit" class="btn btn-primary" value="로그인" style="border: 1px solid; width: 200px">
                        <input type="button" class="btn btn-primary" value="회원가입" style="border: 1px solid;  width: 200px" onclick="location.href='join'">

                     </div>

                     <div id="search" class="col-lg-7 col-12">
                        <a style="position:absolute; bottom:0px;" href="write.js" >아이디찾기 / 비밀번호찾기 </a>
                     </div>
                     <a href="http://www.naver.com"><img src="img/네이버api.png" style="margin-bottom: auto; position: relative; width: 5%" class="pull-right"></a>
                     <a href="https://www.kakaocorp.com/service/KakaoTalk"><img src="img/카카오톡api.png" style="margin-bottom: auto; position: relative; width: 5%" class="pull-right"></a>
                     <a href="http://www.google.com"><img src="img/구글api.png" style="margin-bottom: auto; position: relative; width: 5%" class="pull-right"></a>
                  </form>
               </div>
            </div>
               
        </div>
   </section>
   
   <footer class="footer_area section_gap_top">
        <div class="container">
           <div class="row footer_inner">
              <div class="col-lg-3 col-sm-6">
                 <aside class="f_widget ab_widget">
                    <div class="f_title">
                       <h4>유사 게임</h4>
                    </div>
                    <ul>
                       <li><a href="#"></a>For Business</a></li><a href="#">
                          <li><a href="#"></a>Premium Plans
                       </a></li>
                       <li><a href="#"></a>Reviews</a></li>
                       <li><a href="#"></a>How it Works</a></li>
                       <li><a href="#"></a>Farfly Blog</a></li>
                    </ul>
                 </aside>
              </div>
              <div class="col-lg-3 col-sm-6">
                 <aside class="f_widget ab_widget">
                    <div class="f_title">
                       <h4>개발자</h4>
                    </div>
                    <ul>
                       <li><a href="#"></a>김도형</a></li><a href="#">
                          <li><a href="#"></a>주민섭
                       </a></li>
                       <li><a href="#"></a>홍민석</a></li>
                       <li><a href="#"></a>박영욱</a></li>
                       <li><a href="#"></a>윤현빈</a></li>
                    </ul>
                 </aside>
              </div>
              <div class="col-lg-3 col-sm-6">
                 <aside class="f_widget ab_widget">
                    <div class="f_title">
                       <h4>찾아오시는길</h4>
                    </div>
                    <ul>
                       <li><a href="#"></a>서울 강남구...</a></li>
                    </ul>
                 </aside>
              </div>
              <!-- <div class="col-lg-3 col-sm-6">
                 <aside class="f_widget ab_widget">
                    <div class="f_title">
                       <h4>Legal</h4>
                    </div>
                    <ul>
                       <li><a href="#"></a>Terms and conditions</a></li><a href="#">
                          <li><a href="#"></a>Privacy Policy
                       </a></li>
                       <li><a href="#"></a>Cookie Information</a></li>
                       <li><a href="#"></a>Opt - Out</a></li>
                    </ul>
                 </aside>
              </div> -->
           </div>
           <div class="row single-footer-widget">
              <div class="col-lg-6 col-md-6 col-sm-12">
                 <div class="copy_right_text">
                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  
  <!-- Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
  All rights reserved | This template is made with 
  <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
  이상입니당
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                 </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-12">
                 <div class="social_widget">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-behance"></i></a>
                 </div>
              </div>
           </div>
        </div>
     </footer>
</body>
</html>
