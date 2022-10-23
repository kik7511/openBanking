<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">
	<head>
		<title>openBanking</title>
		<%@include file = "../../common/link.jsp" %>
		<%@include file = "../../common/font.jsp" %>
		<style type="text/css">
			#wrap {width:900px; margin: auto; margin-bottom: 30px; height: 500px;}
			.layerTooltip {position:relative; display:inline-block; margin:0 !important;}
			.layerTooltip .tip {display:none; position:absolute; top:-3px; left:0; width:100px; margin-left:0 !important; padding:5px; color:#000; font-size:10px; background-color:rgba(0, 0, 0, 0);}
			.layerTooltip.on .tip {display:block;}
			#container_inner {width:100% !important;}
			#container_inner #content {width:100% !important;}
			#content, .content {float:none; width:100% !important;}
			#content .sub_cont_wrap {width:940px; margin:0 auto;}
			.underbar {border-bottom: 2px solid black; padding: 5px; width: 190px; padding-bottom: 10px;}
			.blank {height: 30px; background-color: white;}
			.context_content {padding: 2px;}
			.passwordMod {padding-bottom: 30px; padding-top: 30px;}
			.passwordSpan {padding-left: 75px;} 
			.input_text {border: 1px solid black; padding: 5px; text-align: center; border-radius: 5px;}
			.passwordtext {margin-bottom: 13px; margin-top: 13px; display:flex; justify-content: space-between; width: 500px; padding-bottom: 13px;}
		</style>
	</head>
	<body>
		<%@include file = "../../common/header.jsp" %>
			<div id="wrap">
				<div class="blank"></div>
				<div class="flex-shrink-0 p-3 bg-white" style="width: 200px; float: left; height: 100%">
				    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
				      <span class="fs-5 fw-semibold" style="padding-left: 15px;">내정보관리</span>
				    </a>
				    <ul class="list-unstyled ps-0">
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
				          내정보관리
				        </button>
				      </li>
				      <li class="border-top my-3"></li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
				          비밀번호 변경
				        </button>
				      </li>
				      <li class="border-top my-3"></li>
				    </ul>
				  </div>
				  <div style="margin-top: 11px;">
				  	<span style="font-size: 15px; font-weight: bold; padding-left: 40px;">소중한 내 정보를 최신으로 관리하세요.</span>
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
			 	 <div align="center">
			 	 	<button type="button" class="btn btn-primary">변경하기</button>
			 	 </div>
			</div>	
			<%@include file = "../../common/footer.jsp" %>	
	</body>
</html>