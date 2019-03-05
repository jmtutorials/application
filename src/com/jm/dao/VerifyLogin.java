package com.jm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jm.model.Student;
import com.jm.util.GetCon;

public class VerifyLogin {

	public static Student verifyLoginForStudent(String username, String password)throws SQLException {
		Connection con=GetCon.getCon();
		PreparedStatement ps;
		ResultSet resultSet ;
		Student s = null;
		try {
			ps = con.prepareStatement(" Select * from student where username= ? and password =?");

			ps.setString(1,username);
			ps.setString(2,password);
			
			resultSet=ps.executeQuery();
			if( resultSet.next()) {
				s = new Student();
				s.setStudentID(resultSet.getInt("studentId"));
				s.setAddress(resultSet.getString("address"));
				s.setDateOfBirth(resultSet.getString("dateOfBirth"));
				s.setEmailId(resultSet.getString("emailId"));
				s.setMobileNo(resultSet.getString("mobileNo"));
				s.setParentName(resultSet.getString("parentName"));
				s.setReferredBy(resultSet.getString("refferdBy"));
				s.setSchoolName(resultSet.getString("school"));
				s.setStd(resultSet.getString("std"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			con.commit();
			return s;	
		}

	
	}
}
