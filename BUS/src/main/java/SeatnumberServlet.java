import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/SeatnumberServlet")
public class SeatnumberServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SeatnumberServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get form parameters
        String busName = request.getParameter("busName");
        String seatNo = request.getParameter("seatNo");

        // JDBC variables for database connection
        String jdbcUrl = "jdbc:mysql://localhost:3307/busbooking"; // Update with your database URL
        String dbUser = "root"; // Update with your database username
        String dbPassword = ""; // Update with your database password

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish database connection
            try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword)) {
                // Prepare SQL statement for insertion
                String sql = "INSERT INTO name_seat (bus_name, seat_no) VALUES (?, ?)";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                    // Set parameters for the SQL statement
                    preparedStatement.setString(1, busName);
                    preparedStatement.setString(2, seatNo);

                    // Execute the SQL statement
                    int rowsAffected = preparedStatement.executeUpdate();

                    if (rowsAffected > 0) {
                        // Redirect to the next HTML page
                    	 response.sendRedirect("bookshow.html");
                    } else {
                        out.println("<p>Failed to insert data.</p>");
                    }
                }
            }
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        }
    }
}
