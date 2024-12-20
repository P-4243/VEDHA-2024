<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Quiz Graph</title>
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
        <h1>Dynamic Quiz Graph</h1>
    </header>
    <div style="position: relative; height: 400px; width: 100%;">
        <canvas id="quizGraph"></canvas>
    </div>
 <!--   <div class="leaderboard">
            <h2>Leaderboard</h2>
            <div class="scrollable-leaderboard">
                <table class="leaderboard-table">
                    <thead>
                        <tr>
                            <th>Rank</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Total Score</th>
                            <th>Games Played</th>
                        </tr>
                    </thead>
                    <tbody id="leaderboardData">
                     
                    </tbody>
                </table>
            </div>
        </div>--> 

       <!--  <div class="streaks">
            <h2>Streaks (365 days):</h2>
            <div>
                <p>1,523 submissions in the past one year</p>
                <div class="streak-table">
                  
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

                            // Add event listeners for hover effect
                            streak.appendChild(tooltip);

                            streak.addEventListener('mouseover', () => {
                                tooltip.style.display = 'block'; // Show tooltip on hover
                            });

                            streak.addEventListener('mouseout', () => {
                                tooltip.style.display = 'none'; // Hide tooltip when not hovering
                            });
                        });
                    </script>
                </div>
           </div>
           </div> -->
 <script>
 async function fetchLeaderboardData() {
	    try {
	        const response = await fetch('LeaderboardServlet');
	        const data = await response.json();

	        if (data.error) {
	            console.error(data.error);
	            return;
	        }

	        const leaderboardBody = document.getElementById('leaderboardData');
	        leaderboardBody.innerHTML = ''; // Clear any existing rows

	        data.forEach(entry => {
	            const row = document.createElement('tr');
	            row.innerHTML = `
	                <td>${entry.rank}</td>
	                <td>${entry.name}</td>
	                <td>${entry.email}</td>
	                <td>${entry.totalScore}</td>
	                <td>${entry.gamesPlayed}</td>
	            `;
	            leaderboardBody.appendChild(row);
	        });
	    } catch (error) {
	        console.error('Error fetching leaderboard data:', error);
	    }
	}

	async function fetchData() {
	    try {
	        const response = await fetch('MyProgressGraph');
	        const data = await response.json();

	        if (data.error) {
	            console.error(data.error);
	            return;
	        }

	        const labels = data.map(entry => entry.date);
	        const scores = data.map(entry => entry.score);

	        updateGraph(labels, scores);
	    } catch (error) {
	        console.error('Error fetching data:', error);
	    }
	}

    </script>
    <script>
        async function fetchData() {
            try {
                const response = await fetch('MyProgressGraph');
                const data = await response.json();

                if (data.error) {
                    console.error(data.error);
                    return;
                }

                const labels = data.map(entry => entry.date);
                const scores = data.map(entry => entry.score);

                updateGraph(labels, scores);
            } catch (error) {
                console.error('Error fetching data:', error);
            }
        }

        function updateGraph(labels, scores) {
            const ctx = document.getElementById('quizGraph').getContext('2d');

            if (window.quizChart) {
                window.quizChart.data.labels = labels;
                window.quizChart.data.datasets[0].data = scores;
                window.quizChart.update();
            } else {
                window.quizChart = new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: labels,
                        datasets: [{
                            label: 'Quiz Scores',
                            data: scores,
                            fill: true,
                            borderColor: '#4CAF50',
                            backgroundColor: 'rgba(76, 175, 80, 0.2)',
                            tension: 0.4
                        }]
                    },
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
                                beginAtZero: true,
                                title: {
                                    display: true,
                                    text: 'Date'
                                }
                            },
                            y: {
                                beginAtZero: true,
                                title: {
                                    display: true,
                                    text: 'Score'
                                }
                            }
                        }
                    }
                });
            }
        }

        fetchData();
    </script>
</body>
</html>
