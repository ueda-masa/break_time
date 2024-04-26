// app/javascript/timertop.js
document.addEventListener("DOMContentLoaded", function() {
  // 休憩時間に関する処理
  function handleBreakTime() {
    // 休憩時間帯の判定（例：午前9時から午後5時まで）
    var currentTime = new Date();
    var currentHour = currentTime.getHours();
    if (currentHour >= 9 && currentHour < 21) {
      // 休憩時間中の処理
      var duringImages = [
        "1.jpg",
        "2.jpg",
        "3.jpg",
        "4.jpg",
        "5.jpg",
        "6.jpg",
        "7.jpg",
        "8.jpg",
        "9.jpg",
        "10.jpg",
        "11.jpg",
        "12.jpg",
        "13.jpg",
        "14.jpg",
        "15.jpg"
      ];
      var randomIndex = Math.floor(Math.random() * duringImages.length);
      var randomImage = duringImages[randomIndex];

      // 画像を表示する処理
      var imageElement = document.createElement("img");
      imageElement.src = "/assets/during/" + randomImage; // 画像のパス
      imageElement.alt = "During Break";
      document.body.appendChild(imageElement);

      // 休憩メッセージを表示
      var breakMessage = document.createElement("div");
      breakMessage.textContent = "休憩しましょう";
      document.body.appendChild(breakMessage);
      
      // ブラウザの最大化
      window.moveTo(0, 0);
      window.resizeTo(screen.availWidth, screen.availHeight);
    }
  }

  // 休憩時間中はhandleBreakTime関数を呼び出す
  handleBreakTime();
});

