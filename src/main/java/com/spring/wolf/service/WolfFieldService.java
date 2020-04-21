package com.spring.wolf.service;

import java.util.List;

import com.spring.wolf.model.WolfField;

/** 회원 관련 기능을 제공하기 위한 Service 계층 */
public interface WolfFieldService {
	
	/**
	 * 운동장 & 체육관 정보 db 저장
	 * @param field
	 * @throws Exception
	 */
	public void insertField(WolfField field) throws Exception;
	
	
}
