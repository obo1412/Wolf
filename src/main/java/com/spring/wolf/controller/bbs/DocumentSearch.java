package com.spring.wolf.controller.bbs;


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
import com.spring.wolf.model.Area;
import com.spring.wolf.model.Area2;
import com.spring.wolf.model.Member;
import com.spring.wolf.service.Area2Service;
import com.spring.wolf.service.AreaService;
import com.spring.wolf.service.MemberService;

@Controller
public class DocumentSearch {
	/** log4j 객체 생성 및 사용할 객체 주입받기 */
	//private static final Logger logger = LoggerFactory.getLogger(PlayerController.class);
	// --> import study.spring.helper.WebHelper;
	@Autowired
	WebHelper web;
	
	@Autowired
	PageHelper page;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	AreaService areaService;
	
	@Autowired
	Area2Service area2Service;
	
	/** 교수 목록 페이지 */
	@RequestMapping(value = "/bbs/document_search.do", method = RequestMethod.GET)
	public ModelAndView doRun(Locale locale, Model model) {
		
		/** 1) WebHelper 초기화 및 파라미터 처리 */
		web.init();
		
		// 파라미터를 저장할 Beans
		Member member = new Member();
		Area area = new Area();
		
		
		// 검색어 파라미터 받기 + Beans 설정
		String keyword = web.getString("keyword", "");
		member.setName(keyword);
		
		// 현재 페이지 번호에 대한 파라미터 받기
		int nowPage = web.getInt("page", 1);
		
		/** 2) 페이지 번호 구현하기 */
		// 전체 데이터 수 조회하기
		int totalCount = 0;
		try {
			totalCount = memberService.getPlayerCount(member);
		}  catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		// 페이지 번호에 대한 연산 수행 후 조회조건값 지정을 위한 Beans에 추가하기
		page.pageProcess(nowPage, totalCount, 10, 5);
		member.setLimitStart(page.getLimitStart());
		member.setListCount(page.getListCount());
		
		/** 3) Service를 통한 SQL 수행 */
		// 조회 결과를 저장하기 위한 객체
		List<Member> list = null;
		try {
			list = memberService.selectMemberList(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		List<Area> alist = null;
		try {
			alist = areaService.selectAreaList(area);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		/**
		 * ajax로 area2에 area1Id를 받아와 셋을 해야한다.
		 */
		Area2 area2 = new Area2();
		int selectedArea1 = web.getInt("selectedArea1");
		area2.setArea1Id(selectedArea1);
		
		List<Area2> a2list = null;
		try {
			a2list = area2Service.selectArea2List(area2);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		/** 4) View 처리하기 */
		// 조회 결과를 View에게 전달한다.
		model.addAttribute("list", list);
		model.addAttribute("keyword", keyword);
		model.addAttribute("page", page);
		model.addAttribute("alist", alist);
		model.addAttribute("a2list", a2list);
		
		return new ModelAndView("map/map_search");
	}	
}
