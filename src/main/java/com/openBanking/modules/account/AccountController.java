package com.openBanking.modules.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value= "/account/")
public class AccountController {
	
	@Autowired
	AccountServiceImpl service;
	
	@RequestMapping(value="accountView")
	public String accountView() throws Exception {
		
		return "infra/account/user/accountView";
	}
	
	@RequestMapping(value="accountList")
	public String accountList(Model model) throws Exception {
		List<Account> list = service.selectList();
		model.addAttribute("list", list);
//		List<Account> list2 = service.selectList2();
//		model.addAttribute("list", list);
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
