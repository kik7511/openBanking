package com.openBanking.modules.account;

<<<<<<< HEAD
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
=======
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

>>>>>>> branch 'main' of https://github.com/kik7511/openBanking.git
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
<<<<<<< HEAD
=======
import org.springframework.web.bind.annotation.ModelAttribute;
>>>>>>> branch 'main' of https://github.com/kik7511/openBanking.git
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

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
	
	@RequestMapping(value="checkAccount")
	public String checkAccount() throws Exception {
		 return "infra/member/user/test";
	}
	
}
