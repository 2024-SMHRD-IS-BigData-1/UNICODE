package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CommentDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int comment(Comment comment) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.CommunityMapper.comment", comment);
		session.close();
		return cnt;
	}
	
	public List<Comment> commentList(String comm_idx) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Comment> commentList = session.selectList("com.smhrd.db.CommunityMapper.commentList",comm_idx);
		System.out.println(commentList);
		session.close();
		return commentList;
	}
}
