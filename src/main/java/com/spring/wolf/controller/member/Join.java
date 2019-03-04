package com.spring.wolf.controller.member;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.helper.WebHelper;

@Controller
public class Join {
	
	@Autowired
	WebHelper web;

	@RequestMapping(value = "/member/join.do")
	public ModelAndView doRun(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response) {
		// "/WEB-INF/views/content/introduce.jsp" 파일을 View로 사용한다.
		
		/** (2) WebHelper 초기화 */
		web.init();
		
		/** (3) 로그인 여부 검사 */
		// 로그인 중이라면 이 페이지를 동작시켜서는 안된다.
		if (web.getSession("loginInfo") != null) {
			return web.redirect(web.getRootPath() + "/index.do", "이미 로그인 하셨습니다.");
		}
		
		return new ModelAndView("member/join");
	}
}
