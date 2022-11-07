<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="CodeServiceImpl" class="com.openBanking.modules.code.CodeServiceImpl" />

<html lang="ko">
<head>
	<title>openBanking</title>
	
	<%@include file = "../../common/link.jsp" %>	
	<%@include file = "../../common/font.jsp" %>
	<link rel="stylesheet" href="../../resources/css/accountList.css">
</head>
<body>
<%@include file = "../../common/header.jsp" %>	
<c:set var="listCodebankName" value="${CodeServiceImpl.selectListCachedCode('7')}" />
<c:set var="list2CodecardName" value="${CodeServiceImpl.selectListCachedCode('10')}" />
	<div id="wrap">
		<div class="flex-shrink-0 p-3 bg-white" style="width: 250px; margin-right: 10px;">
		    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none" style="border-bottom: 2px solid">
		      <span class="fs-5 fw-semibold" style="padding-left: 15px;">조회</span>
		    </a>
		</div>
		<div style="margin-top: 20px;">
			<div style="margin-bottom: 10px;">계좌/현금</div>
			<div class="account-list">
			<c:forEach items="${list}" var="list" varStatus="status">
				<div class="account-item" onclick="location.href='/account/accountView'">
					<img src="../../../../resources/img/logo/shinhan_logo.png" class="logo_style">
					<c:forEach items="${listCodebankName}" var="listbankName" varStatus="statusbankName">
						<c:if test="${list.bankName eq listbankName.ccSeq}">
							<c:out value="${listbankName.ccName}" />
						</c:if>
					</c:forEach>
		     		<span>${list.accountNumber}</span>
		 			<br>
		     		<span>계좌잔액</span>
		     		<span>${list.balanceAmt}원</span>
				</div>
			</c:forEach>
			</div>
			<div style="margin: 20px 0 10px 0;">카드</div>
			<div class="card-list">
				<c:forEach items="${list2}" var="list2" varStatus="status">
					<div class="card-item">
		           		<img src="../../../../resources/img/logo/hyundaiCard_logo.png" class="logo_style">
		           		<c:forEach items="${list2CodecardName}" var="list2cardName" varStatus="statuscardName">
		           			<c:if test="${list2.cardName eq list2cardName.ccSeq}">
		           				<c:out value="${list2cardName.ccName}" />
	           				</c:if>
	       				</c:forEach>
			       		<br>
			       		<span>사용금액</span>
			       		<span>12,300원</span>
			       	</div>
		       	</c:forEach>
            </div>
		</div>
	</div>
	<%@include file = "../../common/footer.jsp" %>	
	
	<!-- ------------------script--------------------- -->
	
</body>
</html>