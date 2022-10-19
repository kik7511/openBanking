package com.openBanking.modules.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value= "/member/")
public class MemberController {
	
	@RequestMapping(value="login")
	public String loginView() throws Exception {
		
		return "infra/member/user/login";
	}
	
	@RequestMapping(value="accountBook")
	public String accountBookView() throws Exception {
		
		return "infra/member/user/accountBook";
	}


}
