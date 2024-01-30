import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/BookRegistrationServlet")
public class BookRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Retrieve book details from the form
        String busname = request.getParameter("bus_name");
        String bording = request.getParameter("bording_point");
        String droping = request.getParameter("droping_point");
        String time = request.getParameter("timing");
        String price = request.getParameter("amount");

        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/busbooking", "root", "");
             PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO bus_details (bus_name, bording_point , droping_point, timing, ticket_price ) VALUES (?, ?, ?, ?, ?)")) {

            preparedStatement.setString(1, busname);
            preparedStatement.setString(2, bording);
            preparedStatement.setString(3, droping);
            preparedStatement.setString(4, time);
            preparedStatement.setString(5, price);


            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                out.println("BUS DETAILS UPDATED SUCCESSFULLY!");
            } else {
                out.println("ERROR IN BUS DETAILS UPDATE.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            out.println("AN ERROR OCCURRED DURING BUS DETAILS UPDATION.");
        }
    }
}
