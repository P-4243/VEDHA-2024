<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up</title>
  <style>
  * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
  background-color: #00a83f;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
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
      <h2>Sign Up</h2>
      <form>
        <div class="input-group">
          <label for="username">Username:</label>
          <input type="text" id="username" placeholder="Enter Your Username">
        </div>
        <div class="input-group">
          <label for="password">Password:</label>
          <input type="password" id="password" placeholder="Enter Your Password">
        </div>
         <div class="input-group">
          <label for="password">Confirm Password:</label>
          <input type="password" id="password" placeholder="Re-enter Your Password">
        </div>
        <button type="submit" class="submit-btn">Submit</button>
      
      </form>
    </div>
  </div>
</body>
</html>
    