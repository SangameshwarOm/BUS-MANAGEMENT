<%@ page import="java.util.HashMap" %>

<!DOCTYPE html>
<html>
<head>
    <title>Vintage Bus Ticket - Passenger Details</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        background-image: url(https://static.vecteezy.com/system/resources/previews/024/942/076/non_2x/double-decker-bus-speeds-through-city-traffic-commuters-on-the-move-generated-by-ai-free-photo.jpg);     
        margin: #00000;
        padding: 0;
    }
    .ticket {
        background-color: rgba(255, 255, 255, 0.9);
        border: 2px solid #00000;
        border-radius: 10px;
        margin: 20px auto;
        padding: 30px; /* Increased padding for more space */
        max-width: 1100px; /* Increased max-width for wider ticket */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 90%; /* Adjusted width to 90% */
        margin-left: 5%; /* Center the ticket */
        margin-right: 5%; /* Center the ticket */
    }
    h2 {
        text-align: center;
        font-size: 24px;
        margin-bottom: 20px;
        color: #00000;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 15px; /* Increased padding for cells */
        border-bottom: 1px solid #ddd;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    .not-found {
        text-align: center;
        color: #ff0000;
        font-style: italic;
    }
</style>

</head>
<body>
    <div class="ticket">
        <h2>Vintage Bus Ticket - Passenger Details</h2>
        <table>
            <tr>
                <th>Passenger Name</th>
                <th>Passenger Number</th>   
                <th>Passenger Age</th>
                <th>Passenger Gender</th>
                <th>Boarding Point</th>
                <th>Dropping Point</th>
                <th>Journey Date</th>
                <th>Bus Timing</th>
                <th>Ticket Price</th>
                <th>Bus Name</th>
                <th>Seat No</th>
            </tr>
            <%
                HashMap<String, String> passengerDetails = (HashMap<String, String>) request.getAttribute("passengerDetails");
                if (passengerDetails != null && !passengerDetails.isEmpty()) {
            %>
                <tr>
                    <td><%= passengerDetails.get("passenger_name") %></td>
                    <td><%= passengerDetails.get("passenger_number") %></td>
                    <td><%= passengerDetails.get("passenger_age") %></td>
                    <td><%= passengerDetails.get("passenger_gender") %></td>
                    <td><%= passengerDetails.get("bording_point") %></td>
                    <td><%= passengerDetails.get("droping_point") %></td>
                    <td><%= passengerDetails.get("date") %></td>
                    <td><%= passengerDetails.get("timing") %></td>
                    <td><%= passengerDetails.get("ticket_price") %></td>
                    <td><%= passengerDetails.get("bus_name") %></td>
                    <td><%= passengerDetails.get("seat_no") %></td>
                </tr>
            <%
                } else {
            %>
                <tr>
                    <td colspan="9" class="not-found">Passenger not found!</td>
                </tr>
            <%
                }
            %>
        </table>
    </div>
</body>
</html>
