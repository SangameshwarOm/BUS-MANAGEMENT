import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.http.HttpServletResponse;

public class Busavailable {
    String dbUrl = "jdbc:mysql://localhost:3307/busbooking";
    String dbUname = "root";
    String dbPassword = "";
    String dbDriver = "com.mysql.cj.jdbc.Driver";
    private String name, pass, date	;
    private HttpServletResponse response;

    // Constructor with parameters
    public Busavailable(String name, String pass, String date, HttpServletResponse response) {
        this.name = name;
        this.pass = pass;
        this.date = date;
        this.response = response;
    }

    // Default constructor (if needed)
    public Busavailable() {
        // Default constructor
    }

    public void check() {
        try {
            Class.forName(dbDriver);

            // Check if the user with the given name, email, and mobile number already exist
            try (Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword)) {
                String sql = "INSERT INTO bus_routes (`bording_point`, `droping_point`, `date`) VALUES (?, ?, ?)";
                try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                    preparedStatement.setString(1, name);
                    preparedStatement.setString(2, pass);
                    preparedStatement.setString(3, date);

                    preparedStatement.executeUpdate();
                    checkAvailability();                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle the error, show a message, or redirect to an error page
        }
    }


    private void checkAvailability() {
        // Assuming openpdf is the class that checks availability
        openpdf obj1 = new openpdf(name,pass,date, response);
        obj1.checkAvailability();
    }
}
