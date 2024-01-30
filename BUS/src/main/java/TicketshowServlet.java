import java.io.*;
import java.sql.*;
import java.util.HashMap;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class TicketshowServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String passengerNumber = request.getParameter("passenger_number");
        
        // JDBC URL, username, and password of MySQL server
        String url = "jdbc:mysql://localhost:3307/busbooking";
        String user = "root";
        String password = "";
        
        try {
            // Load JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // Connect to the database
            Connection conn = DriverManager.getConnection(url, user, password);
            
            // Query to retrieve passenger details and route details based on passenger number
            String query = "SELECT pd.*, br.bording_point, br.droping_point, br.date, bd.timing, bd.ticket_price, bd.bus_name, ns.seat_no " +
                    "FROM passenger_details pd " +
                    "INNER JOIN bus_routes br ON pd.passenger_id = br.route_id " +
                    "INNER JOIN bus_details bd ON br.bording_point = bd.bording_point AND br.droping_point = bd.droping_point " +
                    "INNER JOIN name_seat ns ON bd.bus_name = ns.bus_name " +
                    "WHERE pd.passenger_number=?";


            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, passengerNumber);
            ResultSet rs = pstmt.executeQuery();
            
            HashMap<String, String> passengerDetails = new HashMap<>();
            
            if (rs.next()) {
                passengerDetails.put("passenger_number", rs.getString("passenger_number"));
                passengerDetails.put("passenger_name", rs.getString("passenger_name"));
                passengerDetails.put("passenger_age", String.valueOf(rs.getInt("passenger_age")));
                passengerDetails.put("passenger_gender", rs.getString("passenger_gender") );
                // Add more details as needed
                
                // Route details
                passengerDetails.put("bording_point", rs.getString("bording_point"));
                passengerDetails.put("droping_point", rs.getString("droping_point"));
                passengerDetails.put("date", rs.getString("date"));
                
                // Bus details
                passengerDetails.put("timing", rs.getString("timing"));
                passengerDetails.put("ticket_price", String.valueOf(rs.getDouble("ticket_price")));
                
                
                // Name_saet details
                passengerDetails.put("bus_name", rs.getString("bus_name"));
                passengerDetails.put("seat_no", String.valueOf(rs.getDouble("seat_no")));
            }
            
            // Close resources
            rs.close();
            pstmt.close();
            conn.close();
            
            // Set passenger details as request attribute
            request.setAttribute("passengerDetails", passengerDetails);
            
            // Forward the request to the JSP for rendering
            request.getRequestDispatcher("passengerDetails.jsp").forward(request, response);
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
