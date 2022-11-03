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
	
//	accountBookInst
	public int accountBookInst(Account dto) {
		return sqlSession.insert(namespace + ".accountBookInst", dto);
	}
}
