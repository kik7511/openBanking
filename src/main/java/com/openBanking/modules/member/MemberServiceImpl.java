package com.openBanking.modules.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.openBanking.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public int memberInst(Member dto) throws Exception {
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
		return dao.memberInst(dto);
	}
	
	@Override
	public int checkId(Member dto) throws Exception{
		return dao.checkId(dto);
	}
	
	@Override
	public Member login(Member dto) throws Exception {
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
		return dao.login(dto);
	}
}