<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Progress</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .container {
            padding: 20px;
        }
        .quiz-graph {
            margin-bottom: 30px;
        }
        .quiz-graph h2 {
            font-size: 18px;
        }
        .leaderboard {
            margin-bottom: 30px;
        }
        .leaderboard h2 {
            font-size: 18px;
        }
        .leaderboard-table {
            width: 100%;
            border-collapse: collapse;
            overflow-x: auto;
        }
        .leaderboard-table th, .leaderboard-table td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        .leaderboard-table th {
            background-color: #4CAF50;
            color: white;
        }
        .scrollable-leaderboard {
            max-height: 400px;
            overflow-y: auto;
        }
        .streaks {
            margin-bottom: 30px;
        }
        .streaks h2 {
            font-size: 18px;
        }
        .streaks .streak-table {
            display: flex;
            flex-wrap: wrap;
            gap: 5px;
        }
        .streaks .streak-table div {
            width: 15px;
            height: 15px;
            border-radius: 50%;
        }
        .streaks .streak-table div.inactive {
            background-color: #ddd;
        }
        .streaks .streak-table div.active {
            background-color: #4CAF50;
        }
        .streaks .streak-table div.medium {
            background-color: #ffeb3b;
        }
        .streaks .streak-table div.high {
            background-color: #ff5722;
        }
        .tooltip {
    animation: fadeIn 0.2s ease-in-out;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(-5px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}
        
    </style>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <header>
        <h1>My Progress</h1>
    </header>

    <div class="container">
        <div class="quiz-graph">
            <h2>Quiz Graph :</h2>
            <canvas id="quizGraph" width="400" height="200"></canvas>
        </div>

        <div class="leaderboard">
            <h2>Leaderboard:</h2>
            <div class="scrollable-leaderboard">
                <table class="leaderboard-table">
                    <thead>
                        <tr>
                            <th>Rank</th>
                            <th>Name</th>
                            <th>LP</th>
                            <th>Games</th>
                            <th>Top 4</th>
                            <th>Win</th>
                            <th>Top Carries</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Leaderboard data with more entries -->
                        <tr>
                            <td>1</td>
                            <td>TTTVBebe872</td>
                            <td>1578LP</td>
                            <td>209</td>
                            <td>75.6%</td>
                            <td>31.1%</td>
                            <td>Icons</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Ginggg</td>
                            <td>1460LP</td>
                            <td>195</td>
                            <td>76.4%</td>
                            <td>28.2%</td>
                            <td>Icons</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>setsuko</td>
                            <td>1334LP</td>
                            <td>239</td>
                            <td>69.6%</td>
                            <td>24.3%</td>
                            <td>Icons</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>FB Arat</td>
                            <td>1301LP</td>
                            <td>182</td>
                            <td>74.2%</td>
                            <td>32.4%</td>
                            <td>Icons</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Dishsoap</td>
                            <td>1262LP</td>
                            <td>194</td>
                            <td>76.2%</td>
                            <td>28.0%</td>
                            <td>Icons</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>Rubic</td>
                            <td>1251LP</td>
                            <td>150</td>
                            <td>72.5%</td>
                            <td>33.3%</td>
                            <td>Icons</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>uL 딥</td>
                            <td>1156LP</td>
                            <td>142</td>
                            <td>69.6%</td>
                            <td>32.4%</td>
                            <td>Icons</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>Xcrescent</td>
                            <td>1125LP</td>
                            <td>159</td>
                            <td>76.0%</td>
                            <td>31.4%</td>
                            <td>Icons</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>Xcrescent</td>
                            <td>1125LP</td>
                            <td>159</td>
                            <td>76.0%</td>
                            <td>31.4%</td>
                            <td>Icons</td>
                        </tr>
                         <tr>
                            <td>8</td>
                            <td>Xcrescent</td>
                            <td>1125LP</td>
                            <td>159</td>
                            <td>76.0%</td>
                            <td>31.4%</td>
                            <td>Icons</td>
                        </tr>
                         <tr>
                            <td>8</td>
                            <td>Xcrescent</td>
                            <td>1125LP</td>
                            <td>159</td>
                            <td>76.0%</td>
                            <td>31.4%</td>
                            <td>Icons</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="streaks">
            <h2>Streaks (365 days):</h2>
            <div>
                <p>1,523 submissions in the past one year</p>
                <div class="streak-table">
                    <!-- Create streak boxes for 365 days with varying colors -->
                 <script>
              // Create streak boxes dynamically
                 const streakContainer = document.querySelector('.streak-table');
                 for (let i = 0; i < 365; i++) {
                     let streakClass = 'inactive';
                     let random = Math.random();
                     if (random < 0.4) {
                         streakClass = 'active';
                     } else if (random < 0.7) {
                         streakClass = 'medium';
                     } else {
                         streakClass = 'high';
                     }
                     const streakBox = document.createElement('div');
                     streakBox.classList.add(streakClass);
                     streakBox.style.position = 'relative'; // Ensure the streak box is positioned
                     streakContainer.appendChild(streakBox);
                 }

                 // Add hoverable tooltip for each streak
                 document.querySelectorAll('.streak-table div').forEach((streak, index) => {
                     // Generate random number of questions solved (1 to 50)
                     const questionsSolved = Math.floor(Math.random() * 50) + 1;

                     // Tooltip content for the circle
                     const tooltip = document.createElement('div');
                     tooltip.className = 'tooltip';
                     tooltip.innerText = `Day ${index + 1}: Solved ${questionsSolved} questions`;

                     // Style the tooltip
                     tooltip.style.position = 'absolute';
                     tooltip.style.backgroundColor = '#333';
                     tooltip.style.color = '#fff';
                     tooltip.style.padding = '5px 10px';
                     tooltip.style.borderRadius = '5px';
                     tooltip.style.fontSize = '12px';
                     tooltip.style.display = 'none';
                     tooltip.style.top = '-30px'; // Position the tooltip above the circle
                     tooltip.style.left = '50%';
                     tooltip.style.transform = 'translateX(-50%)';

                     // Add the tooltip to the streak box
                     streak.appendChild(tooltip);

                     // Event listeners for showing/hiding the tooltip
                     streak.addEventListener('mouseenter', () => {
                         tooltip.style.display = 'block';
                     });

                     streak.addEventListener('mouseleave', () => {
                         tooltip.style.display = 'none';
                     });
                 });

    </script>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Data for the quiz graph
        const data = {
            labels: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30'],
            datasets: [{
                label: 'Monthly Problems Solved',
                data: [0, 2, 3, 1, 4, 0, 2, 5, 3, 4, 0, 6, 2, 3, 4, 5, 6, 4, 3, 4, 5, 3, 4, 2, 5, 4, 6, 3, 2, 0],
                fill: true,
                borderColor: '#ff7f0e',
                backgroundColor: 'rgba(255, 127, 14, 0.2)',
                tension: 0.4
            }]
        };

        const config = {
            type: 'line',
            data: data,
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    tooltip: {
                        mode: 'index',
                        intersect: false,
                    }
                },
                scales: {
                    x: {
                        beginAtZero: true
                    },
                    y: {
                        beginAtZero: true
                    }
                }
            }
        };

        // Create the quiz graph using Chart.js
        const quizGraph = new Chart(
            document.getElementById('quizGraph'),
            config
        );
  
    </script>
    
</body>
</html>
    