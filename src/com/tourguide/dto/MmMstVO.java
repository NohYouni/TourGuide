package com.tourguide.dto;

import lombok.Data;

@Data
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
}
