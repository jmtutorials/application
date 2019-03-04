package com.jm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.jm.model.TimeTable;
import com.jm.util.GetCon;

public class TimeTableDao {
	
	@SuppressWarnings("finally")
	public static boolean createTimeTableEntry(TimeTable timetable) throws SQLException
	{
		Connection con=GetCon.getCon();
        boolean status=false;
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into TIMETABLE values(?,?,?,?,?,?)");

			ps.setString(1,timetable.getStd());
			ps.setString(2,timetable.getTimebtabledate());
			ps.setString(3,timetable.getSubject());
			ps.setString(4,timetable.getFromtime());
			ps.setString(5,timetable.getTotime());
			ps.setString(6,timetable.getFaculty());
			int errorcode=ps.executeUpdate();

			if(errorcode==1) {
				status=true;
			}

 
			else {
				status=false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			con.commit();
			return status;	
		}

	}

}
