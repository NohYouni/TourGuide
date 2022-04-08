package com.tourguide.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.tourguide.dto.RvDtlVO;
import com.tourguide.util.DBManager;

public class BoardDaoImpl implements BoardDao {
	DBManager gc = new DBManager();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
		
	public List<RvDtlVO> getReviewList(String contentId){
		List<RvDtlVO> rl = new ArrayList<RvDtlVO>();
		con = gc.getCon();
		
		String sql = "select * from RvDtlVO where fvno="+contentId;
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println(sql);	
			while(rs.next()) {
				RvDtlVO rv = new RvDtlVO();
				rv.setMmId		("");
				rv.setFvNo		("");
				rv.setRvSub		("");
				rv.setRvCnts	("");
				rv.setRgtDate	("");
				rv.setDelCode	(0);
				rv.setDelDate	("");
				rv.setImg1		("");
				rv.setImg2		("");
				rv.setImg3		("");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			gc.close(con, pstmt, rs);
		}
		
		return rl;		
	}
	
}
