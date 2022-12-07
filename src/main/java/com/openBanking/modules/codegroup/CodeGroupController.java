package com.openBanking.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(CodeGroupVo vo, Model model) throws Exception {
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/codeGroup/codeGroupList";
	}
	
	/*
	 * @RequestMapping(value = "codeGroupForm") public String
	 * codeGroupForm(CodeGroup dto, @ModelAttribute("Vo") CodeGroupVo vo, Model
	 * model) throws Exception { CodeGroup result = service.selectOne(vo);
	 * System.out.println("vo.getCcgSeq(): " + vo.getCcgSeq());
	 * model.addAttribute("item", result); return "infra/codeGorup/codeGroupForm"; }
	 */
	@RequestMapping( value = "codeGroupForm")
	public String codeGroupForm() {
		return "infra/codeGroup/codeGroupForm";
	}
}
