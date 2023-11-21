package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;

public class PARKING_DAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	public int joinParking(PARKING vo) {
		int cnt = 0;
		System.out.println(vo.toString());
		try {
			cnt = sqlSession.insert("database.PARKING_mapper.joinParking", vo);
		} catch (Exception e) {
			
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

	public int updateParking(PARKING updateParking) {
		int cnt =0;
		try {
			cnt = sqlSession.update("database.PARKING_mapper.updateParking",updateParking);
		
		} catch (Exception e) {
			
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
}
