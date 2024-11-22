<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #ccffd0;
            color: black;
            padding: 30px 0;
            text-align: center;
            font-family:'Times New Roman', Times, serif;
            font-style:italic;
            
        }
        nav {
            display: flex;
            justify-content: right;
            padding: 20px 0;
            background-color: #29B313;
        }
        nav a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
            font-size: 20px;
        }
        nav a:hover {
            background-color: #ffffff;
            border-radius: 5px;
            color: black;
        }
        
        
        footer {
            background-color: #29B313;
            color: white;
            text-align: center;
            padding:15px 10px ;
            position:fixed;
            width: 100%;
            bottom: 0;
        }
        .btn-login {
            background-color: #4CAF50;
            color: white; 
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 25px;
        }
        .btn-login:hover {
            background-color: #ffffff;
            color:#29B313;
            border: 3px solid #29B313;
        }


        .btn-sign{
            background-color: white;
            color:#29B313;
            border:none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 25px;
        }
        
        .btn-sign:hover {
            border: 5px solid #6dff6b;
    
        }
    </style>
</head>
<body>
    <nav>
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#services">Services</a>
        <a href="#contact">Contact</a>
    </nav>
    <header>
        <h1 style="font-size: 50px;">Welcome to Edu-Venture</h1>
        <button class="btn-login">Login</buttonm>
    </header>


    <footer>
        <p style="font-size: 25px;">Join Today</p>
        <p style="font-size: 25px;">Start your personalized learning journey with Edu-Venture</p>
        <button class="btn-sign">sign up</button>
    </footer>

</body>
</html>