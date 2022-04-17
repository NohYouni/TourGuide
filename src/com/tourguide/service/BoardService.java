package com.tourguide.service;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.tourguide.dao.BoardDao;
import com.tourguide.dao.BoardDaoImpl;
import com.tourguide.dto.RvDtlVO;
import com.tourguide.util.ReadBody;

import api.play.GetApi;
import api.play.GetApi.SvcName;
import api.vo.DetailCommonRequest;
import api.vo.DetailCommonResponse;
import api.vo.LocationBasedListRequest;
import api.vo.LocationBasedListResponse;
import api.vo.SearchFestivalRequest;
import api.vo.SearchFestivalResponse;
import api.vo.SearchKeywordRequest;
import api.vo.SearchKeywordResponse;

public class BoardService implements BoardSv{
	
	GetApi api = new GetApi();
	BoardDao dao = new BoardDaoImpl();
	
	@Override
	public <T> List<T> getAll(String numOfRows, String location) {
//		System.out.println(numOfRows +" / "+ location );
		SvcName svcName = SvcName.SFV; 
		SearchFestivalRequest requestParam = (SearchFestivalRequest) svcName.requestObj();
		SearchFestivalResponse responseParam = (SearchFestivalResponse) svcName.responseObj();
		
		requestParam.setNumOfRows(numOfRows) ;
		requestParam.setPageNo("1");
		requestParam.setArrange("D");
		if(!location.equals("0")) {
			requestParam.setAreaCode(location);	
		}
		
		
		return GetApi.playApi(requestParam, responseParam, svcName);
	}

	@Override
	public <T> List<T> getOne1(String contentid) {
		SvcName svcName = SvcName.DTC;
		
		DetailCommonRequest requestParam = (DetailCommonRequest) svcName.requestObj();
		DetailCommonResponse responseParam = (DetailCommonResponse) svcName.responseObj();
		
		requestParam.setContentId(contentid);	
		requestParam.setDefaultYN("Y");
		requestParam.setFirstImageYN("Y");
		requestParam.setMapinfoYN("Y");
		requestParam.setAddrinfoYN("Y");
		requestParam.setOverviewYN("Y");
		requestParam.setAreacodeYN("Y");
		return GetApi.playApi(requestParam, responseParam, svcName);
	}

	@Override
	public <T> List<T> getReview(String contentid) {
		// contentid에 맞는 리뷰 가져오기
		return dao.getReviewList(contentid);
	}

	@Override
	public int createReview(RvDtlVO vo) {
		// contentid에 맞는 리뷰 가져오기
		
		vo.setMmId("idblabla2");
		return dao.createReview(vo);
	}	
	
	
	@Override
	public <T> List<T> getSight(String numOfRows, String mapx, String mapy) {
		SvcName svcName = SvcName.LBL; 
		
		LocationBasedListRequest requestParam = (LocationBasedListRequest) svcName.requestObj();
		LocationBasedListResponse responseParam = (LocationBasedListResponse) svcName.responseObj();
		
		requestParam.setNumOfRows(numOfRows) ;
		requestParam.setPageNo("1");
		requestParam.setArrange("D");
		requestParam.setListYN("Y");
		requestParam.setMapX(mapx);
		requestParam.setMapY(mapy);

		requestParam.setRadius("1000");
		
		return GetApi.playApi(requestParam, responseParam, svcName);
	}

	@Override
	public String reviewCheck(HttpServletRequest request) {
		ReadBody rb = new ReadBody();
		String body = rb.readBody(request);
				
		JsonParser parser = new JsonParser();
	    JsonElement element = parser.parse(body);

	    String contentid = element.getAsJsonObject().get("contentid").getAsString();
	    String mmId = element.getAsJsonObject().get("mmId").getAsString();
	    
	    System.out.println(contentid);	   
	    // 중복체크 구현하기
		return body;
	}

	@Override
	public <T> List<T> searchKey(String numOfRows, String searchKeyword, String location) {
		SvcName svcName = SvcName.SKW; 
		SearchKeywordRequest requestParam = (SearchKeywordRequest) svcName.requestObj();
		SearchKeywordResponse responseParam = (SearchKeywordResponse) svcName.responseObj();

		requestParam.setPageNo("1");
		requestParam.setArrange("D");
		requestParam.setListYN("Y");
		requestParam.setContentTypeId("15");
		if(numOfRows != null) {
			requestParam.setNumOfRows(numOfRows);	
		}else {
			requestParam.setNumOfRows("8");
		}
		if(!location.equals("0")) {
			requestParam.setAreaCode(location);	
		}
		
		List<T> newList = new ArrayList<T>();
		try {
			requestParam.setKeyword(URLEncoder.encode(searchKeyword,"UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			newList = GetApi.playApi(requestParam, responseParam, svcName);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return newList;
	}

	@Override
	public int getTotalCount(String numOfRows, String location) {
		SvcName svcName = SvcName.SFV; 
		SearchFestivalRequest requestParam = (SearchFestivalRequest) svcName.requestObj();
		SearchFestivalResponse responseParam = (SearchFestivalResponse) svcName.responseObj();
		
		requestParam.setNumOfRows(numOfRows) ;
		requestParam.setPageNo("1");
		requestParam.setArrange("D");
		if(!location.equals("0")) {
			requestParam.setAreaCode(location);	
		}
		return Integer.parseInt(GetApi.getTotalCount(requestParam, svcName));
	}
	
	@Override
	public int getTotalCount(String numOfRows, String searchKeyword, String location) {
		SvcName svcName = SvcName.SKW; 
		SearchKeywordRequest requestParam = (SearchKeywordRequest) svcName.requestObj();
		
		requestParam.setPageNo("1");
		requestParam.setArrange("D");
		requestParam.setListYN("Y");
		requestParam.setContentTypeId("15");
		if (!location.equals("0")) {
			requestParam.setAreaCode(location);	
		}		
		
		try {
			requestParam.setKeyword(URLEncoder.encode(searchKeyword,"UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Integer.parseInt(GetApi.getTotalCount(requestParam, svcName));
	}

	@Override
	public String getBestContentId() {
		// TODO Auto-generated method stub
		return null;
	}
}
