package com.openBanking.modules.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	AccountDao dao;

	@Override
	public List<Account> selectList() throws Exception {
		List<Account> list = dao.selectList();
		return list;
	}
	
	@Override
	public List<Account> selectList2() throws Exception {
		List<Account> list= dao.selectList2();
		return list;
	}
	
	@Override
	public int accountBookInt(Account dto) throws Exception {
		return dao.accountBookInst(dto);
	}
	
	@Override
	public int selectOneCount(AccountVo vo) throws Exception {
	    return dao.selectOneCount(vo);
	}
	
	@Override
	public int cardInst(Account dto) throws Exception {
		return dao.cardInst(dto);
	}
	
}
