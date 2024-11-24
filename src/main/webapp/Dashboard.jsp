<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/@codingnepal -->
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vedha-2024</title>
   <link rel="stylesheet" href="d.css">
  <!-- Linking Google fonts for icons -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@24,400,0,0">
</head>
<body>
  <aside class="sidebar">
    <!-- Sidebar header -->
    <header class="sidebar-header">
      <button class="toggler sidebar-toggler">
        <span class="material-symbols-rounded">chevron_left</span>
      </button>
      <button class="toggler menu-toggler">
        <span class="material-symbols-rounded">menu</span>
      </button>
    </header>

    <nav class="sidebar-nav">
      <!-- Primary top nav -->
      <ul class="nav-list primary-nav">
        <li class="nav-item">
          <a href="#" class="nav-link">
            <span class="nav-icon material-symbols-rounded">dashboard</span>
            <span class="nav-label">Dashboard</span>
          </a>
          <span class="nav-tooltip">Dashboard</span>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link">
              <span class="material-symbols-rounded">calendar_today</span>
              <span class="nav-label">Learning Path</span>
            </a>
            <span class="nav-tooltip">Learning Path</span>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <span class="material-symbols-rounded">notifications</span>
              <span class="nav-label">Resource Library</span>
            </a>
            <span class="nav-tooltip">Resource Library</span>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <span class="material-symbols-rounded">group</span>
              <span class="nav-label">Feedback</span>
            </a>
            <span class="nav-tooltip">Feedback</span>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <span class="material-symbols-rounded">insert_chart</span>
              <span class="nav-label">My Progress</span>
            </a>
            <span class="nav-tooltip">My Progress</span>
          </li>
          <li class="nav-item">
              <a href="#" class="nav-link">
                <span class="material-symbols-rounded">tune</span>
                <span class="nav-label">My Preferences</span>
              </a>
              <span class="nav-tooltip">My Preferences</span>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <span class="material-symbols-rounded">sports_esports</span>
                <span class="nav-label">Game Zone</span>
              </a>
              <span class="nav-tooltip">Game Zone</span>
            </li>
          <li class="nav-item">
              <a href="#" class="nav-link">
                <span class="material-symbols-rounded">groups</span>
                <span class="nav-label">Project Collaboration</span>
              </a>
              <span class="nav-tooltip">Project Collaboration</span>
            </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <span class="material-symbols-rounded">settings</span>
              <span class="nav-label">Profile Settings</span>
            </a>
            <span class="nav-tooltip">Profile Settings</span>
          </li>
      </ul>
    </nav>
  </aside>
  <div class="welcome-message">
    <h1>Welcome to Your Dashboard!</h1>
    <p>Your personalized space to track progress, access resources, and stay updated.</p>
  </div>
  
  <div class="main-content">
    <div class="video-recommendations">
      <h2>Recommended Videos</h2>
      <p>Video content goes here...</p>
    </div>
    <div class="calendar">
      <div class="calendar-header">November 2024</div>
      <div class="calendar-grid">
        <!-- Days of the week -->
        <div class="day">Sun</div>
        <div class="day">Mon</div>
        <div class="day">Tue</div>
        <div class="day">Wed</div>
        <div class="day">Thu</div>
        <div class="day">Fri</div>
        <div class="day">Sat</div>
        
        <!-- Dates (1-31) -->
        <div class="date"></div> <!-- Blank cells for offset -->
        <div class="date">1</div>
        <div class="date">2</div>
        <div class="date">3</div>
        <div class="date">4</div>
        <div class="date">5</div>
        <div class="date">6</div>
        <div class="date">7</div>
        <div class="date">8</div>
        <div class="date">9</div>
        <div class="date">10</div>
        <div class="date">11</div>
        <div class="date">12</div>
        <div class="date">13</div>
        <div class="date">14</div>
        <div class="date">15</div>
        <div class="date">16</div>
        <div class="date">17</div>
        <div class="date">18</div>
        <div class="date">19</div>
        <div class="date">20</div>
        <div class="date">21</div>
        <div class="date">22</div>
        <div class="date">23</div>
        <div class="date">24</div>
        <div class="date">25</div>
        <div class="date">26</div>
        <div class="date">27</div>
        <div class="date">28</div>
        <div class="date">29</div>
        <div class="date">30</div>
      </div>
    </div>
  </div>  
<script src="dash.js"></script>
</body>
</html>