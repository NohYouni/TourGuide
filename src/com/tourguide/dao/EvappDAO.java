package com.tourguide.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tourguide.dto.EvappVO;
import com.tourguide.util.DBManager;

public class EvappDAO {

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	// 이벤트참여하기
	public int evappjoin(EvappVO vo) {
		int result = 0 ;
		String sql = "insert into evApp(evCode, evNo, mmId, evDate, evCnts ,etc) VALUES (?, ?, ?, sysdate, ? , ?)";
			try {
			con = DBManager.getCon();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getEvCode());
			pstmt.setInt(2, vo.getEvNo());
			pstmt.setString(3, vo.getMmId());
			pstmt.setString(4, vo.getEvDate());
			pstmt.setString(5, vo.getEtc());

			result= pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt);
		}
		return result;
	}
}

	//이벤트 당첨자 결과조회