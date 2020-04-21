package com.spring.wolf.controller.player;


import java.util.List;
import java.util.Locale;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.helper.PageHelper;
import com.spring.helper.WebHelper;

import com.spring.wolf.model.Player;
import com.spring.wolf.service.PlayerService;

@Controller
public class PlayerController {
	/** log4j 객체 생성 및 사용할 객체 주입받기 */
	//private static final Logger logger = LoggerFactory.getLogger(PlayerController.class);
	// --> import study.spring.helper.WebHelper;
	@Autowired
	WebHelper web;
	
	@Autowired
	PageHelper page;
	
	@Autowired
	PlayerService playerService;
	
	/** 교수 목록 페이지 */
	@RequestMapping(value = "/player/player_list.do", method = RequestMethod.GET)
	public ModelAndView doRun(Locale locale, Model model) {
		
		/** 1) WebHelper 초기화 및 파라미터 처리 */
		web.init();
		
		// 파라미터를 저장할 Beans
		Player player = new Player();
		
		/*// 검색어 파라미터 받기 + Beans 설정
		String keyword = web.getString("keyword", "");
		player.setName(keyword);
		
		// 현재 페이지 번호에 대한 파라미터 받기
		int nowPage = web.getInt("page", 1);
		
		*//** 2) 페이지 번호 구현하기 *//*
		// 전체 데이터 수 조회하기
		int totalCount = 0;
		try {
			totalCount = memberService.getPlayerCount(player);
		}  catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		// 페이지 번호에 대한 연산 수행 후 조회조건값 지정을 위한 Beans에 추가하기
		page.pageProcess(nowPage, totalCount, 10, 5);
		player.setLimitStart(page.getLimitStart());
		player.setListCount(page.getListCount());*/
		
		/** 3) Service를 통한 SQL 수행 */
		// 조회 결과를 저장하기 위한 객체
		List<Player> list = null;
		try {
			list = playerService.selectPlayerList(player);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		
		/** 4) View 처리하기 */
		// 조회 결과를 View에게 전달한다.
		model.addAttribute("list", list);
		/*model.addAttribute("keyword", keyword);
		model.addAttribute("page", page);*/
		
		return new ModelAndView("player/player_list");
	}	
}
