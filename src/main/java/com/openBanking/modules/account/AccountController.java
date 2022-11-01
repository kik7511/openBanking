package com.openBanking.modules.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value= "/account/")
public class AccountController {
	
	@RequestMapping(value="accountView")
	public String accountView() throws Exception {
		
		return "infra/account/user/accountView";
	}
	
	@RequestMapping(value="accountList")
	public String accountList() throws Exception {

		return "infra/account/user/accountList";
	}
	
	@RequestMapping(value="accountTransfer")
	public String accountTransfer() throws Exception {
	    
	    return "infra/account/user/accountTransfer";
	}
	
	@RequestMapping(value="cardView")
	public String cardView() throws Exception {
	    
	    return "infra/card/user/cardView";
	}
	
	@RequestMapping(value="cardForm")
	public String cardForm() throws Exception {
	    
	    return "infra/card/user/cardForm";
	}
}
