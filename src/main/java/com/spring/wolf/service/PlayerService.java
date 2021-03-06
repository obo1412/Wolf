package com.spring.wolf.service;

import java.util.List;

import com.spring.wolf.model.Player;

/** 회원 관련 기능을 제공하기 위한 Service 계층 */
public interface PlayerService {
	/**
	 * 아이디 중복검사
	 * @param member - 아이디
	 * @throws Exception - 중복된 데이터인 경우 예외 발생함
	 */
	public void selectUserIdCount(Player player) throws Exception;
	
	/**
	 * 이메일 중복검사
	 * @param member - 이메일
	 * @throws Exception - 중복된 데이터인 경우 예외 발생함
	 */
	public void selectEmailCount(Player player) throws Exception;
	
	/**
	 * 회원가입(아이디,이메일 중복검사 후 가입처리)
	 * @param member - 일련번호, 가입일시,변경일시를 제외한 모든 정보
	 * @throws Exception
	 */
	public void insertPlayer(Player player) throws Exception;
	
	/**
	 * 로그인
	 * @param member - 아이디 비밀번호
	 * @return 회원정보
	 * @throws Exception
	 */
	public Player selectLoginInfo(Player player) throws Exception;
	
	/**
	 * 비밀번호 변경
	 * @param member - 이메일주소. 비밀번호
	 * @throws Exception
	 */
	public void updatePlayerPasswordByEmail(Player player) throws Exception;
	
	/**
	 * 비밀번호 검사
	 * @param member
	 * @throws Exception
	 */
	public void selectPlayerPasswordCount(Player player) throws Exception;
	
	/**
	 * 회원탈퇴
	 * @param member - 회원번호, 비밀번호
	 * @throws Exception
	 */
	public void deletePlayer(Player player) throws Exception;
	
	/**
	 * 회원정보 수정
	 * @param member
	 * @throws Exception
	 */
	public void updatePlayer(Player player) throws Exception;
	
	/**
	 * 일련번호에 의한 회원정보 조회
	 * @param member
	 * @throws Exception
	 */
	public Player selectPlayer(Player player) throws Exception;
	
	/**
	 * 선수들 목록 조회
	 * @param member
	 * @return 선수(회원)목록
	 * @throws Exception
	 */
	public List<Player> selectPlayerList(Player player) throws Exception;
	
	
	public int getPlayerCount(Player player) throws Exception;
}
