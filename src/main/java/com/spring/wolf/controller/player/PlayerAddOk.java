package com.spring.wolf.controller.player;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

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

import com.spring.helper.FileInfo;
import com.spring.helper.RegexHelper;
import com.spring.helper.UploadHelper;
import com.spring.helper.WebHelper;
import com.spring.wolf.controller.bbs.BBSCommon;
import com.spring.wolf.controller.bbs.DocumentWriteOk;
import com.spring.wolf.model.BbsDocument;
import com.spring.wolf.model.BbsFile;
import com.spring.wolf.model.Player;
import com.spring.wolf.service.BbsDocumentService;
import com.spring.wolf.service.BbsFileService;
import com.spring.wolf.service.PlayerService;

@Controller
public class PlayerAddOk {
	private static Logger logger = LoggerFactory.getLogger(PlayerAddOk.class);
	
	@Autowired
	SqlSession sqlSession;
	@Autowired
	WebHelper web;

	@Autowired
	UploadHelper upload;
	@Autowired
	RegexHelper regex;

	@Autowired
	PlayerService playerService;
	

	@RequestMapping(value = "/player/player_add_ok.do")
	public ModelAndView doRun(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
	
		web.init();
		
		String name = web.getString("name");
		String userId = web.getString("userId");
		String userPw = web.getString("userPw");
		String email = web.getString("email");
		String gender = web.getString("gender");
		String birthday = web.getString("birthdate");
		String tel = web.getString("tel");
		String postcode = web.getString("postcode");
		String addr1 = web.getString("addr1");
		String addr2 = web.getString("addr2");
		String profileImg = web.getString("profileImg");

		// 전달된 파라미터는 로그로 확인한다.
		logger.info("name=" + name);
		logger.info("userId=" + userId);
		logger.info("userPw=" + userPw);
		logger.info("email=" + email);
		logger.info("gender=" + gender);
		logger.info("birthday=" + birthday);
		logger.info("tel=" + tel);
		logger.info("postcode=" + postcode);
		logger.info("addr1=" + addr1);
		logger.info("addr2=" + addr2);
		logger.info("profileImg=" + profileImg);
		
		java.sql.Timestamp timestamp_2 = java.sql.Timestamp.valueOf(LocalDateTime.now());
		java.sql.Date date = new java.sql.Date(timestamp_2.getTime());
		
		/** 입력 받은 파라미터를 Beans로 묶기 */
		Player info = new Player();
		info.setName(name);		
		info.setUserId(userId);
		info.setUserPw(userPw);
		info.setEmail(email);
		info.setGender(gender);
		info.setBirthdate(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(date).toString());
		info.setTel(tel);
		info.setPostcode(postcode);
		info.setAddr1(addr1);
		info.setAddr2(addr2);
		info.setProfileImg(profileImg);		

		logger.info("Player >> " + info.toString());

		/** 선수 추가 */
		try {
			playerService.insertPlayer(info);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}					
			
		/** 저장 완료 후 선수리스트로 이동 */
		String url = "%s/player/player_list.do";
		url = String.format(url, web.getRootPath());
		return web.redirect(url, null);
	}

}
