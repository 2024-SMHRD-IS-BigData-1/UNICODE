package com.smhrd.model;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CompanyDAO {

	// SqlSessionManager 클래스의 getSqlSession() 호출
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	public int join(Company company) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.CompanyMapper.join", company);
		session.close();
		return cnt;
	}


	public String C_IDCheck(String inputE) {
		SqlSession session = sqlSessionFactory.openSession(true);
		String company_id = session.selectOne("com.smhrd.db.CompanyMapper.C_IDCheck", inputE);
		session.close();
		return company_id;
	}


	public Company login(Company company) {
		SqlSession session = sqlSessionFactory.openSession(true);
		Company loginCompany = session.selectOne("com.smhrd.db.CompanyMapper.login", company);
		System.out.println(loginCompany);
		session.close();
		return loginCompany;
	}




	
	
	
	
}
