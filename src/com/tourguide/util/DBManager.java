package com.tourguide.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager {
	public static Connection getCon() {		
		//String db = "jdbc:oracle:thin:@db202202040945_high?TNS_ADMIN=C://Users/kry/Desktop/TourGuide/dbwall/Wallet_DB202202040945";
		String db =	"jdbc:oracle:thin:@db202202040945_high?TNS_ADMIN=C://Users//Public//Wallet_DB202202040945";
		String userId = "NAS";
		String userPw = "NtourAguideS1";
		Connection con =null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(db, userId, userPw);
		}catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return con;
		
	}
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if(con!=null) try {con.close();}catch(SQLException ex){}
		if(pstmt!=null)	try{pstmt.close();}catch(SQLException ex){}
		if(rs!=null) try{rs.close();}catch(SQLException ex){}		
	}
	public static void close(Connection con, PreparedStatement pstmt) {
		if(con!=null) try {con.close();}catch(SQLException ex){}
		if(pstmt!=null)	try{pstmt.close();}catch(SQLException ex){}
		
	}

	
}
