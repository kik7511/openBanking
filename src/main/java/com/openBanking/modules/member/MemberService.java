package com.openBanking.modules.member;

public interface MemberService {

	public int checkId(Member dto) throws Exception;
	public Member login(Member dto) throws Exception;
	
//	Inst
	public int accountBookInst(Member dto)throws Exception;
	public int memberInst(Member dto) throws Exception;
}
