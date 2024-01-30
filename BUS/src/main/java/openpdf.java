import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.management.openmbean.OpenType;

import jakarta.servlet.http.HttpServletResponse;

public class openpdf {
    String dbUrl = "jdbc:mysql://localhost:3307/busbooking";
    String dbUname = "root";
    String dbPassword = "";
    String dbDriver = "com.mysql.cj.jdbc.Driver";
    private String name, pass, date;
    private HttpServletResponse response;

    // Constructor with parameters
    public openpdf(String name, String pass, String date, HttpServletResponse response) {
        this.name = name;
        this.pass = pass;
        this.date = date;
        this.response = response;
    }

    // Default constructor (if needed)
    public openpdf() {
        // Default constructor
    }


public void checkAvailability() {
    try {
        Class.forName(dbDriver);
        try (Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword)) {
            // Check if the given bording_point and droping_point match with the data in the database (case-sensitive)
            String sql = "SELECT DISTINCT `bus_name` FROM bus_details WHERE  `bording_point` = ? AND  `droping_point` = ?";
            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, pass);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        // Fetch and display bus names on the HTML page
                        List<String> busNames = new ArrayList<>();
                        do {
                            busNames.add(resultSet.getString("bus_name"));
                        } while (resultSet.next());

                        // Convert the list to a JavaScript array
                        String busNamesArray = busNames.stream().map(name -> "'" + name + "'").collect(Collectors.joining(", ", "[", "]"));

                        try (PrintWriter out = response.getWriter()) {
                            out.println("<script type='text/javascript'>");
                            out.println("var busNames = " + busNamesArray + ";");
                            out.println("var queryString = '?busNames=' + encodeURIComponent(JSON.stringify(busNames));");
                            out.println("window.location='testing.html' + queryString;");
                            out.println("</script>");
                        }



                    } else {
                        // No matching bus found, show an alert message
                        try (PrintWriter out = response.getWriter()) {
                            out.println("<script type='text/javascript'>");
                            out.println("alert('Bus Not Found.');");
                            out.println("window.location='bookcheckmessage.html';");
                            out.println("</script>");
                        }
                    }
                }
            }
            
        }
    }catch (ClassNotFoundException | SQLException | IOException e) {
            ((Throwable) e).printStackTrace(); // Use a logging framework in a real application
        }
    

}
}
