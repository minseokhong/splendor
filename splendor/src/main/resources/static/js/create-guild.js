$(document).ready(function() {
    $('#required_total_score+.nice-select .current').text("SCORE");
    $('#required_total_played+.nice-select .current').text("총 플레이 수");
    $('#required_win_rate+.nice-select .current').text("승률");
});

function printRequiredScoreResult() {
    var msg;
    if($('#required_total_score').val() == 0) {
        msg = "선택사항 없음";
    } else {
        msg = $('#required_total_score').val() + "점 이상";
    }
    flashResultArea($('#required_score_result'), msg);
    $('#required_total_score+.nice-select .current').text("SCORE");
}

function printRequiredPlayedResult() {
    var msg;
    if($('#required_total_played').val() == 0) {
        msg = "선택사항 없음";
    } else {
        msg = $('#required_total_played').val() + "판 이상";
    }
    flashResultArea($('#required_played_result'), msg);
    $('#required_total_played+.nice-select .current').text("총 플레이 수");
}

function printRequiredWinRateResult() {
    var msg;
    if($('#required_win_rate').val() == 0) {
        msg = "선택사항 없음";
    } else {
        msg = $('#required_win_rate').val() + "% 이상";
    }
    flashResultArea($('#required_win_rate_result'), msg);
    $('#required_win_rate+.nice-select .current').text("승률");
}

function flashResultArea(divSelector, massage) {
    divSelector.text(massage).css({
        "color": "#fff", 
        "background": "#ced4da"
    });
    setTimeout(function() {
        divSelector.css({
            "color": "#777", 
            "background": "#fff"
        });
    }, 200);
}

function returnPage() {
    window.history.back();
}