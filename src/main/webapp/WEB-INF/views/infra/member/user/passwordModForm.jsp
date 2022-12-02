<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	

<html lang="ko">
	<head>
		<title>openBanking</title>
		<%@include file = "../../common/link.jsp" %>
		<%@include file = "../../common/font.jsp" %>
		<link rel="stylesheet" type="text/css" href="/resources/css/passwordMod.css">
	</head>
	<body>
		<%@include file = "../../common/header.jsp" %>
			<div id="wrap">
				<div class="flex-shrink-0 p-3 bg-white" style="width: 250px; margin-right: 30px;">
				    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none" style="border-bottom: 2px solid">
				      <span class="fs-5 fw-semibold" style="padding-left: 15px;">내정보관리</span>
				    </a>
				    <ul class="list-unstyled ps-0">
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
				          내정보관리
				        </button>
				      </li>
		 		      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
				          비밀번호 변경
				        </button>
				      </li>
				    </ul>
				  </div>
				  <div style="margin-top: 30px; width : 100%;">
					  <div>
					  	<span style="font-size: 15px; font-weight: bold;">소중한 내 정보를 최신으로 관리하세요.</span>
					  	<div style="margin-top: 11px; margin-bottom: 5px;">
					  		<ul>
					  			<li><span class="spanInfo">비밀번호는 영문 + 숫자 조합 10자리~20자리 입니다.</span></li>
					  			<li><span class="spanInfo">비밀번호는 같은 문자를 5번 이상 연속으로 사용할 수 없습니다.</span></li>
					  			<li><span class="spanInfo">비밀번호는 대문자 혹은 소문자 1개 이상으로 조합되어야 합니다.</span></li>
					  		</ul>
					  	</div>
					  	<input type="hidden" name="ifmmId" value="${dto.ifmmId}">
					  	<input type="hidden" name="ifmmName" value="${dto.ifmmName}">
					  	<div class="passwordMod">
						  	<div class="passwordtext">
						  		<span class="passwordSpan">새 비밀번호</span>
						  		<input type="password" class="input_text" placeholder="변경할 비밀번호를 입력하세요" autocomplete="off">
						  	</div>
						  	<div class="passwordtext">
						  		<span class="passwordSpan">비밀번호 확인</span>
						  		<input type="password" class="input_text" placeholder="변경할 비밀번호를 입력하세요" autocomplete="off">
						  	</div>	
				  		</div> 
				 	 </div>
				 	 <div align="center" style="margin-top: 30px;">
				 	 	<button type="button" class="btn next-btn">변경하기</button>
				 	 </div>
			 	 </div>
			</div>	
			<%@include file = "../../common/footer.jsp" %>	
	</body>
</html>