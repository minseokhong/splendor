function showFindEmailArea() {
    $('.find_email_area').css("display", "block");
    $('#find_email').css({
        "color": "gray", 
        "background": "#e9ecef", 
        "border": "hidden"
    });
    $('.find_password_area').css("display", "none");
    $('#find_password').css({
        "color": "lightgrey", 
        "background": "#fff", 
        "border": "1px dotted darkgray",
    });

}

function showFindPasswordArea() {
    $('.find_password_area').css("display", "block");
    $('#find_password').css({
        "color": "gray", 
        "background": "#e9ecef", 
        "border": "hidden"
    });
    $('.find_email_area').css("display", "none");
    $('#find_email').css({
        "color": "lightgrey", 
        "background": "#fff", 
        "border": "1px dotted darkgray",
    });
}

