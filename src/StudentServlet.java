import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class StudentServlet extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action=request.getParameter("action");
		
		
		if(action.equals("createStudent")){
		
			System.out.println("Action ="+action);
			
			
			
			
			RequestDispatcher rd=request.getRequestDispatcher("student.jsp");
			rd.include(request, response);
			
		}
		
	}

}
