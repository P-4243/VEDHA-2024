<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
        }
        .header {
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 24px;
        }
        .dashboard {
            margin: 20px;
            text-align: center;
        }
        .courses {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }
        .course-card {
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            width: 250px;
            padding: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .course-card h3 {
            margin: 10px 0;
            font-size: 18px;
        }
        .course-card p {
            font-size: 14px;
            color: #666;
        }
        .progress-bar-container {
            width: 100%;
            background-color: #e0e0e0;
            border-radius: 8px;
            margin: 10px 0;
            position: relative;
            height: 10px;
        }
        .progress-bar {
            background-color: #4CAF50;
            height: 100%;
            border-radius: 8px;
            transition: width 0.5s;
        }
        .course-card button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }
        .course-card button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="header">
        My Dashboard
    </div>
    <div class="dashboard">
        <h2>Choose Your Path</h2>
        <p>Select a learning path to customize your curriculum and start learning at your own pace.</p>
        <div class="courses">
            <!-- Dynamic Course Cards -->
            <%
                // Simulated progress data (can replace with database values)
                String[][] courses = {
                    {"Web Development Basics", "Learn HTML, CSS, and JavaScript to build your first web pages and interactive elements.", "webdev.jsp", "70"},
                    {"Data Structure", "Discover the fundamentals of data structures, master efficient algorithms.", "datastructure.jsp", "50"},
                    {"DBMS (MySQL)", "Master database concepts with MySQL, for data organization and retrieval.", "dbms.jsp", "30"},
                    {"Java", "Learn Java fundamentals and build powerful, versatile applications with ease.", "java.jsp", "90"}
                };
                
                for (String[] course : courses) {
            %>
                <div class="course-card">
                    <h3><%= course[0] %></h3>
                    <p><%= course[1] %></p>
                    <!-- Progress Bar -->
                    <div class="progress-bar-container">
                        <div class="progress-bar" style="width: <%= course[3] %>%"></div>
                    </div>
                    <button onclick="location.href='<%= course[2] %>'">Start Learning</button>
                </div>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
    