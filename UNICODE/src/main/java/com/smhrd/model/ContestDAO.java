package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ContestDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	public int enroll(Contest contest) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.ContestMapper.enroll", contest);
		session.close();
		return cnt;
	}

}
