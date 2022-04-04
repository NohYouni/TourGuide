package com.tourguide.service;

import java.util.List;

public interface BoardSv {

	<T> List<T> getAll(String numOfRows, String location);

	<T> List<T> getOne1(String contentid, String contentTypeId);

	<T> List<T> getOne2(String contentid, String contentTypeId);

}
