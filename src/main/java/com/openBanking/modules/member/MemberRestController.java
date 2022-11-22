package com.openBanking.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value= "/rest/member/")
public class MemberRestController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="accountData")
	public List<Member> accountData(Member dto) throws Exception {
		dto.setMemberSeq(dto.getMemberSeq());
		System.out.println(dto.getMemberSeq());
		
		List<Member> list = service.accountBookList(dto);
		
		return list;
	}

}
