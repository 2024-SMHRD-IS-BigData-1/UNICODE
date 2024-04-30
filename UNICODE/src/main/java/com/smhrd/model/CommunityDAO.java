package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CommunityDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int comm(Community comm) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.CommunityMapper.comm", comm);
		session.close();
		return cnt;
	}
	
	public List<Community> communityList() {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Community> communityList = session.selectList("com.smhrd.db.CommunityMapper.communityList");
		System.out.println(communityList);
		session.close();
		return communityList;
	}
	
	public Community communityD(String comm_idx) {
		SqlSession session = sqlSessionFactory.openSession(true);
		Community communityD = session.selectOne("com.smhrd.db.CommunityMapper.communityD", comm_idx);
		session.close();
		return communityD;
	}


	
}
