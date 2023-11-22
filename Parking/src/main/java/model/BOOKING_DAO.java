package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;

public class BOOKING_DAO {
	
	//세션을 생성해 줄 수 있는 Factory 생성
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
			
		//connection, close, sql문 실행...
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		public int joinBooking(BOOKING vo) {
			int cnt = 0;

			try {
				cnt = sqlSession.insert("database.BOOKING_mapper.joinBooking", vo);
			} catch (Exception e) {

			} finally {
				sqlSession.close();
			}

			return cnt;
		}
}
