package com.openBanking.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.openBanking.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
//	selectList
	@Override
	public int memberInst(Member dto) throws Exception {
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
		return dao.memberInst(dto);
	}
	
//	checkId
	@Override
	public int checkId(Member dto) throws Exception{
		return dao.checkId(dto);
	}
	
//	login
	@Override
	public Member login(Member dto) throws Exception {
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
		return dao.login(dto);
	}
	
//	accountBookInst
	@Override
	public int accountBookInst(Member dto)throws Exception {
		return dao.accountBookInst(dto);
	}
	
	@Override
	public List<Member> accountBookList(Member dto) throws Exception {
		return dao.accountBookList(dto);
	}
	
	@Override
	public Member accountBookSelectOne(Member dto) throws Exception {
		return dao.accountBookSelectOne(dto);
	}
	
//	findId
	@Override
	public Member findId(Member dto) throws Exception {
		
		Member id = dao.findId(dto);
		System.out.println("id : " + id.getIfmmId());
		
		String myId = id.getIfmmId().substring(0, id.getIfmmId().length()-3);
		int starLength = id.getIfmmId().length() - myId.length();
		
		for (int i=0; i<starLength; i++) {
			myId += "*";
		}
		
		dto.setIfmmId(myId);
		
		return dto;
	}
//	findPw
	@Override
	public int findPw(Member dto) throws Exception{
		return dao.findPw(dto);
	}
}
