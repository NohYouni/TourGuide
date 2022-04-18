package com.tourguide.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tourguide.dto.RvDtlVO;
import com.tourguide.util.DBManager;

public class RvDtlDAO {
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   //리뷰 작성
   public int rvDtlInsert(RvDtlVO vo, String fvNo) {
      String sql = "insert into rvDtl(mmId, fvNo, rvSub, rvCnts, rgtDate, img1, img2, img3) values(?, ?, ?, ?, sysdate, ?, ?, ?)";
      try {
         con = DBManager.getCon();
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, vo.getMmId());
         pstmt.setString(2, fvNo);
         pstmt.setString(3, vo.getRvSub());
         pstmt.setString(4, vo.getRvCnts());
         pstmt.setString(5, vo.getImg1());
         pstmt.setString(6, vo.getImg2());
         pstmt.setString(7, vo.getImg3());
               
         return pstmt.executeUpdate();
      }catch (SQLException e) {
         e.printStackTrace();
      }finally {
    	  DBManager.close(con, pstmt);
      }
      return 0;      
   }
   
   //리뷰 수정
   public int rvDtlUpdate(RvDtlVO vo) {
	      String sql = "UPDATE rvDtl SET rvsub=?,rvcnts=?,img1=?  WHERE mmId = ? and fvNo=?";

	      try {
	         con = DBManager.getCon();
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, vo.getRvSub());
	         pstmt.setString(2, vo.getRvCnts());
	         pstmt.setString(3, vo.getImg1());
	         pstmt.setString(4, vo.getMmId());
	         pstmt.setString(5, vo.getFvNo());
	         return pstmt.executeUpdate();
	      }catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	    	  DBManager.close(con, pstmt);
	      }
	      return 0;
	   }
   
   
   //리뷰 삭제 : 본인삭제 | 관리자 삭제
   public int rvDtlDelete(String id, String fvNo, int delCode) {
      String sql = "UPDATE rvDtl SET delCode=?, delDate=sysdate WHERE mmId = ? and fvNo=?";
      try {
         con = DBManager.getCon();
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, delCode);
         pstmt.setString(2, id);
         pstmt.setString(3, fvNo);
         
         return pstmt.executeUpdate();
      }catch (SQLException e) {
         e.printStackTrace();
      }finally {
    	  DBManager.close(con, pstmt);
      }
      return 0;
   }
   
   //리뷰 조회(1개)
   public RvDtlVO rvDtlGetOne(String id, String fvNo) {
      RvDtlVO vo = new  RvDtlVO();
      String sql = "select *from rvDtl where mmId=? and fvNo=?";
      try {
         con = DBManager.getCon();
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, id);
         pstmt.setString(2, fvNo);
         rs = pstmt.executeQuery();
         
         rs.next();
         vo.setMmId(rs.getString("mmId"));
         vo.setFvNo(rs.getString("fvNo"));
         vo.setRvSub(rs.getString("rvSub"));
         vo.setRvCnts(rs.getString("rvCnts"));
         vo.setRgtDate(rs.getString("rgtDate"));
         vo.setDelCode(rs.getInt("delCode"));
         vo.setImg1(rs.getString("delDate"));
         vo.setImg2(rs.getString("img1"));
         vo.setImg3(rs.getString("img2"));
         return vo;
      }catch (SQLException e) {
         e.printStackTrace();
      }finally {
    	  DBManager.close(con, pstmt, rs);
      }      
      return null;
   }
   
   //리뷰 조회(특정 인 전부)
   public List<RvDtlVO> rvDtlGetMember(String id){
      List<RvDtlVO> voList = new ArrayList<RvDtlVO>();
      String sql = "select *from rvDtl where mmId=?";
      try {
         con = DBManager.getCon();
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, id);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            RvDtlVO vo = new  RvDtlVO();
            vo.setMmId(rs.getString("mmId"));
            vo.setFvNo(rs.getString("fvNo"));
            vo.setRvSub(rs.getString("rvSub"));
            vo.setRvCnts(rs.getString("rvCnts"));
            vo.setRgtDate(rs.getString("rgtDate"));
            vo.setDelCode(rs.getInt("delCode"));
            vo.setDelDate(rs.getString("delDate"));
            vo.setImg1(rs.getString("img1"));
            vo.setImg2(rs.getString("img2"));
            vo.setImg3(rs.getString("img3"));
            voList.add(vo);
         }
                  
      }catch (SQLException e) {
         e.printStackTrace();
      }finally {
    	  DBManager.close(con, pstmt, rs);
      }      
      return voList;      
   }
   //리뷰 조회(전체)
   public List<RvDtlVO> rvDtlGetAll(){
      List<RvDtlVO> voList = new ArrayList<RvDtlVO>();
      String sql = "select *from rvDtl";
      try {
         con = DBManager.getCon();
         pstmt = con.prepareStatement(sql);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            RvDtlVO vo = new  RvDtlVO();
            vo.setMmId(rs.getString("mmId"));
            vo.setFvNo(rs.getString("fvNo"));
            vo.setRvSub(rs.getString("rvSub"));
            vo.setRvCnts(rs.getString("rvCnts"));
            vo.setRgtDate(rs.getString("rgtDate"));
            vo.setDelCode(rs.getInt("delCode"));
            vo.setImg1(rs.getString("delDate"));
            vo.setImg2(rs.getString("img1"));
            vo.setImg3(rs.getString("img2"));
            voList.add(vo);
         }
                  
      }catch (SQLException e) {
         e.printStackTrace();
      }finally {
    	  DBManager.close(con, pstmt, rs);
      }      
      return voList;   
   }
}