package com.spring.wolf.controller.bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Locale;

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

import com.spring.helper.RegexHelper;
import com.spring.helper.UploadHelper;
import com.spring.helper.WebHelper;
import com.spring.wolf.model.CopyCopy;
import com.spring.wolf.service.CopyCopyService;

@Controller
public class CopyCopyConvert {
	/** (1) 사용하고자 하는 Helper 객체 선언 */
	// --> import org.apache.logging.log4j.Logger;
	private static Logger logger = LoggerFactory.getLogger(CopyCopyConvert.class);
	@Autowired
	SqlSession sqlSession;
	@Autowired
	WebHelper web;
	@Autowired
	UploadHelper upload;
	@Autowired
	RegexHelper regex;
	@Autowired
	CopyCopyService copycopyService;
	
	// mdb 데이터 MySQL에 저장 test.
	public void mdbConvertTest() {
		Connection conn;
		try {
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			
			conn = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/erens/Desktop/finebook3DB/Finebook.mdb"); // mdb 파일 위치 설정.
			Statement s = conn.createStatement();		
			ResultSet rs = s.executeQuery("SELECT * FROM copy_copy");
			
			// 성능 때문에 반복문 안에서 new는 하는 것은 피해야함. 
			CopyCopy data = new CopyCopy();
			String data1 = "";
			String data2 = "";
			
			while (rs.next()) {				
				data1 = rs.getString(1);
				data2 = rs.getString(2);
				
				// console에서 mdb 값 확인.
			    System.out.println("mdb 1열 " + data1);
			    System.out.println("mdb 2열 " + data2);
			    
			    // mdb 값 data로 설정.
				data.setFullpath(data1);
				data.setKey(data2);
				
				// MySQL 삽입.
				copycopyService.insertData(data);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/bbs/copy_copy_convert.do")
	public ModelAndView doRun(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {		
		web.init();
		
		mdbConvertTest();

		String url = "../match.jsp";		
		return web.redirect(url, null);
	}
}

