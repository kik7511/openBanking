package com.openBanking.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.openBanking.modules.member.MemberMapper";
	
	public int memberInst(Member dto) {
		return sqlSession.insert(namespace + ".memberInst", dto);
	}
	
	public int checkId(Member dto) {
		int result = sqlSession.selectOne(namespace + ".checkId", dto);
		return result;
	}
	
	public Member login(Member dto) {
		return sqlSession.selectOne(namespace + ".login", dto); 
	}
	
	public int accountBookInst(Member dto) {
		return sqlSession.insert(namespace + ".accountBookInst", dto);
	}
	
	public List<Member> accountBookList(Member dto) {
		return sqlSession.selectList(namespace + ".accountBookList", dto); 
	}
	
	public Member accountBookSelectOne(Member dto) {
		return sqlSession.selectOne(namespace + ".accountBookSelectOne", dto); 
	}
//	find Id & Pw
	public Member findId(Member dto) {
		return sqlSession.selectOne(namespace + ".findId", dto);
	}
	public int findPw(Member dto) {
		return sqlSession.selectOne(namespace + ".findPw", dto);
	}
	public int changePw(Member dto) {
		return sqlSession.update(namespace + ".changePw", dto);
	}
	
}
