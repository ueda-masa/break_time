// app/javascript/popup.js

document.addEventListener('DOMContentLoaded', () => {
  const startBreakTime = '09:00'; // 休憩開始時間
  const endBreakTime = '17:00'; // 休憩終了時間

  const password = 'user_password'; // ユーザーのパスワード

  const currentTime = new Date().toLocaleTimeString('ja-JP', { hour12: false });

  if (currentTime >= startBreakTime && currentTime <= endBreakTime) {
    // 休憩時間中の処理
    window.moveTo(0, 0);
    window.resizeTo(screen.availWidth, screen.availHeight);

    const passwordInput = prompt('Please enter your password to exit full screen.');

    if (passwordInput === password) {
      window.close();
    }
  }
});
