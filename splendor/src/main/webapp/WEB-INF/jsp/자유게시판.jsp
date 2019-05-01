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
</style>
</head>

<body>
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bootstrap.js"></script>
   		
   		<!--================Header Menu Area =================-->
    
   		<c:if test="${user ==''}"><jsp:include page="header.jsp"></jsp:include></c:if>
	
		<c:if test="${user !=''}"><jsp:include page="loginHeader.jsp"></jsp:include></c:if>
   
        <!--================Header Menu Area =================-->
        
        <!--================Home Banner Area =================-->
        <section class="banner_area">
            <div class="banner_inner d-flex align-items-center">
               <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
               <div class="banner_content text-center">
               
                  <h2>자유게시판</h2>
               </div>
            </div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->
        
        <!--================Blog Area =================-->
        <div class="container" style="margin-top: 100px; margin-bottom: 100px;">
            <div class="row">
                <table id="contents" class="table" style="text-align: center; border:1px solid #dddddd;" >
                    <thead>
                        <tr>
                            <th style="background-color: #eeeeee; text-align: center;">구분</th>
                            <th style="background-color: #eeeeee; text-align: center;">제목</th>
                            <th style="background-color: #eeeeee; text-align: center;">작성자</th>
                            <th style="background-color: #eeeeee; text-align: center;">작성일</th>
                            <th style="background-color: #eeeeee; text-align: center;">조회수</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1.</td>
                            <td style="font-weight: bold; color: red" class="studgroup">[[[공지사항]]]</td>
                            <td style="font-weight: bold;">운영자</td>
                            <td style="font-weight: bold;">2019-04-08</td>
                            <td style="font-weight: bold;">15</td>

                        </tr>
                        <tr>
                            <td>2.</td>
                            <td style="font-weight: bold; color: red" class="studgroup">[[[공지사항]]]</td>
                            <td style="font-weight: bold;">운영자</td>
                            <td style="font-weight: bold;">2019-04-08</td>
                            <td style="font-weight: bold;">15</td>
    
                        </tr>
                        <tr>
                            <td>3.</td>
                            <td style="font-weight: bold; color: red" class="studgroup">[[[공지사항]]]</td>
                            <td style="font-weight: bold;">운영자</td>
                            <td style="font-weight: bold;">2019-04-08</td>
                            <td style="font-weight: bold;">15</td>
    
                         </tr>
                         <tr>
                             <td>4.</td>
                                <td>스플랜더노잼이야</td>
                                <td>박영욱</td>
                                <td>2019-04-08</td>
                                <td>15</td>
    
                         </tr>
                         <tr>
                             <td>5.</td>
                                <td>쟈유게시판맞나요?</td>
                                <td>박영욱</td>
                                <td>2019-04-08</td>
                                <td>15</td>
    
                        </tr>
                        <tr>
                                <td>6.</td>
                                   <td>쟈유게시판맞나요?</td>
                                   <td>박영욱</td>
                                   <td>2019-04-08</td>
                                   <td>15</td>
       
                           </tr>    

                    </tbody>
                    
                </table>
                
            </div>
                    <div>
                        <a href="writeform" class="btn btn-primary pull-right">글쓰기</a>
                        <nav class="blog-pagination justify-content-center d-flex">
                              <ul class="pagination">
                                  <li class="page-item">
                                      <a href="#" class="page-link" aria-label="Previous">
                                          <span aria-hidden="true">
                                              <span class="lnr lnr-chevron-left"></span>
                                          </span>
                                      </a>
                                  </li>
                                  <li class="page-item active"><a href="#" class="page-link">01</a></li>
                                  <li class="page-item"><a href="#" class="page-link">02</a></li>
                                  <li class="page-item"><a href="#" class="page-link">03</a></li>
                                  <li class="page-item"><a href="#" class="page-link">04</a></li>
                                  <li class="page-item"><a href="#" class="page-link">09</a></li>
                                  <li class="page-item">
                                      <a href="#" class="page-link" aria-label="Next">
                                          <span aria-hidden="true">
                                              <span class="lnr lnr-chevron-right"></span>
                                          </span>
                                      </a>
                                  </li>
                              </ul>
                          </nav>
                    </div>
                    <div class="blog-pagination justify-content-center d-flex" style="width:90%">
                        <select style="border: 1px solid; ">
                            <option>
                                전체
                            </option>
                            <option>
                                제목
                            </option>
                            <option>
                                내용
                            </option>    
                        </select>

                        <input type="text" class="inputText" style="width: 30%;" placeholder="내용을 입력하세요">
                        <a href="write.js" class="btn" style="border: 1px solid">검색</a>
                    </div>
        </div>
        <!--================Blog Area =================-->
        
        <!--================Footer Area =================-->
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