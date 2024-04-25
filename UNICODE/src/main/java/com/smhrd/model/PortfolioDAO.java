package com.smhrd.model;

import java.util.List;

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
	
	public List<Portfolio> portfolioList(User user) {
		System.out.println(user);
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Portfolio> portfolioList = session.selectList("com.smhrd.db.PortfolioMapper.portfolioList",user);
		session.close();
		return portfolioList;
	}



}


   