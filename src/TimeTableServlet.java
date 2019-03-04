import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jm.dao.FeesDao;
import com.jm.dao.StudentDao;
import com.jm.dao.TimeTableDao;
import com.jm.model.Fees;
import com.jm.model.Student;
import com.jm.model.TimeTable;
import com.jm.util.EmailUtil;
import com.jm.util.JMConstants;

public class TimeTableServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action=request.getParameter("action");


		if(action.equals(JMConstants.CREATE_TIMETABLE)){

			TimeTable timetable = new TimeTable();

			timetable.setFaculty(request.getParameter("faculty"));
			timetable.setFromtime(request.getParameter("fromtime"));
			timetable.setTotime(request.getParameter("totime"));
			timetable.setStd(request.getParameter("std"));
			timetable.setSubject(request.getParameter("subject"));
			timetable.setTimebtabledate(request.getParameter("timetabledate"));

			try {
				boolean status=TimeTableDao.createTimeTableEntry(timetable);
				if(status==true) {
					
					/*Fees fees = new Fees();
					fees.setFeespaid(0);
					Long totalfees=Long.parseLong(request.getParameter("fees"));
					fees.setFeesbalance(totalfees);
					fees.setStudentID(updatedStudent.getStudentID());
					fees.setTotalfees(totalfees);
					FeesDao.enterFeeDetails(fees);
					
					EmailUtil emailUtil=new EmailUtil();
					emailUtil.sendEmail(updatedStudent);
					request.setAttribute("updatedStudent", updatedStudent);
				*/}
				
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
