package com.tourguide.dto;

public class FvLkVO {
	private String mmId;
	private String fvNo;
	public FvLkVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FvLkVO(String mmId, String fvNo) {
		super();
		this.mmId = mmId;
		this.fvNo = fvNo;
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
	@Override
	public String toString() {
		return "FvLkVO [mmId=" + mmId + ", fvNo=" + fvNo + "]";
	}
	
	
	
}
