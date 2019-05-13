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
                            <td style="font-weight: bold; color: blueviolet; ">[��������]</td>
                            <td style="text-align: left">���̵�/��й�ȣ�� ��ﳪ�� �ʾƿ�. ��� ã�� �� �ֳ���?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo1" style="text-align: center; color:cornflowerblue"> ������ ���̵�� ��й�ȣ�� �ؾ���� ��� 
                                    Ȩ������ ù ȭ���� [ID/PW ã��] ��ư�� Ŭ�� �� ���� ������ ���Ͽ� 
                                    ������ ��� ���̵� ã�� �� �ֽ��ϴ�.</div> 
                            </td>
                        </tr>

                        <tr data-toggle="collapse" data-target="#demo2" class="accordion-toggle">
                            <td>Q.</td>
                            <td style="font-weight: bold; color: blueviolet;">[��������]</td>
                            <td style="text-align: left">��й�ȣ�� ��� �����ϳ���?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo2" style="text-align: center; color:cornflowerblue"> ������ ���̵�� ��й�ȣ�� �ؾ���� ��� 
                                    Ȩ������ ù ȭ���� [���� ����]�� Ŭ���� �� [��й�ȣ ����] �޴����� ������ �� �ֽ��ϴ�.
                                </div> 
                            </td>
                        </tr>
                        

                        <tr data-toggle="collapse" data-target="#demo3" class="accordion-toggle">
                            <td>Q.</td>
                            <td style="font-weight: bold; color: blueviolet;">[��������]</td>
                            <td style="text-align: left">�������� �����Ϸ��� ��� �ϳ���?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo3" style="text-align: center; color:cornflowerblue">
                                    �α��� ȭ�鿡�� [���� ����]�� Ŭ���� �� [�������� ����] �޴����� ������ �� �ֽ��ϴ�.
                                </div> 
                            </td>
                        </tr>
                        
                        <tr data-toggle="collapse" data-target="#demo4" class="accordion-toggle">
                             <td>Q.</td>
                             <td style="font-weight: bold; color: blueviolet;">[��������]</td>
                            <td style="text-align: left">���� Ż��� ��� �ϳ���?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo4" style="text-align: center; color:cornflowerblue">
                                    Ȩ������ ù ȭ���� [���� ����]�� Ŭ���� �� [ȸ��Ż��] �޴����� ���� ������ ���� Ż���� �� ������,
                                     ��û ��� ó���ǿ��� ������ �Ǵ��Ͻ� �� ��û���ֽñ⸦ �ٶ��ϴ�.
                                </div> 
                            </td>
                        </tr>

                        <tr data-toggle="collapse" data-target="#demo5" class="accordion-toggle">
                            <td>Q.</td>
                            <td style="font-weight: bold; color: blueviolet;">[��������]</td>
                            <td style="text-align: left">Ż���� ������ ������ �� �ֳ���?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo5" style="text-align: center; color:cornflowerblue">
                                    Ż�� ������ ������ ���������ʽ��ϴ� ������ ���� ��Ź�帳�ϴ�.
                                </div> 
                            </td>
                        </tr>
                        <tr data-toggle="collapse" data-target="#demo7" class="accordion-toggle">
                                <td>Q.</td>
                                <td style="font-weight: bold; color: rgb(118, 192, 7);">[���๮��]</td>
                                <td style="text-align: left">���� ������ �־��!</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo7" style="text-align: center; color:cornflowerblue">
                                    R.N.G�� ������ ������ �����ֽô� ȸ���Բ� �������� �����մϴ�.
                                    �� ���� R.N.G�� �Ǳ� ���� ���� �� ���� ������ �����ôٸ�
                                    ������ ���Ŀ� ���� ���� �����ͷ� �����ּ���~��
                                    �����ֽô� ���� ���� �ǰߵ��� ���ӿ� �ݿ��� �� �ֵ��� ����ϰڽ��ϴ�!
                                </div> 
                            </td>
                        </tr>       
                        <tr data-toggle="collapse" data-target="#demo6" class="accordion-toggle">
                            <td>Q.</td>
                            <td style="font-weight: bold; color: red;">[�Ű�����]</td>
                            <td style="text-align: left">�̿� ���ѵǾ��ٰ� �ϴµ� �� ������ �Ȱǰ���?</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="hiddenRow">
                                <div class="accordian-body collapse" id="demo6" style="text-align: center; color:cornflowerblue">
                                        �̿��� �� ���å�� �ٰ��Ͽ� �������� ���� �̿� ��
                                        �ش� ������ ���� �̿��� ���ѵ� �� �ֽ��ϴ�.<br>
                                        ��Ȯ�� Ȯ���� ���Ͽ� ������ ���� �г����� �����Ͽ�
                                        [ ������ > 1:1 ���� ]�� ���Ͽ� �����Ͽ� �ֽŴٸ� Ȯ�� �� �ȳ� �帮�ڽ��ϴ�.<br>
                                        
                                        �ٸ�, �ش� ������ ������ ���� ���Ǹ� �����ؾ߸�
                                        �ȳ��� �帱 �� ������ �� �� ���� ��Ź �帳�ϴ�.
                                    </div> 
                                </td>
                            </tr>
                        </tbody>
                            
                </table>
                
            </div>
                    <div>
                        <a class="primary_btn pull-right" href="������">1:1����</a>
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