package com.tourguide.service;

import java.util.List;

import api.play.GetApi;
import api.play.GetApi.SvcName;
import api.vo.DetailCommonRequest;
import api.vo.DetailCommonResponse;
import api.vo.DetailIntroRequest;
import api.vo.DetailIntroResponse;
import api.vo.LocationBasedListRequest;
import api.vo.LocationBasedListResponse;
import api.vo.SearchFestivalRequest;
import api.vo.SearchFestivalResponse;

public class BoardService implements BoardSv{
	
	GetApi api = new GetApi();
	
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
		return null;
	}

	@Override
	public <T> List<T> getSight(String numOfRows, String mapx, String mapy) {
		SvcName svcName = SvcName.LBL; 
		
		LocationBasedListRequest requestParam = (LocationBasedListRequest) svcName.requestObj();
		LocationBasedListResponse responseParam = (LocationBasedListResponse) svcName.responseObj();
		
		requestParam.setNumOfRows(numOfRows) ;
		requestParam.setPageNo("1");
		requestParam.setArrange("D");
		requestParam.setArrange("E");
		requestParam.setListYN("Y");
		requestParam.setMapX(mapx);
		requestParam.setMapY(mapy);
		requestParam.setRadius("1000");
		
		return GetApi.playApi(requestParam, responseParam, svcName);
	}
	
}
