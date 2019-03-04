package com.jm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jm.model.Enquiry;
import com.jm.util.GetCon;

public class EnquiryDao {
	
	@SuppressWarnings("finally")
	public static Enquiry registerEnquiry(Enquiry enquiry) throws SQLException
	{
		int enqiryId=0;
		Connection con=GetCon.getCon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into ENQUIRY values(jmenquiry_id_seq.nextval,?,?,?,?,?,?)");

			ps.setString(1,enquiry.getStudentName());
			ps.setString(2,enquiry.getStd());
			ps.setString(3,enquiry.getMobileNo());
			ps.setString(4,enquiry.getEmailId());
			ps.setString(5,enquiry.getSchoolName());
			ps.setString(6,enquiry.getReferredBy());
			int status=ps.executeUpdate();

			if(status==1) {
				String selectSQL = "select jmenquiry_id_seq.currval from dual";
				PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
				ResultSet rs = preparedStatement.executeQuery(selectSQL );
				while (rs.next()) {
					enqiryId = rs.getInt(1);
					enquiry.setEnquiryId(enqiryId);
				}
			}

			else {
				enquiry=null;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			con.commit();
			return enquiry;	
		}

	}
	
	public static List<Enquiry> viewAllEnquiries() throws SQLException{
		
		
		List<Enquiry> enquiries = new ArrayList<Enquiry>();
		Connection con=GetCon.getCon();
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement("Select * from ENQUIRY");
			

			// execute select SQL statement
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				
                Enquiry enquiry = new Enquiry();
                enquiry.setEnquiryId(rs.getInt(1));
                enquiry.setStudentName(rs.getString(2));
                enquiry.setStd(rs.getString(3));
                enquiry.setMobileNo(rs.getString(4));
                enquiry.setEmailId(rs.getString(5));
                enquiry.setSchoolName(rs.getString(6));
                enquiry.setReferredBy(rs.getString(7));
        
                enquiries.add(enquiry);
				
			}

		} catch (SQLException e) {

			System.out.println(e.getMessage());

		} finally {
			return enquiries;
		}

	}

}
