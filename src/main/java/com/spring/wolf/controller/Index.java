package com.spring.wolf.controller;

import java.io.IOException;
import java.util.List;
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
import com.spring.wolf.model.BbsDocument;
import com.spring.wolf.service.BbsDocumentService;


@Controller
public class Index {
	
	Logger logger = LoggerFactory.getLogger(Index.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	WebHelper web;
	
	@Autowired
	BbsDocumentService bbsDocumentService;
	
	@RequestMapping(value= {"/", "/index.do"})
	public ModelAndView doRun(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		web.init();
		
		/** (3) 각 게시판 종류별로 최근 게시물을 조회한다. */
		List<BbsDocument> galleryList = null;	// 갤러리 최신 게시물
		List<BbsDocument> noticeList = null;	// 공지사항 최신 게시물
		List<BbsDocument> freeList = null;		// 자유게시판 최신 게시물
		List<BbsDocument> qnaList = null;		// 질문답변 최신 게시물
		
		try {
			galleryList = this.getDocumentList("gallery", 3);
			noticeList = this.getDocumentList("notice", 5);
			freeList = this.getDocumentList("free", 5);
			qnaList = this.getDocumentList("qna", 5);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}

		/** (4) 최신 글 목록을 View에 전달 */
		model.addAttribute("galleryList", galleryList);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("freeList", freeList);
		model.addAttribute("qnaList", qnaList);

		// "/WEB-INF/views/index.jsp"파일을 View로 사용한다.
		return new ModelAndView("index");
	}

	/**
	 * 특정 카테고리에 대한 상위 n개의 게시물 가져오기
	 * @param category - 가져올 카테고리
	 * @param listCount - 가져올 게시물 수
	 * @return
	 * @throws Exception
	 */
	private List<BbsDocument> getDocumentList(String category, int listCount) 
			throws Exception {
		List<BbsDocument> list = null;

		// 조회할 조건 생성하기
		// --> 지정된 카테고리의 0번째부터 listCount개 만큼 조회
		BbsDocument document = new BbsDocument();
		document.setCategory(category);
		document.setLimitStart(0);
		document.setListCount(listCount);
		document.setGallery(category.equals("gallery"));

		list = bbsDocumentService.selectDocumentList(document);

		return list;
	}

}
