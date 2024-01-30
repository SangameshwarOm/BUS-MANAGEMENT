import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/DemoServLet")
public class DemoServLet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DemoServLet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Your doGet implementation
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        String email = request.getParameter("email");
        String phone_no = request.getParameter("number");

        Hello hello = new Hello(name, pass, email, phone_no);
        StringBuilder consoleMessages = hello.performRegistration();

        // Send styled and centered registration status and login button to the webpage
        response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()) {
            out.println("<html><head><title>Registration Status</title>");
            out.println("<style>");
            out.println("body { font-family: 'Arial', sans-serif; background-color: #fffff; text-align: center;background-size: cover;\r\n"
            		+ "            background-image: url(https://static.vecteezy.com/system/resources/previews/024/942/076/non_2x/double-decker-bus-speeds-through-city-traffic-commuters-on-the-move-generated-by-ai-free-photo.jpg); display: flex; align-items: center; justify-content: center; height: 100vh; margin: 0; }");
            out.println("h2 { color: #ffff; }");
            out.println("p { color: #ffff; margin: 20px 0; }");
            
            
            out.println("form { margin-top: 20px; }");
            out.println("input[type='submit'] { padding: 10px 20px; font-size: 16px; background-color: #00CCCC; color: #fff; border: none; cursor: pointer; }");
            out.println("</style>");
            out.println("</head><body>");
            out.println("<div>");
            out.println("<h2>Registration Status</h2>");
            out.println("<p>" + consoleMessages.toString() + "</p>");

            // Add styled login button to redirect to Login.html
            out.println("<form action='Login.html'>");
            out.println("<input type='submit' value='Go to Login'/>");
            out.println("</form>");
            out.println("</div>");
            out.println("</body></html>");
        }
    }
}
