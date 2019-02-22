import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.jm.dao.StudentDao;
import com.jm.model.Student;
import com.jm.util.Mailer;
import com.jm.util.EmailUtil;
import com.jm.util.JMConstants;


public class StudentServlet extends HttpServlet {


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action=request.getParameter("action");


		if(action.equals(JMConstants.CREATE_STUDENT)){

			Student student= new Student();

			student.setStudentName(request.getParameter("studentName"));
			student.setStd(request.getParameter("dateOfBirth"));
			student.setSchoolName(request.getParameter("mobileNo"));
			student.setReferredBy(request.getParameter("std"));
			student.setParentName(request.getParameter("emailId"));
			student.setMobileNo(request.getParameter("address"));
			student.setEmailId(request.getParameter("schoolName"));
			student.setDateOfBirth(request.getParameter("parentName"));
			student.setAddress(request.getParameter("referredBy"));

			try {
				Student updatedStudent=StudentDao.registerStudent(student);
				if(updatedStudent!=null) {
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

			

		}

	}

}
