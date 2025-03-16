<!DOCTYPE html>
<html lang="th">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>เข้าสู่ระบบ</title>
  <style>
    body {
      margin: 0;
      font-family: "Sarabun", sans-serif;
      background-color: #f4f4f4;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }
    .container {
      background: white;
      padding: 2rem;
      border-radius: 1rem;
      box-shadow: 0 0 15px rgba(0,0,0,0.1);
      width: 90%;
      max-width: 400px;
      text-align: center;
    }
    .logo {
      max-width: 150px;
      margin: 0 auto 1rem;
    }
    h2 {
      margin: 0.5rem 0;
    }
    p {
      margin: 0.2rem 0;
      font-size: 0.9rem;
      color: #555;
    }
    input {
      width: 100%;
      padding: 0.75rem;
      margin: 0.5rem 0;
      border: 1px solid #ccc;
      border-radius: 0.5rem;
      font-size: 1rem;
    }
    button {
      width: 100%;
      padding: 0.75rem;
      border: none;
      background-color: #007bff;
      color: white;
      font-size: 1rem;
      border-radius: 0.5rem;
      cursor: pointer;
    }
    button:hover {
      background-color: #0056b3;
    }
    .error {
      color: red;
      margin-top: 0.5rem;
      font-size: 0.9rem;
    }
  </style>
</head>
<body>
  <div class="container">
    <img src="logo.png" alt="โลโก้หมู่บ้าน" class="logo">
    <h2>หมู่บ้านกิตตินคร กรีนทวาน์</h2>
    <p>399/279 ม.บ. นาพเพรีย อ.บางอิน จ.สมุทรปราการ 10560</p>
    <p>เลขระบุประจำตัวติดต่อผู้เต็มรอน 0994002746323</p>

    <form onsubmit="login(event)">
      <h3>🔐 เข้าสู่ระบบ</h3>
      <input type="text" id="houseNumber" placeholder="บ้านเลขที่" required>
      <input type="password" id="password" placeholder="รหัสผ่าน" required>
      <button type="submit">เข้าสู่ระบบ</button>
      <p class="error" id="errorText"></p>
    </form>
  </div>

  <script>
    function login(e) {
      e.preventDefault();
      const house = document.getElementById("houseNumber").value.trim();
      const pass = document.getElementById("password").value.trim();

      // Mock Login
      if (house === "399/269" && pass === "123456") {
        window.location.href = "home.html";
      } else {
        document.getElementById("errorText").innerText = "รหัสผ่านผิดหรือไม่ถูก";
      }
    }
  </script>
</body>
</html>
