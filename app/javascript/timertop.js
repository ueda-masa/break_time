function updateDateTime() {
  var dateTimeElement = document.getElementById("datetime");
  var date = new Date();
  var timeString = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
  var dateTimeString = date.getFullYear() + "年" + (date.getMonth() + 1) + "月" + date.getDate() + "日（" + getDayOfWeek(date.getDay()) + "） " + timeString;
  dateTimeElement.textContent = dateTimeString;
  dateTimeElement.classList.toggle("blink");
  setTimeout(updateDateTime, 1000); // 1秒ごとに更新
}

function getDayOfWeek(day) {
  var daysOfWeek = ["日", "月", "火", "水", "木", "金", "土"];
  return daysOfWeek[day];
}

// 最初の更新を実行
updateDateTime();