<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>​
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
   <link rel="stylesheet" href="css/magnific-popup.css">
   <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
   <link rel="stylesheet" href="vendors/animate-css/animate.css">
   <link rel="stylesheet" href="vendors/flaticon/flaticon.css">
   <!-- main css -->
   <link rel="stylesheet" href="css/style.css">
   <script
  src="https://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>

<script>
$(document).ready(function(){
	$('#write').on('click',function(e){
		e.preventDefault();
		var chUser ='<c:out value = '${user}'/>';
		if(chUser == ''){
			alert('로그인이 필요합니다.');
			
		}else{
			location.href="writeform";
		}
	
	})
});



</script>

<style>
   table > tbody > tr:hover {
    background-color: #d1f1f1;
    cursor: pointer;
    
    }
</style>
</head>

<body>

   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   		
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
                    <c:if test="${user == null}">
                    	
                    </c:if>
                    	<c:forEach var="l" items="${list}">

                    		<c:if test="${user == null}">
                    				<tr onclick="alert('로그인하세요')">
    	                	        	<td>${l.board_num}</td>
        	        	            	<td>${l.board_title}</td>
            		                	<td>${l.board_writer}</td>
            	    	            	<td>${l.board_date}</td>
        	            	        	<td>${l.board_count}</td>
    		                    	</tr>
                    		</c:if>
                    		<c:if test="${user != null}">
	                        		<tr  onclick="location.href='http://localhost:8000/clicktopost?board_num=${l.board_num}'">
    	                	        	<td>${l.board_num}</td>
        	        	            	<td>${l.board_title}</td>
            		                	<td>${l.board_writer}</td>
            	    	            	<td>${l.board_date}</td>
        	            	        	<td>${l.board_count}</td>
    		                    	</tr>
                    		</c:if>

                        <tr onclick=movepage(${l.board_num})>
                            <td>${l.board_num}</td>
                            <td>${l.board_title}</td>
                            <td>${l.board_writer}</td>
                            <td>${l.board_date}</td>
                            <td>${l.board_count}</td>
                        </tr>

                    	</c:forEach>

                    </tbody>
                    
                </table>
                
            </div>
                    <div>
                        <a href="writeform" class="btn btn-primary pull-right" id="write">글쓰기</a>
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