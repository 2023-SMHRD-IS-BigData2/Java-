package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;

public class PARKING_DAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	public int joinMember(PARKING vo) {
		int cnt = 0;
		System.out.println(vo.toString());
		try {
			cnt = sqlSession.insert("database.PARKING_mapper.joinMember", vo);
			System.out.println("cnt" + cnt);
		} catch (Exception e) {
			System.out.println("exep");
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
}
