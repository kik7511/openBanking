package com.openBanking.modules.account;

import java.util.List;

public interface AccountService {

	public List<Account> selectList() throws Exception;
	public int accountBookInt(Account dto) throws Exception;
}