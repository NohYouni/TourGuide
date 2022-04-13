package com.tourguide.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tourguide.dto.FvLkVO;
import com.tourguide.util.DBManager;

public class FvLkDAO {

//	DBManager db = new DBManager();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//행사에 찜누르기
	public int FvLkOn(String id , String fvNo) {
	String sql="INSERT INTO fvLk VALUES (?, ?)";
	int result=0;
	con = DBManager.getCon();
	try {
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, fvNo);
		result=pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		DBManager.close(con, pstmt);
	}
	return result;
	
	}
	
	//아이디를 조회해서 찜목록 불러오기
	public List<String> FvLkMyList(String id) {
		String sql="SELECT * FROM fvLk where mmid=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		List<String> list = new ArrayList<String>();
		
		try {
			con = DBManager.getCon();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getString("FVNO"));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		return list;
	
	}	
	
	
	//행사에 찜누르기 삭제
	public int FvLkOff(String id , String fvno) {
	String sql="DELETE FROM fvLk WHERE mmId = ? and fvno = ?";
	int result=0;
	con = DBManager.getCon();
	try {
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, fvno);
		result=pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		DBManager.close(con, pstmt);
	}
	return result;
	
	}

}
