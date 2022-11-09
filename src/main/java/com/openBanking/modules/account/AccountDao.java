package com.openBanking.modules.account;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AccountDao {

	@Inject
	@Resource(name= "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace="com.openBanking.modules.account.AccountMapper";

//	list
	public List<Account> selectList() {
		return sqlSession.selectList(namespace + ".selectList");
	}
	
	public List<Account> selectList2() {
		return sqlSession.selectList(namespace + ".selectList2");
	}
	
//	selectOneCount
	public int selectOneCount(AccountVo vo) {
	    int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
	    return result;
	}
	
//	accountBookInst
	public int accountBookInst(Account dto) {
		return sqlSession.insert(namespace + ".accountBookInst", dto);
	}
	
//	cardInst
	public int cardInst(Account dto) {
		return sqlSession.insert(namespace + ".cardInst", dto);
	}
}
