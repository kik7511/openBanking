package com.openBanking.modules.account;

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

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

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
	
	@RequestMapping(value="checkAccount")
	public String checkAccount() throws Exception {
		 return "infra/member/user/test";
	}
	
}
