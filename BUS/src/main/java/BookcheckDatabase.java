import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.http.HttpServletResponse;

public class BookcheckDatabase {
    String dbUrl = "jdbc:mysql://localhost:3307/busbooking";
    String dbUname = "root";
    String dbPassword = "";
    String dbDriver = "com.mysql.cj.jdbc.Driver";
    private String name, age, dp, bp,gen;
    private HttpServletResponse response;

    // Constructor with parameters
    public BookcheckDatabase(String name, String age,String gen, String dp, String bp, HttpServletResponse response) {
        this.name = name;
        this.age = age;
        this.gen = gen;
        this.dp = dp;
        this.bp = bp;
        this.response = response;
    }

    // Default constructor (if needed)
    public BookcheckDatabase() {
        // Default constructor
    }

    public void performRegistration() {
        try {
            Class.forName(dbDriver);

            // Check if the user with the given name, email, and mobile number already exist
            try (Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword)) {
                String sql = "INSERT INTO passenger_details (`Passenger_name`, `Passenger_age`,`Passenger_gender`, `passenger_email`, `passenger_number`) VALUES (?, ?, ?, ?, ?)";
                try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                    preparedStatement.setString(1, name);
                    preparedStatement.setString(2, age);
                    preparedStatement.setString(3, gen);
                    preparedStatement.setString(4, dp);
                    preparedStatement.setString(5, bp);

                    preparedStatement.executeUpdate();
                    redirectToNextPage("bookcheckmessage.html");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle the error, show a message, or redirect to an error page
        }
    }

    private void redirectToNextPage(String nextPage) {
        try {
            response.sendRedirect(nextPage);
        } catch (Exception e) {
            e.printStackTrace();
            // Handle the error, show a message, or redirect to an error page
        }
    }
}
