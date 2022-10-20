package com.openBanking.modules.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value= "/account/")
public class AccountController {
	
	@RequestMapping(value="accountList")
	public String accountList() throws Exception {
		
		return "infra/account/user/accountList";
	}
	
	@RequestMapping(value="detailedCheck")
	public String detailedCheck() throws Exception {

		return "infra/account/user/detailedCheck";
	}
}
