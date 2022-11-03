<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="ko">
<head>
	<title>openBanking</title>
	
	<%@include file = "../../common/link.jsp" %>	
	<%@include file = "../../common/font.jsp" %>
	<link rel="stylesheet" href="../../resources/css/accountList.css">
</head>
<body>
<%@include file = "../../common/header.jsp" %>	
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
					<span>${list.bankName}</span>
		     		<span>${list.accountNumber}</span>
		 			<br>
		     		<span>계좌잔액</span>
		     		<span>${list.balanceAmt}원</span>
				</div>
			</c:forEach>
				<div class="account-item">
					<img src="../../../../resources/img/logo/shinhan_logo.png" class="logo_style">
					<span>신한은행</span>
		     		<span>110-1234-5678</span>
		 			<br>
		     		<span>계좌잔액</span>
		     		<span>12,300원</span>
				</div>
			</div>
			<div style="margin: 20px 0 10px 0;">카드</div>
			<div class="card-list">
			<c:forEach items="${list}" var="list" varStatus="status">
				<div class="card-item">
	           		<img src="../../../../resources/img/logo/hyundaiCard_logo.png" class="logo_style">
		       		<span>${list.cardName}</span>
		       		<br>
		       		<span>사용금액</span>
		       		<span>12,300원</span>
		       	</div>
	       	</c:forEach>
		       	<div class="card-item">
			       	<img src="../../../../resources/img/logo/samsungCard_logo.png" class="logo_style">
		       		<span>삼성카드</span>
		       		<br>
		       		<span>사용금액</span>
		       		<span>12,300원</span>
		       	</div>
            </div>
		</div>
	</div>
	<%@include file = "../../common/footer.jsp" %>	
</body>
</html>