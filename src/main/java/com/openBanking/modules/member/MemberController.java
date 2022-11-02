package com.openBanking.modules.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value= "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="login")
	public String loginView() throws Exception {
		
		return "infra/member/user/login";
	}
	
	@RequestMapping(value="accountBook")
	public String accountBookView() throws Exception {
		
		return "infra/member/user/accountBook";
	}
	
	@RequestMapping(value="signup")
	public String signupView() throws Exception {
		
		return "infra/member/user/signup";
	}
	
	@RequestMapping(value="signupCompleted")
	public String signupCompletedView() throws Exception {
		
		return "infra/member/user/signupCompleted";
	}
	
	@RequestMapping(value="findpw")
	public String findpwView() throws Exception {
		
		return "infra/member/user/findPw";
	}
	
	@RequestMapping(value="findid")
	public String findidView() throws Exception {
		
		return "infra/member/user/findId";
	}
	
	@RequestMapping(value="passwordModForm")
	public String passwordModForm() throws Exception {
		
		return "infra/member/user/passwordModForm";
	}
	
	@RequestMapping(value="test")
	public String test() throws Exception {
		
		return "infra/member/user/test";
	}
	
//	insert member
	@RequestMapping(value="memberInst")
	public String memberInst(Member dto) throws Exception {
		service.memberInst(dto);
		return "redirect:/member/signupCompleted";
	}


}
