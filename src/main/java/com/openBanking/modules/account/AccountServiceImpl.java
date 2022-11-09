package com.openBanking.modules.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	AccountDao dao;

//	selectList
	@Override
	public List<Account> selectList() throws Exception {
		List<Account> list = dao.selectList();
		return list;
	}
	
//	selectList2
	@Override
	public List<Account> selectList2() throws Exception {
		List<Account> list= dao.selectList2();
		return list;
	}
	
//	accountBookIsnt
	@Override
	public int accountBookInst(Account dto) throws Exception {
		return dao.accountBookInst(dto);
	}
	
//	selectOneCount
	@Override
	public int selectOneCount(AccountVo vo) throws Exception {
	    return dao.selectOneCount(vo);
	}
	
//	cardInst
	@Override
	public int cardInst(Account dto) throws Exception {
		return dao.cardInst(dto);
	}
	
	
}
