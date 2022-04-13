package com.tourguide.dto;

public class RvDtlVO {
	private String mmId;
	private String fvNo;
	private String rvSub;	
	private String rvCnts;
	private String rgtDate;
	private int delCode;
	private String delDate;
	private String img1;
	private String img2;
	private String img3;
	
	//���� ����
	private String delName;

	public RvDtlVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RvDtlVO(String mmId, String fvNo, String rvSub, String rvCnts, String rgtDate, int delCode, String delDate,
			String img1, String img2, String img3, String delName) {
		super();
		this.mmId = mmId;
		this.fvNo = fvNo;
		this.rvSub = rvSub;
		this.rvCnts = rvCnts;
		this.rgtDate = rgtDate;
		this.delCode = delCode;
		this.delDate = delDate;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.delName = delName;
	}

	public String getMmId() {
		return mmId;
	}

	public void setMmId(String mmId) {
		this.mmId = mmId;
	}

	public String getFvNo() {
		return fvNo;
	}

	public void setFvNo(String fvNo) {
		this.fvNo = fvNo;
	}

	public String getRvSub() {
		return rvSub;
	}

	public void setRvSub(String rvSub) {
		this.rvSub = rvSub;
	}

	public String getRvCnts() {
		return rvCnts;
	}

	public void setRvCnts(String rvCnts) {
		this.rvCnts = rvCnts;
	}

	public String getRgtDate() {
		return rgtDate;
	}

	public void setRgtDate(String rgtDate) {
		this.rgtDate = rgtDate;
	}

	public int getDelCode() {
		return delCode;
	}

	public void setDelCode(int delCode) {
		this.delCode = delCode;
	}

	public String getDelDate() {
		return delDate;
	}

	public void setDelDate(String delDate) {
		this.delDate = delDate;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public String getDelName() {
		return delName;
	}

	public void setDelName(String delName) {
		this.delName = delName;
	}

	@Override
	public String toString() {
		return "RvDtlVO [mmId=" + mmId + ", fvNo=" + fvNo + ", rvSub=" + rvSub + ", rvCnts=" + rvCnts + ", rgtDate="
				+ rgtDate + ", delCode=" + delCode + ", delDate=" + delDate + ", img1=" + img1 + ", img2=" + img2
				+ ", img3=" + img3 + ", delName=" + delName + "]";
	}
	
	
}
