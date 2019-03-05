import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jm.dao.VerifyLogin;
import com.jm.model.Student;


public class LoginServlet extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6189969869246489166L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("email");
		String password=request.getParameter("password");
		boolean status = false;
		
		
		if( null==uname || null==password  ) {
			response.sendRedirect("/mailcasting/");  
		}
		
		else if( uname.equals("admin") || password.equals("admin")  ) {
			status = true;
		}
		if(status){
			HttpSession session=request.getSession();
			session.setAttribute("username",uname);
//			out.print("Welcome    " + uname);
			
			RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
			rd.include(request, response);
		}
		else{
			try {
				RequestDispatcher rd = null;
				Student student = VerifyLogin.verifyLoginForStudent(uname, password);
			 if( null == student ) {
				 rd =request.getRequestDispatcher("invalidauthentication.jsp");	 
			 }
			 else {
				rd=request.getRequestDispatcher("studentTimeTable.jsp");
			 }
			
			rd.include(request, response);
			}
			catch(Exception e ) {
				e.printStackTrace();
			}
		}
		out.close();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doPost(request, response);
	}
}

