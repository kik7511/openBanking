package com.openBanking.modules.member;

public interface MemberService {

	public int memberInst(Member dto) throws Exception;
	public int checkId(Member dto) throws Exception;
}
