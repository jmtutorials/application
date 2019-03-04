import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jm.dao.EnquiryDao;
import com.jm.model.Enquiry;
import com.jm.util.EmailUtil;
import com.jm.util.JMConstants;

public class EnquiryServlet extends HttpServlet {
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			String action=request.getParameter("action");

			if(null==action) {
			
				response.sendRedirect("/mailcasting/");  
				
			}
			
			
			/**View All Enquiries**/
			else if(action.equals(JMConstants.VIEW_ALL_ENQUIRIES)) {
				try {
					List<Enquiry> enquiries = EnquiryDao.viewAllEnquiries();
					request.setAttribute("enquirieslist", enquiries);
					
					RequestDispatcher rd=request.getRequestDispatcher("viewenquiries.jsp");
					rd.include(request, response);
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			/**Add Enquiries**/
			else if(action.equals(JMConstants.STUDENT_ENQUIRY)){

				Enquiry enquiry= new Enquiry();

				enquiry.setStudentName(request.getParameter("studentName"));
				enquiry.setStd(request.getParameter("std"));
				enquiry.setSchoolName(request.getParameter("schoolName"));
				enquiry.setReferredBy(request.getParameter("referredBy"));
				enquiry.setMobileNo(request.getParameter("mobileNo"));
				enquiry.setEmailId(request.getParameter("emailId"));

				try {
					Enquiry updatedEnquiry=EnquiryDao.registerEnquiry(enquiry);
					if(updatedEnquiry!=null) {
						EmailUtil emailUtil=new EmailUtil();
						emailUtil.sendEmail(updatedEnquiry);
						request.setAttribute("updatedEnquiry", updatedEnquiry);
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
				response.sendRedirect("/mailcasting/");  

				}

		}


 public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	 
	 doPost(request, response);
 }
}
