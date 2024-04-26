// app/javascript/timeup.js

// 指定した時刻（24時間形式）を設定
var targetHour = 15; // 例：午後3時

// 時間を監視し、設定した時間になったらリダイレクトする関数
function watchTimeAndRedirect() {
    // 現在の時刻を取得
    var currentTime = new Date();
    var currentHour = currentTime.getHours();

    // 設定した時間になったらリダイレクト
    if (currentHour === targetHour) {
        window.location.href = "/stop"; // リダイレクト先のURLを指定
    }
}

// 1分ごとに時間を監視
setInterval(watchTimeAndRedirect, 60000); // 60000ミリ秒 = 1分
