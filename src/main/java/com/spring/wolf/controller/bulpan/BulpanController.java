package com.spring.wolf.controller.bulpan;


import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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


@Controller
public class BulpanController {
	/** log4j 객체 생성 및 사용할 객체 주입받기 */
	Logger logger = LoggerFactory.getLogger(BulpanController.class);
	
	@Autowired
	WebHelper web;
	
	@Autowired
	PageHelper page;
	
	@RequestMapping(value = "/bulpan/bulpan_home.do", method = RequestMethod.GET)
	public ModelAndView doRun(Locale locale, Model model,
			HttpServletRequest req, HttpServletResponse response) {		

		web.init();
		
		return new ModelAndView("bulpan/bulpan_home");
	}	
}
