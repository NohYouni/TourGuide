package com.tourguide.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;

public class ReadBody {
	BufferedReader input = null;
    StringBuilder builder = new StringBuilder();
    String buffer;
    String body = "";
    
	 public String readBody(HttpServletRequest request){
	     try {
			input = new BufferedReader(new InputStreamReader(request.getInputStream()));
		     while ((buffer = input.readLine()) != null) {
		         if (builder.length() > 0) {
		             builder.append("\n");
		         }
		         builder.append(buffer);
		     }
		     body = builder.toString();		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     return body;
	 }
	 
	 public void closeInput(ReadBody rb) {
		 try {
			rb.input.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
}
