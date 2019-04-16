package com.spring.wolf.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.helper.WebHelper;
import com.spring.wolf.service.BbsDocumentService;


@Controller
public class test {
	
	Logger logger = LoggerFactory.getLogger(test.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	WebHelper web;
	
	@Autowired
	BbsDocumentService bbsDocumentService;
	
	@RequestMapping(value= {"/test/test.do"})
	public ModelAndView doRun(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		web.init();

		// "/WEB-INF/views/index.jsp"파일을 View로 사용한다.
		return new ModelAndView("test/test");
	}

}
