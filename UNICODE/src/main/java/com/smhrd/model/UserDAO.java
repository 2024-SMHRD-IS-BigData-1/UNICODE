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


	public int profil(Profil profil) {
		SqlSession session = sqlSessionFactory.openSession(true);
		System.out.println(profil);
		int cnt = session.insert("com.smhrd.db.UserMapper.profil", profil);
		session.close();
		return cnt;
	}
	
	public Profil userprofil(User user) {
		SqlSession session = sqlSessionFactory.openSession(true);
		Profil userprofil = session.selectOne("com.smhrd.db.UserMapper.userprofil",user);
		session.close();
		return userprofil;
	}
	public Profil userprofile(String user) {
		SqlSession session = sqlSessionFactory.openSession(true);
		Profil userprofile = session.selectOne("com.smhrd.db.UserMapper.userprofil",user);
		session.close();
		return userprofile;
	}

	public int modify(Profil profil) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("com.smhrd.db.UserMapper.modify", profil);
		session.close();
		return cnt;
	}
	
	public List<User> UserList(){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<User> userList = session.selectList("com.smhrd.db.UserMapper.UserList");
		session.close();
		System.out.println(userList);
		return userList;
	}
	
	
	

	
}
