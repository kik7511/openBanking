package com.openBanking.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	
	@Inject
	@Resource(name= "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.openBanking.modules.code.CodeMapper";
	
	public List<Code> selectList() {
		return sqlSession.selectList(namespace + ".selectList", "");
	}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ 
		return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); 
	}

	
	
}
