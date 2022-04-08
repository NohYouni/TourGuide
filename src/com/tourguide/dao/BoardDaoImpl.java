package com.tourguide.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tourguide.dto.Rvdtl;

public class BoardDaoImpl implements BoardDao {
	GetConnection gc = new GetConnection();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public List<Rvdtl> getReviewList(String contentId){
		List<Rvdtl> rl = new ArrayList<Rvdtl>();
		con = gc.getCon();
		
		String sql = "select * from rvdtl where fvno="+contentId;
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Rvdtl rv = new Rvdtl();
				rv.setMMID("");
				rv.setFVNO("");
				rv.setRVSUB("");
				rv.setRVCNTS("");
				rv.setRGTDATE("");
				rv.setDELCODE(0);
				rv.setDELDATE("");
				rv.setIMG1("");
				rv.setIMG2("");
				rv.setIMG3("");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		System.out.println(sql);
		return rl;		
	}
	
}
