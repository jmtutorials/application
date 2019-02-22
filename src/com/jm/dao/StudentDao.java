package com.jm.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jm.model.Student;
import com.jm.util.EmailUtil;
import com.jm.util.GetCon;

public class StudentDao {


	public static Student registerStudent(Student student) throws SQLException
	{
		int studentId=0;
		Connection con=GetCon.getCon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into STUDENT values(jmstudent_id_seq.nextval,?,?,?,?,?,?,?,?,?)");

			ps.setString(1,student.getStudentName());
			ps.setString(2,student.getStd());
			ps.setString(3,student.getDateOfBirth());
			ps.setString(4,student.getMobileNo());
			ps.setString(5,student.getEmailId());
			ps.setString(6,student.getAddress());
			ps.setString(7,student.getSchoolName());
			ps.setString(8,student.getParentName());
			ps.setString(9,student.getReferredBy());
			int status=ps.executeUpdate();

			if(status==1) {
				String selectSQL = "select jmstudent_id_seq.currval from dual";
				PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
				ResultSet rs = preparedStatement.executeQuery(selectSQL );
				while (rs.next()) {
					studentId = rs.getInt(1);
					student.setStudentID(studentId);
				}
			}

			else {
				student=null;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			con.commit();
			return student;	
		}

	}
}
