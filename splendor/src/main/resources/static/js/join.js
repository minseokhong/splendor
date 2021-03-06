var idRegExp = /^[a-z]+[a-z0-9]{5,19}$/g;// 영문자로 시작하는 6~20자 조합
var passwordRegExp = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,15}$/;// 숫자와 영문자 조합 8~15자리, profile.js 맨 아래 줄(116라인)도 수정 필요
var nicknameRegExp = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,15}$/;// 특수문자 제외한 2~15자
var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

var checkNicknameFlag = 0; //값이 1일 경우 체킹 통과, 0일 경우 통과 못함
var checkPasswordFlag = 0;
var checkPasswordConfirmFlag = 0;
var checkEmailFlag = 0;
//var checkEmailVarifyFlag = 0; //추후에 필요

function checkAll() {
	if(checkNicknameFlag + checkPasswordFlag + checkPasswordConfirmFlag + checkEmailFlag == 4) { //값이 4일 경우 모든 입력값이 체킹 통과. 메일 인증 체크 필요
		return true;
	} else 
		return false;
}

function checkNickname(value) {
    var result = checkRegExp(nicknameRegExp, value);

    if(result == 0) {
    	$.ajax({
    		type : "POST", 
    		url : "http://localhost:8000/nicknameCheck", 
    		dataType : "text", 
    		data : {
    			nickname : value
    		}, 
    		timeout : 50, 
    		success : function(data) {
    			if(data == "true") {
    				$('#check_nickname_result').text("닉네임이 이미 사용 중입니다.").css("color", "red");
    				checkNicknameFlag = 0;
    			} else {
    				$('#check_nickname_result').text("사용 가능한 닉네임입니다.").css("color", "green");
    				checkNicknameFlag = 1;
    			}
    		}, 
    		error : function() {
    	    	$.ajax({
    	    		type : "POST", 
    	    		url : "http://121.138.121.114:8000/nicknameCheck", 
    	    		dataType : "text", 
    	    		data : {
    	    			nickname : value
    	    		}, 
    	    		success : function(data) {
    	    			if(data == "true") {
    	    				$('#check_nickname_result').text("닉네임이 이미 사용 중입니다.").css("color", "red");
    	    				checkNicknameFlag = 0;
    	    			} else {
    	    				$('#check_nickname_result').text("사용 가능한 닉네임입니다.").css("color", "green");
    	    				checkNicknameFlag = 1;
    	    			}
    	    		}, 
    	    		error : function() {
    	    			alert("데이터를 불러올 수 없습니다. 잠시 후에 다시 시도해주세요.")
    	    		}
    	    	});
    			
    		}
    	});
    	return;
    } else if(result == 1) {
        $('#check_nickname_result').text("");
    } else if(result == 2) {
        $('#check_nickname_result').text("특수문자를 제외한 2~15자만 허용됩니다.").css("color", "red");
    }
    checkNicknameFlag = 0;
}

function checkPassword(value) {
    checkPasswordConfirm($('#password_confirm').val());
    var result = checkRegExp(passwordRegExp, value);

    if(result == 0) {
        $('#check_password_result').text("사용 가능한 비밀번호 입니다.").css("color", "green");
        checkPasswordFlag = 1;
        return;
    } else if(result == 1) {
        $('#check_password_result').text("");
    } else if(result == 2) {
        $('#check_password_result').text("8~15자리의 숫자와 영문자 조합으로 구성해 주세요.").css("color", "red");
    }
    checkPasswordFlag = 0;
}

function checkPasswordConfirm(value) {
    if(value == null || value == "") {
        $('#check_password_confirm_result').text("");
    } else if($('#password').val() == value) {
        $('#check_password_confirm_result').text("비밀번호가 일치합니다.").css("color", "green");
        checkPasswordConfirmFlag = 1;
        return;
    } else {
        $('#check_password_confirm_result').text("비밀번호가 일치하지 않습니다.").css("color", "red");
    }
    checkPasswordConfirmFlag = 0;
    
}

function checkEmail(value) {
    var result = checkRegExp(emailRegExp, value);
    
    if(result == 0) {
    	$.ajax({
    		type : "POST", 
    		url : "http://localhost:8000/emailCheck", 
    		dataType : "text", 
    		data : {
    			email : value
    		}, 
    		timeout : 50, 
    		success : function(data) {
    			if(data == "true") {
    				$('#check_email_result').text("이메일이 이미 존재합니다.").css("color", "red");
    				checkEmailFlag = 0;
    			} else {
    				$('#check_email_result').text("사용 가능한 이메일 형식입니다.").css("color", "green");
    				checkEmailFlag = 1;
    			}
    		}, 
    		error : function() {
    	    	$.ajax({
    	    		type : "POST", 
    	    		url : "http://121.138.121.114:8000/emailCheck", 
    	    		dataType : "text", 
    	    		data : {
    	    			email : value
    	    		}, 
    	    		success : function(data) {
    	    			if(data == "true") {
    	    				$('#check_email_result').text("이메일이 이미 존재합니다.").css("color", "red");
    	    				checkEmailFlag = 0;
    	    			} else {
    	    				$('#check_email_result').text("사용 가능한 이메일 형식입니다.").css("color", "green");
    	    				checkEmailFlag = 1;
    	    			}
    	    		}, error : function() {
    	    			alert('데이터를 불러올 수 없습니다. 잠시 후에 다시 시도해주세요.')
    	    		}
    	    	});
    		}
    	});
    	return;
    } else if(result == 1) {
        $('#check_email_result').text("");
    } else if(result == 2) {
        $('#check_email_result').text("올바르지 않은 이메일 형식입니다.").css("color", "red");
    }
    checkEmailFlag = 0;
}

// function checkId(value) {
//     var result = checkRegExp(idRegExp, value);

//     if(result == 0) {
//         //!!!!!!!!!!!!!!!!!!!! Ajax로 아이디 체크해서 결과 입력할 부분입니다. !!!!!!!!!!!!!!!!!!!!
//         $('#check_id_result').text("join.js 내에 변경할 부분 표시!!!").css("color", "green");
//     } else if(result == 1) {
//         $('#check_id_result').text("");
//     } else if(result == 2) {
//         $('#check_id_result').text("영문자로 시작하는 6~20자 영문·숫자 조합으로 만들어 주세요.").css("color", "red");
//     }
// }

function checkRegExp(regExp, value) {
    var result;
    if(value == null || value == "") {
        result = 1;// 입력값이 없음
    } else if(value.match(regExp) != null) {
        result = 0;// 문제 없음
    } else {
        result = 2;// 정규식에 맞지 않음
    }
    return result;
}