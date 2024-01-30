import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("passengerName");
        String age = request.getParameter("Age");
        String gen = request.getParameter("gender");
        String bp = request.getParameter("email");
        String dp = request.getParameter("number");


        BookcheckDatabase obj = new BookcheckDatabase(name, age, gen,bp, dp, response);
        obj.performRegistration();
        // Note: Calling doGet might not be necessary here, depending on your use case.
        // If you want to handle the response in doPost itself, you can remove the doGet call.
    }
}
