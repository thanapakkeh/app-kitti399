
<!DOCTYPE html>
<html lang="th">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>เข้าสู่ระบบ</title>
  <link href="https://fonts.googleapis.com/css2?family=Sarabun&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: "Sarabun", sans-serif;
      background-color: #f0f4f8;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
      padding: 0 20px;
    }
    .login-container {
      background: #ffffff;
      padding: 30px;
      border-radius: 16px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      width: 100%;
      max-width: 400px;
      text-align: center;
    }
    .logo {
      width: 100px;
      margin-bottom: 20px;
    }
    input {
      width: 100%;
      padding: 12px;
      margin-top: 10px;
      border: 1px solid #ddd;
      border-radius: 8px;
      font-size: 16px;
      box-sizing: border-box;
    }
    button {
      width: 100%;
      padding: 12px;
      background-color: #007bff;
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      margin-top: 15px;
    }
    button:hover {
      background-color: #0056b3;
    }
    .error {
      color: #ff4d4d;
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <img src="logo.png" alt="โลโก้หมู่บ้าน" class="logo">
    <h2>เข้าสู่ระบบ</h2>
    <input type="text" id="houseNumber" placeholder="บ้านเลขที่">
    <input type="password" id="password" placeholder="รหัสผ่าน">
    <button onclick="login()">เข้าสู่ระบบ</button>
    <div class="error" id="errorText"></div>
  </div>

  <script>
    function login() {
      const house = document.getElementById("houseNumber").value.trim();
      const pass = document.getElementById("password").value.trim();

      if (house === "399/269" && pass === "123456") {
        localStorage.setItem("loggedIn", house);
        window.location.href = "home.html";
      } else {
        document.getElementById("errorText").innerText = "รหัสผ่านหรือบ้านเลขที่ไม่ถูกต้อง";
      }
    }
  </script>
</body>
</html>
