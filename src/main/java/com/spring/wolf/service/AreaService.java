package com.spring.wolf.service;

import java.util.List;

import com.spring.wolf.model.Area;

/** 회원 관련 기능을 제공하기 위한 Service 계층 */
public interface AreaService {
	/**
	 * 지역1 목록 조회
	 * @param area - 지역이름
	 * @throws Exception - 중복된 데이터인 경우 예외 발생함
	 */
	public List<Area> selectAreaList(Area area) throws Exception;
}
