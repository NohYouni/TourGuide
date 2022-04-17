package com.tourguide.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.tourguide.dto.RvDtlVO;

public interface BoardSv {

	<T> List<T> getAll(String numOfRows, String location);

	<T> List<T> getOne1(String contentid);

	<T> List<T> getReview(String contentid);

	<T> List<T> getSight(String i, String mapx, String mapy);

	int createReview(RvDtlVO vo);

	String reviewCheck(HttpServletRequest request);

	<T> List<T> searchKey(String numOfRows, String searchKeyword, String location);

	int getTotalCount(String numOfRows, String location);

	int getTotalCount(String numOfRows, String searchKeyword, String location);

	String getBestContentId();



}
