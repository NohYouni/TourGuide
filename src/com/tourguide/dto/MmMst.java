package com.tourguide.dto;

import lombok.Data;

@Data
public class MmMst {
	private String mmId;
	private String mmPwd;
	private String mmEmail;
	private String joinDate;
	private String llDate;
	private int stsCode;
	private String outDate;
	private int outCode;

	//È¸¿ø»óÅÂ
	private String stsName;
	
	//Å»Åð »çÀ¯
	private String outName;
}
