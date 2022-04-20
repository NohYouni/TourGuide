package com.tourguide.dto;


public class EvappVO {
	 private String evCode;
	 private int evNo;
	 private String mmId;
	 private String evDate;
	 private String evCnts;
	 private String etc;
	public EvappVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EvappVO(String evCode, int evNo, String mmId, String evDate, String evCnts, String etc) {
		super();
		this.evCode = evCode;
		this.evNo = evNo;
		this.mmId = mmId;
		this.evDate = evDate;
		this.evCnts = evCnts;
		this.etc = etc;
	}
	public String getEvCode() {
		return evCode;
	}
	public void setEvCode(String evCode) {
		this.evCode = evCode;
	}
	public int getEvNo() {
		return evNo;
	}
	public void setEvNo(int evNo) {
		this.evNo = evNo;
	}
	public String getMmId() {
		return mmId;
	}
	public void setMmId(String mmId) {
		this.mmId = mmId;
	}
	public String getEvDate() {
		return evDate;
	}
	public void setEvDate(String evDate) {
		this.evDate = evDate;
	}
	public String getEvCnts() {
		return evCnts;
	}
	public void setEvCnts(String evCnts) {
		this.evCnts = evCnts;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	@Override
	public String toString() {
		return "EvappVO [evCode=" + evCode + ", evNo=" + evNo + ", mmId=" + mmId + ", evDate=" + evDate + ", evCnts="
				+ evCnts + ", etc=" + etc + "]";
	}


	 
}
