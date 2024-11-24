<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Resource Library</title>
  <style>
    /* General Styles */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    /* Header */
    header {
      background-color: #28a745;
      padding: 15px 20px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    header h1 {
      font-size: 24px;
      margin: 0;
    }

    header .menu-icon {
      font-size: 24px;
      cursor: pointer;
    }

    /* Search Bar */
    .search-bar {
      display: flex;
      justify-content: center;
      margin: 20px 0;
    }

    .search-bar input[type="text"] {
      width: 70%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }

    .search-bar button {
      padding: 10px 20px;
      background-color: #28a745;
      border: none;
      color: white;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
    }

    /* Resource Cards */
    .resource-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 20px;
      padding: 20px;
    }

    .resource-card {
      background-color: #e8f5e9;
      width: 250px;
      padding: 15px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .resource-card h3 {
      font-size: 18px;
      color: #333;
      margin-bottom: 10px;
    }

    .resource-card p {
      font-size: 14px;
      color: #666;
      margin-bottom: 15px;
    }

    .resource-card button {
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      color: white;
      cursor: pointer;
      font-size: 14px;
    }

    .resource-card .access-btn {
      background-color: #007bff;
    }

    .resource-card .read-btn {
      background-color: #ffc107;
    }

    .resource-card .watch-btn {
      background-color: #17a2b8;
    }

    .resource-card .join-btn {
      background-color: #28a745;
    }
  </style>
</head>
<body>
  <!-- Header -->
  <header>
    <span class="menu-icon">&#9776;</span>
    <h1>Resource Library</h1>
  </header>

  <!-- Search Bar -->
  <div class="search-bar">
    <input type="text" placeholder="Search for resources...">
    <button>🔍</button>
  </div>

  <!-- Resource Cards -->
  <div class="resource-container">
    <div class="resource-card">
      <h3>Web Development Basics</h3>
      <p>Practice math problems with this comprehensive interactive worksheet.</p>
      <button class="access-btn">Access Resource</button>
    </div>
    <div class="resource-card">
      <h3>DBMS (MySql)</h3>
      <p>Read an in-depth article about the process of photosynthesis and its importance.</p>
      <button class="read-btn">Read Article</button>
    </div>
    <div class="resource-card">
      <h3>Data Structure</h3>
      <p>Learn the basics of HTML with this step-by-step video tutorial.</p>
      <button class="watch-btn">Watch Video</button>
    </div>
    <div class="resource-card">
      <h3>Java</h3>
      <p>Join a coding project to practice and improve your collaborative programming skills.</p>
      <button class="join-btn">Join Activity</button>
    </div>
  </div>
</body>
</html>
    