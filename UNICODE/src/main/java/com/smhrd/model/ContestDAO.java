package com.smhrd.model;

import java.util.List;

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
	public List<Contest> ShowContest() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Contest> contestList = session.selectList("com.smhrd.db.ContestMapper.ShowContest");
		System.out.println(contestList);
	    return contestList;
	}
	public List<Contest> ActiveContest() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Contest> contestList = session.selectList("com.smhrd.db.ContestMapper.ActiveContests");
	    return contestList;
	}
	public List<Contest> EndedContest() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Contest> contestList = session.selectList("com.smhrd.db.ContestMapper.EndedContests");
	    return contestList;
	}
}
