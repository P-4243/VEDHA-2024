package veDha;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/vedha2024";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "#Dhuvihegde26";

    // SQL query
    private static final String SELECT_QUERY = "SELECT * FROM users WHERE Email = ? AND passwordHash = ?";

    public Login() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String Email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement ps = con.prepareStatement(SELECT_QUERY)) {

            // Set query parameters
            ps.setString(1, Email);
            ps.setString(2, password);

            // Execute query
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    // Login successful, create a session
                    HttpSession session = request.getSession();
                    session.setAttribute("email", Email); // Save email in session
                    session.setMaxInactiveInterval(30 * 60); // Set session timeout to 30 minutes

                    // Redirect to dashboard
                    response.sendRedirect("SDashboard.jsp");
                } else {
                    // Invalid login
                    pw.println("<h3 style='color:red;'>Invalid email or password!</h3>");
                    request.getRequestDispatcher("Login.html").include(request, response);
                }
            }
        } catch (SQLException e) {
            // Log and display a friendly error message
            e.printStackTrace();
            pw.println("<h3 style='color:red;'>An unexpected error occurred. Please try again later.</h3>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response); // Handle GET requests as POST
    }
}
