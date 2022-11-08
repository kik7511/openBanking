package com.openBanking.modules.account;

import java.util.List;

import com.openBanking.modules.member.Member;

public interface AccountService {

	public List<Account> selectList() throws Exception;
	public List<Account> selectList2() throws Exception;
	public int accountBookInt(Account dto) throws Exception;
	public int selectOneCount(AccountVo vo) throws Exception;
	public int cardInst(Account dao) throws Exception;
}
