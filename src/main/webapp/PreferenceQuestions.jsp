<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Learning Style</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #00a83f;
      padding: 20px;
      margin: 0;
    }
    .container {
      background-color: white;
      border-radius: 10px;
      padding: 20px;
      margin: 0 auto;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    }
    header {
      display: flex;
      align-items: center;
      margin-bottom: 20px;
    }
    header h1 {
      color: #00a83f;
      font-size: 18px;
      margin: 0;
    }
    .question {
      margin-bottom: 20px;
      border: 1px solid #00a83f;
      border-radius: 10px;
      padding: 15px;
    }
    .question label {
      display: block;
      font-size: 14px;
      margin-bottom: 10px;
      font-weight: bold;
      color: #333;
    }
    .question div {
      margin-bottom: 10px;
     
    }

    button {
      display: block;
      width: 100%;
      background-color: #00a83f;
      color: white;
      border: none;
      padding: 10px;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    button:hover {
      background-color: #007d2d;
    }
  </style>
</head>
<body>

  <div class="container">
    <header>
      <a href="#" style="color: white; text-decoration: none; font-size: 20px; margin-right: 10px;">&larr;</a>
      <h1>Learning Style</h1>
    </header>

    <form>
      <!-- Question 1 -->
      <div class="question">
        <label>What type of learning mode do you prefer?</label>
        <div style="display:flex"><input type="radio" id="video" name="learning_mode" value="video_lessons"> <label style="margin-top:11px" for="video">Video-based lessons</label></div>
        <div style="display:flex"><input type="radio" id="cheat" name="learning_mode" value="cheat_sheets"> <label style="margin-top:11px" for="cheat">Cheat sheets</label></div>
        <div style="display:flex"><input type="radio" id="hands-on" name="learning_mode" value="simulations"> <label style="margin-top:11px" for="hands-on">Hands-on practice and simulations</label></div>
        <div style="display:flex"><input type="radio" id="reading" name="learning_mode" value="reading"> <label style="margin-top:11px" for="reading">Reading articles and documents</label></div>
      </div>

      <!-- Question 2 -->
      <div class="question">
        <label>How do you prefer to study?</label>
        <div style="display:flex"><input type="radio" id="own_pace" name="study_preference" value="own_pace"> <label style="margin-top:11px" for="own_pace">At my own pace</label></div>
        <div style="display:flex"><input type="radio" id="schedule" name="study_preference" value="set_schedule"> <label style="margin-top:11px" for="schedule">With a set schedule</label></div>
        <div style="display:flex"><input type="radio" id="bursts" name="study_preference" value="focused_bursts"> <label style="margin-top:11px" for="bursts">In focused bursts with breaks</label></div>
        <div style="display:flex"><input type="radio" id="group" name="study_preference" value="group_study"> <label style="margin-top:11px" for="group">In group study sessions</label></div>
      </div>

      <!-- Question 3 -->
      <div class="question">
        <label>How do you prefer to track your progress?</label>
        <div style="display:flex"><input type="radio" id="progress_bar" name="progress_tracking" value="progress_bar"> <label style="margin-top:11px" for="progress_bar">Progress bar</label></div>
        <div style="display:flex"><input type="radio" id="badges" name="progress_tracking" value="badges"> <label style="margin-top:11px" for="badges">Badges or certificates</label></div>
        <div style="display:flex"v><input type="radio" id="quizzes" name="progress_tracking" value="quizzes"> <label style="margin-top:11px" for="quizzes">Regular quizzes</label></div>
      </div>

      <!-- Question 4 -->
      <div class="question">
        <label>What difficulty level do you prefer?</label>
        <div style="display:flex"><input type="radio" id="easy" name="difficulty_level" value="easy"> <label style="margin-top:11px" for="easy">Easy</label></div>
        <div style="display:flex"><input type="radio" id="medium" name="difficulty_level" value="medium"> <label style="margin-top:11px" for="medium">Medium</label></div>
        <div style="display:flex"><input type="radio" id="hard" name="difficulty_level" value="hard"> <label style="margin-top:11px" for="hard">Hard</label></div>
        <div style="display:flex"><input type="radio" id="customizable" name="difficulty_level" value="customizable"> <label style="margin-top:11px" for="customizable">Customizable</label></div>
      </div>

      <!-- Question 5 -->
      <div class="question">
        <label>How often do you want new lessons?</label>
        <div style="display:flex"><input type="radio" id="daily" name="lesson_frequency" value="daily"> <label style="margin-top:11px" for="daily">Daily</label></div>
        <div style="display:flex"><input type="radio" id="few_times" name="lesson_frequency" value="few_times"> <label style="margin-top:11px" for="few_times">A few times a week</label></div>
        <div style="display:flex"><input type="radio" id="weekly" name="lesson_frequency" value="weekly"> <label style="margin-top:11px" for="weekly">Weekly</label></div>
        <div style="display:flex"><input type="radio" id="weekends" name="lesson_frequency" value="weekends"> <label style="margin-top:11px" for="weekends">Weekends</label></div>
      </div>

      <!-- Question 6 -->
      <div class="question">
        <label>What do you prefer for practice?</label>
        <div style="display:flex"><input type="radio" id="quizzes_practice" name="practice_type" value="quizzes"> <label style="margin-top:11px" for="quizzes_practice">Quizzes</label></div>
        <div style="display:flex"><input type="radio" id="assignments" name="practice_type" value="assignments"> <label style="margin-top:11px" for="assignments">Assignments</label></div>
        <div style="display:flex"><input type="radio" id="real" name="practice_type" value="real_examples"> <label style="margin-top:11px" for="real">Real examples</label></div>
        <div style="display:flex"><input type="radio" id="flashcards" name="practice_type" value="flashcards"> <label style="margin-top:11px" for="flashcards">Flashcards</label></div>
      </div>

      <!-- Question 7 -->
      <div class="question">
        <label>How fast do you like to move?</label>
        <div style="display:flex"><input type="radio" id="quickly" name="pace" value="quickly"> <label style="margin-top:11px" for="quickly">Quickly</label></div>
        <div style="display:flex"><input type="radio" id="steady" name="pace" value="steady"> <label style="margin-top:11px" for="steady">Steady</label></div>
        <div style="display:flex"><input type="radio" id="slowly" name="pace" value="slowly"> <label style="margin-top:11px" for="slowly">Slowly</label></div>
        <div style="display:flex"><input type="radio" id="adjusting" name="pace" value="adjusting"> <label style="margin-top:11px" for="adjusting">Adjusting speed</label></div>
      </div>

      <!-- Question 8 -->
      <div class="question">
        <label>How do you learn from mistakes?</label>
        <div style="display:flex"><input type="radio" id="instant" name="mistake_learning" value="instant_feedback"> <label for="instant">Instant feedback</label></div>
        <div style="display:flex"><input type="radio" id="end" name="mistake_learning" value="end_of_lesson"> <label for="end">End of lesson</label></div>
        <div style="display:flex"><input type="radio" id="after" name="mistake_learning" value="after_activities"> <label for="after">After activities</label></div>
        <div style="display:flex"><input type="radio" id="own" name="mistake_learning" value="on_my_own"> <label for="own">On my own</label></div>
      </div>

      <!-- Submit Button -->
      <button type="submit">Submit</button>
    </form>
  </div>

</body>
</html>
