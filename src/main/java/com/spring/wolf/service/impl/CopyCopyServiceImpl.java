package com.spring.wolf.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wolf.model.CopyCopy;
import com.spring.wolf.service.CopyCopyService;

@Service
public class CopyCopyServiceImpl implements CopyCopyService {
	/** 처리 결과를 기록할 Log4J 객체 생성 */
	// --> import org.slf4j.Logger;
	// --> import org.slf4j.LoggerFactory;
	private static Logger logger = LoggerFactory.getLogger(CopyCopyServiceImpl.class);

	/** MyBatis */
	// --> import org.springframework.beans.factory.annotation.Autowired;
	// --> import org.apache.ibatis.session.SqlSession
	@Autowired
	SqlSession sqlSession;

	@Override
	public void insertData(CopyCopy data) throws Exception {
		try {
			int result = sqlSession.insert("CopyCopyMapper.insertData", data);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {

			throw new Exception("NullPointerException");
		} catch (Exception e) {

			logger.error(e.getLocalizedMessage());
			throw new Exception("Exception Convert Failed");
		} finally {
			// sqlSession.commit();
		}
	}
}
