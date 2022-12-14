package com.openBanking.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	
	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception{
		List<CodeGroup> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception {
		CodeGroup codeGroup = dao.selectOne(vo);
		
		return codeGroup;
	}
}
