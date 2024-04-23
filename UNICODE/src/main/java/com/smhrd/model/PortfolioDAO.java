package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;
public class PortfolioDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int enroll(Portfolio pofol) {
		SqlSession session = sqlSessionFactory.openSession(true);
	
		
		int cnt = session.insert("com.smhrd.db.PortfolioMapper.enroll", pofol);
		session.close();
		return cnt;
	}
	
}


   