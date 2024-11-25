<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <style>
  * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
body {
            margin: 0;
            height: 100vh;
            background: linear-gradient(45deg, #d4edda, #b8e0c3, #a2d4ac, #c2e8cf);
            background-size: 300% 300%;
            animation: darkGreenGradient 10s ease infinite;
            overflow: hidden;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #2e5930;
            text-align: center;
        }

        @keyframes darkGreenGradient {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        .circle {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.4);
            animation: float 10s linear infinite;
        }

        @keyframes float {
            0% {
                transform: translateY(0) scale(1);
                opacity: 1;
            }
            50% {
                transform: translateY(-200px) scale(1.2);
                opacity: 0.8;
            }
            100% {
                transform: translateY(-400px) scale(0.8);
                opacity: 0;
            }
        }

        /* Random circle placements */
        .circle:nth-child(1) {
            width: 100px;
            height: 100px;
            top: 80%;
            left: 20%;
            animation-delay: 0s;
        }

        .circle:nth-child(2) {
            width: 150px;
            height: 150px;
            top: 90%;
            left: 50%;
            animation-delay: 2s;
        }

        .circle:nth-child(3) {
            width: 120px;
            height: 120px;
            top: 85%;
            left: 70%;
            animation-delay: 4s;
        }

        .circle:nth-child(4) {
            width: 80px;
            height: 80px;
            top: 95%;
            left: 10%;
            animation-delay: 6s;
        }

        .circle:nth-child(5) {
            width: 200px;
            height: 200px;
            top: 80%;
            left: 80%;
            animation-delay: 8s;
        }
.container {
  width: 100%;
  max-width: 400px;
}

.login-box {
  background-color: white;
  border-radius: 15px;
  padding: 20px 30px;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
  text-align: center;
}

.avatar {
  margin: 0 auto 15px;
}

.avatar img {
  border-radius: 50%;
  width: 100px;
}

h2 {
  margin-bottom: 20px;
  color: #333;
}

.input-group {
  text-align: left;
  margin-bottom: 15px;
}

.input-group label {
  font-size: 14px;
  color: #333;
}

.input-group input {
  width: 100%;
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 5px;
  margin-top: 5px;
  font-size: 14px;
}

.input-group input:focus {
  outline: none;
  border-color: #00a83f;
  box-shadow: 0 0 5px rgba(0, 168, 63, 0.5);
}

.submit-btn {
  width: 100%;
  background-color: #00a83f;
  color: white;
  border: none;
  padding: 10px;
  border-radius: 5px;
  font-size: 16px;
  cursor: pointer;
  margin-bottom: 10px;
}

.submit-btn:hover {
  background-color: #008a35;
}

.register-link {
  font-size: 14px;
  color: #333;
}

.register-link a {
  color: #00a83f;
  text-decoration: none;
}

.register-link a:hover {
  text-decoration: underline;
}
  
  </style>
</head>
<body>
  <div class="container">
    <div class="login-box">
      <div class="avatar">
        <img src="https://via.placeholder.com/100" alt="User Avatar">
      </div>
      <h2>Log in</h2>
      <form>
        <div class="input-group">
          <label for="username">Username:</label>
          <input type="text" id="username" placeholder="Enter Your Username">
        </div>
        <div class="input-group">
          <label for="password">Password:</label>
          <input type="password" id="password" placeholder="Enter Your Password">
        </div>
        <button type="submit" class="submit-btn">Submit</button>
        <p class="register-link">
          Not registered? <a href="#">Create an account</a>
        </p>
      </form>
      <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle"></div>
    </div>
  </div>
</body>
</html>