package com.spring.wolf.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wolf.model.Player;
import com.spring.wolf.model.WolfField;
import com.spring.wolf.service.WolfFieldService;

//--> import org.springframework.stereotype.Service; 
@Service
public class WolfFieldServiceImpl implements WolfFieldService {
	
	/** 처리 결과를 기록할 Log4J 객체 생성 */
	// --> import org.slf4j.Logger;
	// --> import org.slf4j.LoggerFactory;
	private static Logger logger = LoggerFactory.getLogger(WolfFieldServiceImpl.class);

	/** MyBatis */
	// --> import org.springframework.beans.factory.annotation.Autowired;
	// --> import org.apache.ibatis.session.SqlSession
	@Autowired
	SqlSession sqlSession;

	@Override
	public void insertField(WolfField field) throws Exception {
		// 데이터 저장처리 = 가입
				// not null로 설정된 값이 설정되지 않았다면 예외 발생됨.
				try {
					int result = sqlSession.insert("WolfFieldMapper.insertField", field);
					if (result == 0) {
						throw new NullPointerException();
					}
				} catch (NullPointerException e) {
					// sqlSession.rollback();
					throw new Exception("저장된 체육관&운동장 정보가 없습니다.");
				} catch (Exception e) {
					// sqlSession.rollback();
					logger.error(e.getLocalizedMessage());
					throw new Exception("체육관&운동장 정보 저장에 실패했습니다.");
				} finally {
					// sqlSession.commit();
				}
	}

	@Override
	public List<WolfField> selectFieldList(WolfField field) throws Exception {
		List<WolfField> result = null;
		
		try {
			result = sqlSession.selectList("WolfFieldMapper.selectFieldList", field);
			if (result == null) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			logger.info(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}
}
