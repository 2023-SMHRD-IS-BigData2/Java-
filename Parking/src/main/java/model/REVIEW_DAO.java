package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;

public class REVIEW_DAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public PARKING loginParking(PARKING vo) {
		PARKING loginParking = null;

		try {
			loginParking =  sqlSession.selectOne("database.PARKING_mapper.loginParking",vo);
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return loginParking;
	}

	
	public REVIEW loginREVIEW(REVIEW vo) {
		REVIEW loginREVIEW = null;
		try {
			loginREVIEW =  sqlSession.selectOne("database.REVIEW_mapper.loginREVIEW",vo);
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return loginREVIEW;
	}
}
