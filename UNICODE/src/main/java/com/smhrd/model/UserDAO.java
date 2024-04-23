package com.smhrd.model;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class UserDAO {

	// SqlSessionManager 클래스의 getSqlSession() 호출
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	public int join(User user) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.UserMapper.join", user);
		session.close();
		return cnt;
	}


	public String IDCheck(String inputE) {
		SqlSession session = sqlSessionFactory.openSession(true);
		String user_id = session.selectOne("com.smhrd.db.UserMapper.IDCheck", inputE);
		session.close();
		return user_id;
	}


	public User login(User user) {
		SqlSession session = sqlSessionFactory.openSession(true);
		User loginUser = session.selectOne("com.smhrd.db.UserMapper.login", user);
		System.out.println(loginUser);
		session.close();
		return loginUser;
	}

	
	
	
	
	
	
	
	
}
