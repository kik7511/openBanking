package com.openBanking.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value= "/rest/member/")
public class MemberRestController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="accountList")
	public List<Member> accountData(Member dto) throws Exception {
		List<Member> list = service.accountBookList(dto);
		
		return list;
	}
	
	@RequestMapping(value="accountBookSelectOne")
	public Member accountBookData(Member dto) throws Exception {
		Member item = service.accountBookSelectOne(dto);
		
		return item;
	}

}
