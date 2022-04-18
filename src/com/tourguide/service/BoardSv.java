package com.tourguide.service;

import java.util.List;

public interface BoardSv {

	<T> List<T> getAll(String numOfRows, String location);

	<T> List<T> getOne1(String contentid);

	<T> List<T> getReview(String contentid);

	<T> List<T> getSight(String i, String mapx, String mapy);



}
