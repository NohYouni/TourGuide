package com.tourguide.dao;

import java.util.List;

import com.tourguide.dto.RvDtlVO;

public interface BoardDao {

	<T> List<T> getReviewList(String contentId);
	
	int createReview(RvDtlVO vo);
}
