<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!-- 수정이 다 안 끝났습니다. api로 가입 시 기존 회원이 사용하던 닉네임과 겹치는 닉네임 사용자는 수정을 유도해야하고,  -->
<!-- 회원가입 시 닉네임은 변경 불가하다고 공지하여 중복 체크하면서 변경을 유도해야합니다. -->
<!-- 기본 기능은 실행 가능하므로 일단 넘어갑니다. -->


<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="/img/joystick.png" type="image/png">
<title>네이버 로그인</title>
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
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<style type="text/css">
	.home_banner_area {
		padding: 50px 80px;
		text-align: center;
	}
	.col-6 {
		margin: 150px auto;
		padding: 30px 30px 50px;
		background-color: #e9ecef;
/* 		background-color: #ffccff; */
	}
	.col-6>:first-child {
		margin: 20px;
		font-size: 20px;
	}
	.col-6 #logo {
		width: 50px;
		height: 50px;
	}
	.col-6>.primary_btn {
		font-size: 16px;
	}
</style>
</head>
<body>
	
    <!--================ Join Accept Area =================-->
    <section class="home_banner_area">
    	<div class="col-6 radius">
    		<div id="logoArea">
    			<img id="logo" src="/img/joystick.png">&nbsp; R. N. G &nbsp;
    		</div>
    		<div class="joinAcceptArea">
			    <h4>확인된 정보로 가입하시겠습니까???</h4>
			    <h5>(가입 절차는 한번만 이루어집니다.)</h5>
			    <br><br>
				<div class="primary_btn" onclick=submitApiData();>동의하고 가입하기</div>
    		</div>
		    <div class="loginProceedArea" style="display: none;">
		    	<br><h4>로그인 처리중입니다...</h4><br>... 잠시만 기다려 주세요 ...
		    </div>
    	</div>
    </section>
    <!--================End Join Accept Area =================-->
    
	<script type="text/javascript">
	  var id;
	  var email;
	  var nickname;
	  var profile_image;
	  
	
	  var naver_id_login = new naver_id_login("kJZ3dXggDV9mMHj928wu", "YOUR_CALLBACK_URL");
	  // 접근 토큰 값 출력
	  // alert(naver_id_login.oauthParams.access_token);
	  // 네이버 사용자 프로필 조회
	  naver_id_login.get_naver_userprofile("naverSignInCallback()");
	  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	  
	  function naverSignInCallback() {
		id = naver_id_login.getProfileData('id')
		email = naver_id_login.getProfileData('email')
		nickname = naver_id_login.getProfileData('nickname')
		profile_image = naver_id_login.getProfileData('profile_image')
	//     alert(naver_id_login.getProfileData('age'));
	
		  $.ajax({ //유저 데이터가 db에 이미 존재하는지 확인
		   		type : "POST", 
		   		url : "http://localhost:8000/emailCheck", 
		   		dataType : "text", 
		   		data : {
		   			email : id
		   		}, 
		   		success : function(data) {
		   			if(data == "true") { //이메일이 db에 존재, 가입 필요 X, 바로 로그인
			   			$('.joinAcceptArea').css("display", "none");
			   			$('.loginProceedArea').css("display", "block");
			   			setTimeout(function() {
			   				loginDirect();
			   			}, 200);
		   			}
		   		}
		  });
	  }
	  
	  function loginDirect() {
          $.ajax({
              type : "POST",
              url : "http://localhost:8000/test",
              dataType : "text",				//	결과를 받을 데이터 타입
              data : {
                  userId: id, 
                  userPw: email
              },
              success : function(data) {
                  alert('네이버 아이디로 로그인 하셨습니다. 환영합니다 ^.^');
                  location.href = 'testView';
              }
          });
	  }
	  
	  function submitApiData() {
	      $.ajax({
	          type : "POST", 
	          url : "http://localhost:8000/apiJoin", 
	          dataType : "text", 
	          data : {
	              id: id, 
	              email: email, 
	              nickname: nickname, 
	              // profile_image: profile_image
	          }, 
	          success : function(data) {
	              alert("축하합니다. 가입에 성공하셨습니다!");
	              location.href = 'testView';
	          }
	      });
	  }
	</script>
</body>
</html>