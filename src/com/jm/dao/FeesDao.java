package com.jm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.jm.model.Fees;
import com.jm.util.GetCon;

public class FeesDao {
	
	
	public static boolean enterFeeDetails(Fees fees) throws SQLException
	{
		boolean status = false;
		Connection con=GetCon.getCon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into FEES values(?,?,?,?)");

			ps.setInt(1,fees.getStudentID());
			ps.setLong(2,fees.getTotalfees());
			ps.setLong(3,fees.getFeespaid());
			ps.setLong(4,fees.getTotalfees());
			
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
