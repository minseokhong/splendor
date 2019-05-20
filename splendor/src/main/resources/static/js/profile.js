$(document).ready(function() {
    $('.profile_image_div').on('click', function() {
        $('#profile_image_input').click();
        // $('#fakeFile').value = $('#profile_image_input').value;
    });

    $('#profile_image_input').on('change', function() {
        // 여기에 로직 추가

        checkFileType(this);
    })

});

function checkFileType(file) {
    if(file.value == null || file.value == '') {
        return false;
    }
    var fileKind = file.value.lastIndexOf('.');
    var fileName = file.value.substring(fileKind + 1, file.length);
    var fileType = fileName.toLowerCase();

    var checkFileType = ['png', 'jpeg', 'jpg', 'bmp', 'gif'];

    if(checkFileType.indexOf(fileType) == -1) {
        alert("이미지 파일만 선택할 수 있습니다.");
        // var parentFile = file.parentNode;
        // var node = parentFile.replaceChild(file.cloneNode(true), file);
        
         $('#profile_image_input').val('');

        return false;
    }

    var fileReader = new FileReader;
    fileReader.onload = function(e) {
        $('.profile_image').attr('src', e.target.result);
    }
    fileReader.readAsDataURL(file.files[0]);
}

function returnPage() {
    window.history.back();
}

function openChangePasswordArea() {
    $('#change_profile_only_area').css('display', 'none');
    $('#change_password_area').css('display', 'block');
}

function closeChangePasswordArea() {
    $('#change_password_area').css('display', 'none');
    $('#change_profile_only_area').css('display', 'block');
}

function submitWithoutPassword() {
    $('#change_password_area').empty();
    $('#profile_form').submit();
}

function leaveToggle() {
    $('.bubble').toggle();
}

function checkPassword(value) {



    // !!!!! !!!!! !!!!! Ajax로 비밀번호 체크해서 text 변경해야 할 부분 !!!!! !!!!! !!!!!

    if(value == null || value == "") {
        $('#check_password_result').text("수정 좀 해!!!").css("color", "red");
    } else {
        $('#check_password_result').text("profile.js의 표시 란에 Ajax로 수정 필요!!!").css("color", "red");
    }



}

function checkNewPassword(value) {
    checkNewPasswordConfirm($('#new_password_confirm').val());
    var result = checkRegExp(passwordRegExp, value);

    if(result == 0) {
        $('#check_new_password_result').text("사용 가능한 비밀번호 입니다.").css("color", "green");
    } else if(result == 1) {
        $('#check_new_password_result').text("");
    } else if(result == 2) {
        $('#check_new_password_result').text("8~15자리의 숫자와 영문자를 조합해 주세요.").css("color", "red");
    }
}

function checkNewPasswordConfirm(value) {
    if(value == null || value == "") {
        $('#check_new_password_confirm_result').text("");
    } else if($('#new_password').val() == value) {
        $('#check_new_password_confirm_result').text("비밀번호가 일치합니다.").css("color", "green");
    } else {
        $('#check_new_password_confirm_result').text("비밀번호가 일치하지 않습니다.").css("color", "red");
    }
}

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

var passwordRegExp = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,15}$/;// 숫자와 영문자 조합 8~15자리