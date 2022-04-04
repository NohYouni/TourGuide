package com.tourguide.dto;

import lombok.Data;

@Data
public class RvDtl {
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
	
	//삭제 이유
	private String delName;
}
