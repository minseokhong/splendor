var idRegExp = /^[a-z]+[a-z0-9]{5,19}$/g;// 영문자로 시작하는 6~20자 조합
var passwordRegExp = /^[a-zA-Z0-9]{8,15}$/;// 숫자와 영문자 조합 8~15자리
var nicknameRegExp = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,15}$/;// 특수문자 제외한 2~15자
var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;


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
    		success : function(data) {
    			if(data == "true") {
    				$('#check_nickname_result').text("닉네임이 이미 사용 중입니다.").css("color", "red");
    			} else {
    				$('#check_nickname_result').text("사용 가능한 닉네임입니다.").css("color", "green");
    			}
    		}
    	});
    } else if(result == 1) {
        $('#check_nickname_result').text("");
    } else if(result == 2) {
        $('#check_nickname_result').text("특수문자를 제외한 2~15자만 허용됩니다.").css("color", "red");
    }
}

function checkPassword(value) {
    checkPasswordConfirm($('#password_confirm').val());
    var result = checkRegExp(passwordRegExp, value);

    if(result == 0) {
        $('#check_password_result').text("사용 가능한 비밀번호 입니다.").css("color", "green");
    } else if(result == 1) {
        $('#check_password_result').text("");
    } else if(result == 2) {
        $('#check_password_result').text("8~15자리의 숫자와 영문자 조합으로 구성해 주세요.").css("color", "red");
    }
}

function checkPasswordConfirm(value) {
    if(value == null || value == "") {
        $('#check_password_confirm_result').text("");
    } else if($('#password').val() == value) {
        $('#check_password_confirm_result').text("비밀번호가 일치합니다.").css("color", "green");
    } else {
        $('#check_password_confirm_result').text("비밀번호가 일치하지 않습니다.").css("color", "red");
    }
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
    		success : function(data) {
    			if(data == "true") {
    				$('#check_email_result').text("이메일이 이미 존재합니다.").css("color", "red");
    			} else {
    				$('#check_email_result').text("사용 가능한 이메일 형식입니다.").css("color", "green");
    			}
    		}
    	});
    } else if(result == 1) {
        $('#check_email_result').text("");
    } else if(result == 2) {
        $('#check_email_result').text("올바르지 않은 이메일 형식입니다.").css("color", "red");
    }
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