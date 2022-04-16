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

	//ȸ������
	private String stsName;
	
	//Ż�� ����
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
	
	
}
