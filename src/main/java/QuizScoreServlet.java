
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;
@WebServlet("/QuizScoreServlet")

public class QuizScoreServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String DB_URL = "jdbc:mysql://localhost:3306/vedha2024";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Onetwothree123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Get the quiz score from the request or session
        int score = Integer.parseInt(request.getParameter("score")); // Assuming score is passed as a parameter

        // Get email from session
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email"); // Email from login session

        Connection conn = null;
        PreparedStatement fetchStmt = null;
        PreparedStatement insertStmt = null;

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Step 1: Fetch UserID based on the email
            String fetchSql = "SELECT UserID FROM users WHERE Email = ?";
            fetchStmt = conn.prepareStatement(fetchSql);
            fetchStmt.setString(1, email);

            ResultSet rs = fetchStmt.executeQuery();

            if (rs.next()) {
                int userId = rs.getInt("UserID");

                // Step 2: Insert or update quiz score for the user
                String insertSql = "INSERT INTO quizscore (UserID, Score) VALUES (?, ?) ON DUPLICATE KEY UPDATE Score = ?";
                insertStmt = conn.prepareStatement(insertSql);
                insertStmt.setInt(1, userId);
                insertStmt.setInt(2, score);
                insertStmt.setInt(3, score);

                int rowsAffected = insertStmt.executeUpdate();

                if (rowsAffected > 0) {
                    response.getWriter().println("Quiz score updated successfully.");
                    response.sendRedirect("Dashboard.jsp"); // Redirect to the dashboard
                } else {
                    response.getWriter().println("Failed to update quiz score.");
                }
            } else {
                response.getWriter().println("User not found. Please login again.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred: " + e.getMessage());
        } finally {
            // Close resources
            try {
                if (fetchStmt != null) fetchStmt.close();
                if (insertStmt != null) insertStmt.close();
                if (conn != null) conn.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}
