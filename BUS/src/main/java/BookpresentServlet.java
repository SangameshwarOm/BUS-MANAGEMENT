import java.awt.Desktop;
import java.net.URI;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class BookpresentServlet
 */
public class BookpresentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookpresentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append(("http://localhost:8080/mission2/home.html"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	         String name = request.getParameter("passengerName");
	         String age = request.getParameter("Age");
	         
	         String bp = request.getParameter("email");
	         String dp = request.getParameter("number");
	         
	         BookcheckDatabase obj = new BookcheckDatabase(name, age,bp,dp,dp, response);
	         obj.performRegistration();
	
		doGet(request, response);
	}

}
