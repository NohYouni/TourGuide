package com.tourguide.util;

import java.security.MessageDigest;

public class SHA256 {

	public static String getSHA256(String input) {
		StringBuffer sb = new StringBuffer();
		byte[] b = "Hello! This is salt.".getBytes();
		String result = "";
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			
			md.reset();
			md.update(b);
			byte[] chars = md.digest(input.getBytes("UTF-8"));
			
			for(int i = 0; i < chars.length; i++) {
				String hex = Integer.toHexString(0xff & chars[i]);
				
				if(hex.length() == 1) sb.append("0");
				sb.append(hex);
				result = sb.toString();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;	
	}
}
