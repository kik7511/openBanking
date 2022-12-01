package com.openBanking.modules.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.exception.NurigoMessageNotReceivedException;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.service.DefaultMessageService;

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
	
//	accountBookInst
	@RequestMapping(value="accountBookInst")
	public String accountBookInst(Member dto) throws Exception {
		service.accountBookInst(dto);
		return "redirect:/member/accountBook";
	}
	
//	insert member
	@RequestMapping(value="memberInst")
	public String memberInst(Member dto) throws Exception {
		service.memberInst(dto);
		return "redirect:/member/signupCompleted";
	}
	
	@ResponseBody
	@RequestMapping(value = "checkId")
		public Map<String, Object> checkId(Member dto) throws Exception {
	
		Map<String, Object> returnMap = new HashMap<String, Object>();

		int result = service.checkId(dto);
		System.out.println("값은" + result);
	
		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@RequestMapping(value="loginProc")
	@ResponseBody
	public Map<String, Object> login(Member dto, Model model, HttpSession httpSession) throws Exception {
		Member member = service.login(dto);
		
		Map<String, Object> result = new HashMap<>();
		
		if(member != null) {
			System.out.println("로그인성공 login ID : " + member.getIfmmId() + " user name : " + member.getIfmmName() + " user seq : " + member.getIfmmSeq() + " user token : " + member.getIfmmAccessToken());
			
//			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            
			session(member, httpSession);
			result.put("result", "success");
		} else {
			System.out.println("로그인 실패 ");
			result.put("result", "fail");
		}
		return result;
	}
	
	@RequestMapping(value="logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		
		String url = request.getHeader("referer");
		
		System.out.println("로그아웃 완료");
		
		return "redirect:"+url;
	}
	
	public void session(Member dto, HttpSession httpSession) {
	     httpSession.setAttribute("sessSeq", dto.getIfmmSeq());    
	     httpSession.setAttribute("sessId", dto.getIfmmId());
	     httpSession.setAttribute("sessName", dto.getIfmmName());
	     httpSession.setAttribute("sessAccessToken", dto.getIfmmAccessToken());
	     httpSession.setAttribute("sessRefreshToken", dto.getIfmmRefreshToken());
	     httpSession.setAttribute("sessUserSeqNo", dto.getIfmmUserSeqNo());
	 }
	
	@ResponseBody
	@RequestMapping(value = "findId")
	public Map<String, Object> findId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member id = service.findId(dto);
		
		if (id != null) {
			returnMap.put("rt", "success");
			returnMap.put("id", id);
		} else {
			returnMap.put("rt", "fall");
		}
		
		return returnMap; 
	}
	
//	SMS인증
	@ResponseBody
	@RequestMapping(value = "checkSms")
	public Map<String, Object> checkSms(Member dto) throws Exception {
		System.out.println("핸도폰 번호 : " + dto.getIfmmTel());
		Map<String, Object> result = new HashMap<String,Object>();
		
		//4자리 난수 생성
		String rndNo = "";
		
		for(int i=0; i < 4; i++) {
			rndNo += (int)(Math.random()*10-1) + 1;
			System.out.println("난수: " + rndNo);
		}
		   
		DefaultMessageService messageService = NurigoApp.INSTANCE.initialize("NCSYVT9ORKBGVGLB", "ZETBEMRL5VCDOBYJJPORUJRLMMZHB17I", "https://api.solapi.com");
//		Message 패키지가 중복될 경우 net.nurigo.sdk.message.model.Message로 치환하여 주세요
		Message message = new Message();
		message.setFrom("1033919715");
		message.setTo(dto.getIfmmTel().toString());
		message.setText("안녕하세요. openBanking 인증번호는 ["+ rndNo + ") 입니다. ");
		
		try {
			// send 메소드로 ArrayList<message> 객체를 넣어도 동작합니다!
			messageService.send(message);
		} catch (NurigoMessageNotReceivedException exception) {
			// 발송에 실패한 메시지 목록을 확인할 수 있습니다!
			System.out.println(exception.getFailedMessageList());
			System.out.println(exception.getMessage());
		} catch (Exception exception) {
			System.out.println(exception.getMessage());
		}
		
		result.put("code", rndNo);
		
		return result;
	}
}
