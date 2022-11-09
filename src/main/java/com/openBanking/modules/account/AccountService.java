package com.openBanking.modules.account;

import java.util.List;

import com.openBanking.modules.member.Member;

public interface AccountService {

//	List
	public List<Account> selectList() throws Exception;
	public List<Account> selectList2() throws Exception;
//	Inst
	public int accountBookInst(Account dto) throws Exception;
	public int cardInst(Account dao) throws Exception;
	
	public int selectOneCount(AccountVo vo) throws Exception;
}
