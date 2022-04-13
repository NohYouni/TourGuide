package com.tourguide.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tourguide.dto.FvLkVO;
import com.tourguide.dto.MmMstVO;
import com.tourguide.util.DBManager;

public class MmMstDAO {
	DBManager db = new DBManager();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	// 회원가입
	public int mmMstInsert(MmMstVO vo) {
		int result = 0 ;
		String sql = "insert into mmMst(mmId, mmPwd, mmEmail, joinDate, llDate, stsCode)"
				+ " values (?, ?, ?, sysdate, sysdate, 1)";
		try {
			con = db.getCon();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getMmId());
			pstmt.setString(2, vo.getMmPwd());
			pstmt.setString(3, vo.getMmEmail());

			 result= pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return result;
	}

	// 비밀번호 조회
	public int mmMstPwdCheck(String id, String pwd) {
		int result = 0;
//		List<MemberVO> list = new ArrayList<MemberVO>();
		String sql = "SELECT * FROM mmmst where mmid=?";
//		System.out.println(id);
		try {
			con = db.getCon();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("mmpwd").equals(pwd)) {
					result = 1;
				} else {
					System.out.println("비번또는 사용자가 틀렸음");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		return result;
	}	
	
	// 내 정보 수정(비밀번호)
	public int mmMstUpdate(String userid, String pwd) {
		int result = 0;
		String sql = "UPDATE mmmst SET mmpwd=? WHERE mmid =?";
		try {
			con = db.getCon();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, userid);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return result;
	}
	// 
	

	// 회원탈퇴 / 본인 탈퇴 | 관리자 강퇴
	public int mmMstSignOut(String id, int outCode) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "UPDATE mmMst SET stscode = 2, outdate = sysdate, outcode = ?" + "WHERE mmId = ?";
		try {
			con = db.getCon();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, outCode);
			pstmt.setString(2, id);
			int result = pstmt.executeUpdate();
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return 0;
	}

	//로그인
	public MmMstVO mmMstLogin(String id, String pwd) {
	    String sql = "select * from mmMst where mmId = ? and mmPwd=?";
	    MmMstVO vo = new MmMstVO();
	    
	    try {
	       con = DBManager.getCon();
	       
	       pstmt = con.prepareStatement(sql);
	       pstmt.setString(1, id);
	       pstmt.setString(2, pwd);
	       rs = pstmt.executeQuery();
	       rs.next();
	       vo = new MmMstVO();
	       vo.setMmId(rs.getString("mmId"));
	       vo.setMmPwd(rs.getString("mmPwd"));
	       vo.setMmEmail(rs.getString("mmEmail"));
	       vo.setJoinDate(rs.getString("joinDate"));
	       vo.setLlDate(rs.getString("llDate"));
	       vo.setStsCode(rs.getInt("stsCode"));
	       vo.setOutDate(rs.getString("outDate"));
	       vo.setOutCode(rs.getInt("outCode"));
	    } catch (SQLException e) {
	       e.printStackTrace();
	    } finally {
	       db.close(con, pstmt, rs);
	    }
	    return vo;
	 }
		

	// 회원 1명 조회
	public MmMstVO mmMstGetOne(String id) {
		MmMstVO vo = new MmMstVO();
		String sql = "SELECT* FROM mmmst where mmid=?";

		try {
			con = db.getCon();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
		


			while (rs.next()) {

	
				vo.setMmId(rs.getString("mmId"));
				vo.setMmPwd(rs.getString("mmPwd"));
				vo.setMmEmail(rs.getString("mmEmail"));
				vo.setJoinDate(rs.getString("joinDate"));
				vo.setLlDate(rs.getString("llDate"));
				vo.setStsCode(rs.getInt("stsCode"));
				vo.setOutDate(rs.getString("outDate"));
				vo.setOutCode(rs.getInt("outCode"));
			}
		} catch (SQLException e) {
			System.out.println("오류");
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);;
		}
		return vo;
	}
	// 회원 전체조회
	public List<MmMstVO> mmMstGetAll() {
		List<MmMstVO> voList = new ArrayList<MmMstVO>();

		String sql = "select *from mmMst";
		try {
			con = db.getCon();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MmMstVO vo = new MmMstVO();
				vo.setMmId(rs.getString("mmId"));
				vo.setMmPwd(rs.getString("mmPwd"));
				vo.setMmEmail(rs.getString("mmEmail"));
				vo.setJoinDate(rs.getString("joinDate"));
				vo.setLlDate(rs.getString("llDate"));
				vo.setStsCode(rs.getInt("stsCode"));
				vo.setOutDate(rs.getString("outDate"));
				vo.setOutCode(rs.getInt("outCode"));
				voList.add(vo);
			}

			return voList;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}

		return null;
	}

}
