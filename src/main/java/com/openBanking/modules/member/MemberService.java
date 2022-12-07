package com.openBanking.modules.member;

import java.util.List;

public interface MemberService {
//	List
	public List<Member> selectList() throws Exception;
	
//	login
	public int checkId(Member dto) throws Exception;
	public Member login(Member dto) throws Exception;
	
//	Inst
	public int accountBookInst(Member dto)throws Exception;
	public int memberInst(Member dto) throws Exception;
	
	public List<Member> accountBookList(Member dto) throws Exception;
	public Member accountBookSelectOne(Member dto) throws Exception;
	
//	find Id & Pw
	public Member findId(Member dto) throws Exception;
	public int findPw(Member dto) throws Exception;
	public int changePw(Member dto) throws Exception;
}
