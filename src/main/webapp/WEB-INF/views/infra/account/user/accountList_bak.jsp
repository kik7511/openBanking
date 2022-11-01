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
		<!-- main -->
	    <div class="container container_option">
	        <div class="height">
	            <div class="col">
	                <span>계좌/현금</span>
	            </div>
	        </div>
	     	<div class="account_view">
		       	<div class="account_item">
		     		<img src="../../../../resources/img/logo/shinhan_logo.png" class="logo_style">
		     		<span>신한은행</span>
		     		<span>110-1234-5678</span>
		 			<br>
		     		<span>계좌잔액</span>
		     		<span>12,300원</span>
		       	</div>
		       	<div class="account_item">
		     		<img src="../../../../resources/img/logo/shinhan_logo.png" class="logo_style">
		     		<span>신한은행</span>
		     		<span>12,300원</span>
		 			<br>
		     		<span>계좌잔액</span>
		     		<span>12,300원</span>
		       	</div>
	        </div>
	       <!-- 카드 -->
	        <div class="row height">
	                <span>카드</span>
	            </div>
	        </div>
	       <div class="row card_view">
	            <div class="col"> 
	           		<img src="../../../../resources/img/logo/hyundaiCard_logo.png" class="logo_style">
		       		<span>현대카드</span>
		       		<br>
		       		<span>사용금액</span>
		       		<span>12,300원</span>
	            </div>
	        </div>
	       	<div class="row card_view">
	        	 <div class="col">
		     		<img src="../../../../resources/img/logo/shinhanCard_logo.png" class="logo_style">
		       		<span>신한카드</span>
		       		<br>
		       		<span>사용금액</span>
		       		<span>12,300원</span>
	            </div>
	        </div>
	      	<div class="row card_view">
	        	 <div class="col">
		       		<img src="../../../../resources/img/logo/samsungCard_logo.png" class="logo_style">
		       		<span>삼성카드</span>
		       		<br>
		       		<span>사용금액</span>
		       		<span>12,300원</span>
	            </div>
	        </div>
	        <div class="row card_view">
	        	 <div class="col">
		       		<img src="../../../../resources/img/logo/kbCard_logo.png" class="logo_style">
		       		<span>국민카드</span>
		       		<br>
		       		<span>사용금액</span>
		       		<span>12,300원</span>
	            </div>
	        </div>
	       <div class="row card_view">
	        	 <div class="col">
		       		<img src="../../../../resources/img/logo/wooriCard_logo.png" class="logo_style">
		       		<span>우리카드</span>
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