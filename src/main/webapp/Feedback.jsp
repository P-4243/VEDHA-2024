<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Interactive Feedback</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #eafaf1;
    }

    .header {
      background-color: #40bf40;
      color: white;
      text-align: center;
      padding: 10px 0;
      font-size: 18px;
    }

    .feedback-container {
      margin: 30px auto;
      max-width: 400px;
      padding: 20px;
      border-radius: 10px;
      background-color: #f5fff9;
      text-align: center;
    }

    .feedback-container textarea {
      width: 100%;
      height: 80px;
      padding: 10px;
      border: 1px solid #cfcfcf;
      border-radius: 8px;
      resize: none;
      font-size: 14px;
    }

    .feedback-container .stars {
      margin: 15px 0;
      direction: rtl; /* Make the stars align from right to left */
    }

    .feedback-container .stars input {
      display: none;
    }

    .feedback-container .stars label {
      font-size: 24px;
      color: #ddd;
      cursor: pointer;
    }

    .feedback-container .stars input:checked ~ label,
    .feedback-container .stars label:hover,
    .feedback-container .stars label:hover ~ label {
      color: #ffb400;
    }

    .feedback-container .submit-btn {
      background-color: #40bf40;
      color: white;
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
    }

    .feedback-container .submit-btn:hover {
      background-color: #36a336;
    }
  </style>
</head>
<body>
  <div class="header">Interactive Feedback</div>
  <div class="feedback-container">
    <h3>Feedbacks</h3>
    <textarea placeholder="Write your feedback here..."></textarea>
    <div class="stars">
      <input type="radio" id="star5" name="rating" value="5">
      <label for="star5">★</label>
      <input type="radio" id="star4" name="rating" value="4">
      <label for="star4">★</label>
      <input type="radio" id="star3" name="rating" value="3">
      <label for="star3">★</label>
      <input type="radio" id="star2" name="rating" value="2">
      <label for="star2">★</label>
      <input type="radio" id="star1" name="rating" value="1">
      <label for="star1">★</label>
    </div>
    <button class="submit-btn">Submit</button>
  </div>
</body>
</html>
    