package com.openBanking.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	public List<CodeGroup> select(CodeGroupVo vo) throws Exception;
}
