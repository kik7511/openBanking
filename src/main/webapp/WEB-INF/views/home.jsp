<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">

<head>
	<title>openBanking</title>
	<%@include file = "infra/common/link.jsp" %>	
	<%@include file = "infra/common/font.jsp" %>
	<link rel="stylesheet" type="text/css" href="/resources/css/home.css">
</head>
<body>
<div id="wrap">
	<%@include file = "infra/common/header.jsp" %>	
	<div id = "container" style="width: 100%">
		<div id = "container_inner">
			<div id = "content" style="width: 940px;">
				<div>
					<div class="content login_pc" style="background-color: #00BFFF">
						<a class="banner">
							<img src="/resources/img/background.jpg" style="height: 460px;" >
						</a>
					</div>
						<div class="quickMenuArticle">
						<ul class="listQuickMenu"> 
							<li><a href="#n" id="btnSearchAll"><span class="icoSearch">조회하기</span></a></li>
							<li><a href="#n" id="btnSearchEche"><span class="icoTransfer">이체하기</span></a></li>
							<li><a href="#n" id="btnSearchBank"><span class="icoBank">가계부관리</span></a></li>
						</ul>
						<div class="bg">&nbsp;</div>
				</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file = "infra/common/footer.jsp" %>	
</div>
</body>
</html>