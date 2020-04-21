package com.spring.wolf.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.helper.WebHelper;
import com.spring.wolf.model.WolfField;
import com.spring.wolf.service.BbsDocumentService;
import com.spring.wolf.service.WolfFieldService;


@Controller
public class test {
	
	Logger logger = LoggerFactory.getLogger(test.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	WebHelper web;
	
	@Autowired
	BbsDocumentService bbsDocumentService;
	
	@Autowired
	WolfFieldService wolfFieldService;
	
	@RequestMapping(value= {"/field/insert_field.do"})
	public ModelAndView regField(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		web.init();
		
		String loadFilePath = "E:\\downloads/서울시 공공체육시설 현황(2019).json";
		
		try {
			FileReader fr = new FileReader(loadFilePath);
			
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonGround = (JSONObject) jsonParser.parse(fr);
			
			JSONArray itemArray = (JSONArray) jsonGround.get("DATA");
			
			for(int i=0; i<itemArray.size(); i++) {
				JSONObject itemObj = (JSONObject) itemArray.get(i);
				
				String nameField = (String)itemObj.get("nm");
				Object typeFieldObj = itemObj.get("type_nm");
				Object telObj = itemObj.get("tel");
				Object xcodeObj = itemObj.get("xcode");
				Object ycodeObj = itemObj.get("ycode");
				Object addrObj = itemObj.get("addr");
				Object inOutObj = itemObj.get("in_out");
				Object homePageObj = itemObj.get("home_page");
				Object eduObj = itemObj.get("edu_yn");
				Object bigoObj = itemObj.get("bigo");
				Object parkingObj = itemObj.get("parking_lot");
				
				String typeField = String.valueOf(typeFieldObj);
				String tel = String.valueOf(telObj);
				double xcode = 0;
				if(!xcodeObj.equals("")&&xcodeObj != null) {
					xcode = Double.parseDouble(String.valueOf(xcodeObj));
				}
				double ycode = 0;
				if(!ycodeObj.equals("")&&ycodeObj != null) {
					ycode = Double.parseDouble(String.valueOf(ycodeObj));
				}
				String addr = String.valueOf(addrObj);
				String inOut = String.valueOf(inOutObj);
				String homePage = String.valueOf(homePageObj);
				String edu = String.valueOf(eduObj);
				String bigo = String.valueOf(bigoObj);
				String parking = String.valueOf(parkingObj);
				
				logger.info(nameField);
				logger.info(typeField);
				logger.info(tel);
				logger.info(String.valueOf(xcodeObj));
				logger.info(String.valueOf(ycodeObj));
				logger.info(addr);
				logger.info(inOut);
				logger.info(homePage);
				logger.info(edu);
				logger.info(bigo);
				logger.info(parking);
				
				WolfField wolfField = new WolfField();
				wolfField.setNameField(nameField);
				wolfField.setClassField(typeField);
				wolfField.setTelField(tel);
				wolfField.setXcodeField(xcode);
				wolfField.setYcodeField(ycode);
				wolfField.setAddrField(addr);
				wolfField.setInOutField(inOut);
				wolfField.setSiteUrlField(homePage);
				wolfField.setLectureField(edu);
				wolfField.setRemarksField(bigo);
				wolfField.setParkingField(parking);
				
				wolfFieldService.insertField(wolfField);
			}
        }catch(Exception e) {
            e.printStackTrace();
        }
		

		// "/WEB-INF/views/index.jsp"파일을 View로 사용한다.
		/*return new ModelAndView("index");*/
		return web.redirect(null, "wolfField 리스트 등록 완료");
	}

}
