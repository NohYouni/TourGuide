package com.tourguide.service;

import java.util.List;

import api.play.GetApi;
import api.play.GetApi.SvcName;
import api.vo.DetailCommonRequest;
import api.vo.DetailCommonResponse;
import api.vo.DetailIntroRequest;
import api.vo.DetailIntroResponse;
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
	public <T> List<T> getOne1(String contentid, String contentTypeId) {
		SvcName svcName = SvcName.DTC;
		
		DetailCommonRequest requestParam = (DetailCommonRequest) svcName.requestObj();
		DetailCommonResponse responseParam = (DetailCommonResponse) svcName.responseObj();
		
		requestParam.setContentId(contentid);	
		requestParam.setContentTypeId(contentTypeId);
		requestParam.setDefaultYN("Y");
		requestParam.setFirstImageYN("Y");
		requestParam.setMapinfoYN("Y");
		requestParam.setAddrinfoYN("Y");
		requestParam.setOverviewYN("Y");
		requestParam.setAreacodeYN("Y");
		return GetApi.playApi(requestParam, responseParam, svcName);
	}

	@Override
	public <T> List<T> getOne2(String contentid, String contentTypeId) {
SvcName svcName = SvcName.DTL;
		
		DetailIntroRequest requestParam = (DetailIntroRequest) svcName.requestObj();
		DetailIntroResponse responseParam = (DetailIntroResponse) svcName.responseObj();
		
		requestParam.setContentId(contentid);	
		requestParam.setContentTypeId(contentTypeId);
		
		return GetApi.playApi(requestParam, responseParam, svcName);
	}
	
}
