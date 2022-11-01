package com.openBanking.modules.member;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.openBanking.infra.modules.member.MemberMapper";
	
	public int memberInst(Member dto) {
		return sqlSession.insert(namespace + ".memberInsert", dto);
	}
}
