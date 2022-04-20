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
		
	@SuppressWarnings("unchecked")
	@Override
	public <T> List<T> getReviewList(String contentid){
		List<RvDtlVO> rl = new ArrayList<RvDtlVO>();
		con = DBManager.getCon();
		
		String sql = "select aa.* from (select rownum, mmId, fvNo, rvSub, rvCnts, rgtDate, delCode, img1, img2, img3 from RvDtl order by rgtDate) aa "
				+ "where aa.delcode = 0 and fvno=to_char("+contentid+")";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println(sql);	
			while(rs.next()) {
				RvDtlVO rv = new RvDtlVO();
				rv.setMmId		(rs.getString("mmId"));
				rv.setFvNo		(rs.getString("fvNo"));
				rv.setRvSub		(rs.getString("rvSub"));
				rv.setRvCnts	(rs.getString("rvCnts"));
				rv.setRgtDate	(rs.getString("rgtDate"));
				rv.setDelCode	(Integer.parseInt(rs.getString("delCode")));
				rv.setImg1		(rs.getString("img1"));
				rv.setImg2		(rs.getString("img2"));
				rv.setImg3		(rs.getString("img3"));
				rl.add(rv);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
		return (List<T>) rl;		
	}
	
	public int createReview(RvDtlVO vo) {
		con = DBManager.getCon();
		
		String sql = "INSERT INTO rvDtl (mmId, fvNo, rvSub, rvCnts, rgtDate, delCode) "
				+ "values('"+vo.getMmId()+"','"+vo.getFvNo()+"','"+vo.getRvSub()
				+"','"+vo.getRvCnts()+"',sysdate, 0)" ;
		
		System.out.println(sql);	
		
		try {
			pstmt = con.prepareStatement(sql);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt);
		}
		return 0;	
	}
	
}
