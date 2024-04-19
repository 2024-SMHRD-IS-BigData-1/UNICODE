package com.smhrd.model;

import java.util.List;

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


	public User IDCheck(String inputE) {
		SqlSession session = sqlSessionFactory.openSession(true);
		User user = (User)session.selectOne("com.smhrd.db.UserMapper.IDCheck", inputE);
		session.close();
		return user;
	}


	
	
	
	
	
	
	
}
