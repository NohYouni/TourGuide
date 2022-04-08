package com.tourguide.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GetConnection {

	Connection con;
	String url = "jdbc:oracle:thin:@db202202040945_high?TNS_ADMIN=C://Users//Public//Wallet_DB202202040945";
	String className = "oracle.jdbc.driver.OracleDriver";
	
	
	public Connection getCon() {
		try {
			Class.forName(this.className);
			con = DriverManager.getConnection(this.url, "NAS", "NtourAguideS1");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	public void closeConnection(Connection con, PreparedStatement pstmt) {
		
		try {
			if(con !=null) con.close();
			if(pstmt !=null) pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void closeConnection(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(con !=null) con.close();
			if(pstmt !=null) pstmt.close();
			if(rs !=null) rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
