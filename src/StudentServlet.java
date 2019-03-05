	import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jm.dao.FeesDao;
import com.jm.dao.StudentDao;
import com.jm.model.Fees;
import com.jm.model.Student;
import com.jm.util.EmailUtil;
import com.jm.util.JMConstants;


public class StudentServlet extends HttpServlet {


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action=request.getParameter("action");


		if(action.equals(JMConstants.CREATE_STUDENT)){

			Student student= new Student();

			student.setStudentName(request.getParameter("studentName"));
			student.setStd(request.getParameter("std"));
			student.setSchoolName(request.getParameter("schoolName"));
			student.setReferredBy(request.getParameter("referredBy"));
			student.setParentName(request.getParameter("parentName"));
			student.setMobileNo(request.getParameter("mobileNo"));
			student.setEmailId(request.getParameter("emailId"));
			student.setDateOfBirth(request.getParameter("dateOfBirth"));
			student.setAddress(request.getParameter("address"));
			student.setUserId(request.getParameter("userid"));
			student.setPassword(request.getParameter("password"));

			try {
				Student updatedStudent=StudentDao.registerStudent(student);
				if(updatedStudent!=null) {
					
					Fees fees = new Fees();
					fees.setFeespaid(0);
					Long totalfees=Long.parseLong(request.getParameter("fees"));
					fees.setFeesbalance(totalfees);
					fees.setStudentID(updatedStudent.getStudentID());
					fees.setTotalfees(totalfees);
					FeesDao.enterFeeDetails(fees);
					
					EmailUtil emailUtil=new EmailUtil();
					emailUtil.sendEmail(updatedStudent);
					request.setAttribute("updatedStudent", updatedStudent);
				}
				
				else {
					request.setAttribute("updatedStudent", null);
				}

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			RequestDispatcher rd=request.getRequestDispatcher("studentcreateconfirmation.jsp");
			rd.include(request, response);
			}

	}

}
