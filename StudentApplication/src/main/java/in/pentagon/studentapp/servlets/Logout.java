package in.pentagon.studentapp.servlets;




	import java.io.IOException;

	import jakarta.servlet.ServletException;
	import jakarta.servlet.annotation.WebServlet;
	import jakarta.servlet.http.HttpServlet;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
	import jakarta.servlet.http.HttpSession;

	@WebServlet("/logout")  // ✅ This must match your form action
	public class Logout  extends HttpServlet {
	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	            throws ServletException, IOException {
	        HttpSession session = req.getSession(false);
	        if (session != null) {
	            session.invalidate(); // clear session
	        }
	        req.setAttribute("success", "Logged out successfully!");
	        req.getRequestDispatcher("login.jsp").forward(req, resp);
	    }
	}


