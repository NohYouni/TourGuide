package com.tourguide.dto;


public class MmMstVO {
	private String mmId;
	private String mmPwd;
	private String mmEmail;
	private String joinDate;
	private String llDate;
	private int stsCode;
	private String outDate;
	private int outCode;

	// 상태 이름
	private String stsName;
	
	// 탈퇴 이름
	private String outName;

	public String getMmId() {
		return mmId;
	}

	public void setMmId(String mmId) {
		this.mmId = mmId;
	}

	public String getMmPwd() {
		return mmPwd;
	}

	public void setMmPwd(String mmPwd) {
		this.mmPwd = mmPwd;
	}

	public String getMmEmail() {
		return mmEmail;
	}

	public void setMmEmail(String mmEmail) {
		this.mmEmail = mmEmail;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getLlDate() {
		return llDate;
	}

	public void setLlDate(String llDate) {
		this.llDate = llDate;
	}

	public int getStsCode() {
		return stsCode;
	}

	public void setStsCode(int stsCode) {
		this.stsCode = stsCode;
	}

	public String getOutDate() {
		return outDate;
	}

	public void setOutDate(String outDate) {
		this.outDate = outDate;
	}

	public int getOutCode() {
		return outCode;
	}

	public void setOutCode(int outCode) {
		this.outCode = outCode;
	}

	public String getStsName() {
		return stsName;
	}

	public void setStsName(String stsName) {
		this.stsName = stsName;
	}

	public String getOutName() {
		return outName;
	}

	public void setOutName(String outName) {
		this.outName = outName;
	}

	public MmMstVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "MmMstVO [mmId=" + mmId + ", mmPwd=" + mmPwd + ", mmEmail=" + mmEmail + ", joinDate=" + joinDate
				+ ", llDate=" + llDate + ", stsCode=" + stsCode + ", outDate=" + outDate + ", outCode=" + outCode
				+ ", stsName=" + stsName + ", outName=" + outName + "]";
	}

	public MmMstVO(String mmId, String mmPwd, String mmEmail, String joinDate, String llDate, int stsCode,
			String outDate, int outCode, String stsName, String outName) {
		super();
		this.mmId = mmId;
		this.mmPwd = mmPwd;
		this.mmEmail = mmEmail;
		this.joinDate = joinDate;
		this.llDate = llDate;
		this.stsCode = stsCode;
		this.outDate = outDate;
		this.outCode = outCode;
		this.stsName = stsName;
		this.outName = outName;
	}
	
}
