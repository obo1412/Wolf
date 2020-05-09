package com.spring.wolf.controller.player;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.helper.PageHelper;
import com.spring.helper.WebHelper;

import com.spring.wolf.service.PlayerService;

@Controller
public class PlayerAdd {
	private static final Logger logger = LoggerFactory.getLogger(PlayerAdd.class);

	@Autowired
	WebHelper web;
	
	@Autowired
	PageHelper page;
	
	@Autowired
	PlayerService playerService;
	
	/** 선수 목록 페이지 */
	@RequestMapping(value = "/player/player_add.do", method = RequestMethod.GET)
public ModelAndView doRun(Locale locale, Model model) {
		web.init();
		return new ModelAndView("player/player_add");
	}
}
