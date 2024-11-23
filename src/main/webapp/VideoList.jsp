<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Web Development Basics</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f5f5f5;
    }
    .header {
      background-color: #28a745;
      color: white;
      padding: 10px 20px;
      font-size: 1.5em;
    }
    .container {
      display: flex;
      padding: 20px;
      gap: 20px;
    }
    .video-section, .content-section {
      background: white;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
    }
    .video-section {
      flex: 2;
    }
    .content-section {
      flex: 1;
    }
    .video-section video {
      width: 100%;
      border-radius: 8px;
    }
    .course-title {
      font-size: 1.2em;
      margin: 10px 0;
      color: #333;
    }
    .ratings {
      color: #666;
      font-size: 0.9em;
    }
    .ratings span {
      color: gold;
    }
    .course-content {
      list-style: none;
      padding: 0;
      margin: 0;
    }
    .course-content li {
      margin: 8px 0;
      display: flex;
      align-items: center;
    }
    .course-content input {
      margin-right: 8px;
    }
    button {
      background-color: #28a745;
      color: white;
      border: none;
      padding: 10px 20px;
      font-size: 1em;
      border-radius: 4px;
      cursor: pointer;
    }
    button:hover {
      background-color: #218838;
    }
  </style>
</head>
<body>
  <div class="header">Web Development Basics</div>

  <div class="container">
    <!-- Video Section -->
    <div class="video-section">
      <h2>HTML Basics</h2>
      <video controls>
        <source src="video.mp4" type="video/mp4">
        Your browser does not support the video tag.
      </video>
      <p class="course-title">
        Learn the fundamentals of HTML. This course is your ultimate guide to mastering Web Development Basics, building a strong foundation in HTML, CSS, and JavaScript.
      </p>
      <p class="ratings">
        <span>4.0</span> ⭐ | 8 hours total | 1,379 ratings
      </p>
      <button>Quiz</button>
      <button>Assignment</button>
    </div>

    <!-- Course Content Section -->
    <div class="content-section">
      <h3>Course Content</h3>
      <ul class="course-content">
        <li><input type="checkbox" checked> Tutorial 1 - Introduction to Web (4 min)</li>
        <li><input type="checkbox"> Tutorial 2 - Fundamentals HTML (14 min)</li>
        <li><input type="checkbox"> Tutorial 3 - Topic Title (3 min)</li>
        <li><input type="checkbox"> Tutorial 4 - Topic Title (4 min)</li>
        <li><input type="checkbox"> Tutorial 5 - Topic Title (9 min)</li>
        <li><input type="checkbox"> Tutorial 6 - Topic Title (22 min)</li>
        <li><input type="checkbox"> Tutorial 7 - Topic Title (7 min)</li>
        <li><input type="checkbox"> Tutorial 8 - Topic Title (9 min)</li>
      </ul>
    </div>
  </div>
</body>
</html>
    