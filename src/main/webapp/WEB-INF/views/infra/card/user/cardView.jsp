<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">
<head>
	<title>openBanking</title>
	<%@include file = "../../common/link.jsp" %>
	<%@include file = "../../common/font.jsp" %>
	<link rel="stylesheet" type="text/css" href="/resources/css/cardList.css">
	<style>
		.total_list {
			font-size : 50px;
		}
		
	/* 	.total_menu{
			align : right;
			padding-bottom : 10px;
			padding-top : 10px;
		} */
		
		.total_menu_btn {
			color : gray;
			border-radius : 3px;
		}
		
		.list_date {
			font-size : 15px;
			padding-left : 20px;
			
		}
		
		.list_display {
			display : flex;
			justify-content : space-between;
			margin-bottom : 5px;
		}
		
		/* .list_useNmae {
			margin_left: 20px;
		} */
		
		
	</style>
</head>
<body>
	<%@include file = "../../common/header.jsp" %>
	<div id="wrap">
		<div class="flex-shrink-0 p-3 bg-white" style="width: 250px; margin-right: 10px;">
		    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none" style="border-bottom: 2px solid">
		      <span class="fs-5 fw-semibold" style="padding-left: 15px;">사용내역</span>
		    </a>
		</div>
		  <div style="margin-top: 11px; width:90%">
		  	<span style="font-size : 23px; color : #454D5B;">사용내역</span>
		  	<div class="border_yellow">
		  		<div style="text-align: right; padding: 20px;"><span style="font-size: 15px;">관리</span></div>
		  		<div class="context_content" style="text-align:center;"><span style="font-size: 25px;">총이용금액</span></div>
		  		<div style="padding-top: 13px;padding-bottom: 13px; text-align:center;">
		  			<span class="total_list"><strong>775,364</strong></span>
		  			<span class="total_list">원</span>
	  			</div>
	  			<div align="right" style="padding-bottom: 10px; padding-top: 10px;">
	  				<button type="button" class="btn next-btn"><span style="color: white;">납부하기</span></button>
	  			</div>
	  			<div align="right" style="padding-bottom: 10px; padding-top: 10px;">
	  				<button type="button" class="btn btn-light total_menu_btn"><span><i class="fas fa-light fa-print"></i>출력</span></button>
	  				<button type="button" class="btn btn-light total_menu_btn"><span><i class="fas fa-thin fa-file-arrow-down"></i>엑셀 다운로드</span></button>
		  		</div>	
		  		<div style="background-color: #F2F2F2; height: 55px; margin-top: 10px;">
		  			<i class="fa-solid fa-magnifying-glass fa-1x" style="padding-left: 25px;padding-top: 22px"></i>
		  		</div>
		  		<div>
		  			<ul>
		  				<li style="border-bottom: 1px solid gray">
		  					<div style="margin-top: 15px; margin-bottom: 15px;">
		  						<span class="list_date">2022.10.31 08:36</span>
		  					</div>
		  					<div class="list_display">
		  						<div style="margin-left: 20px;"><span>(주)발트페이먼츠</span></div>
		  						<div style="margin-right: 20px;"><span style="margin-right: 5px; color: purple; font-size: 21px; font-weight: bolder;">5,000</span><span style="font-weight: bolder; color: purple;">원</span></div>
		  					</div>
		  					<div style="display:flex; justify-content: space-between; margin-bottom: 15px;">
		  						<div style="margin-left: 20px; font-size: 11px;"><span>본인 <span style="color: blue; font-weight: bold;">VISA</span> 155 | 일시불</span></div>
		  						<div style="margin-right: 20px;"><span style="margin-right: 5px; font-size: 11px; color: gray;">누적</span><span style="font-size: 11px; color: gray">5,000</span><span style="font-size: 11px; color: gray;">원</span></div>
		  					</div>
		  				</li>
		  				<li style="border-bottom: 1px solid gray">
		  					<div style="margin-top: 15px; margin-bottom: 15px;">
		  						<span class="list_date">2022.10.31 08:36</span>
		  					</div>
		  					<div class="list_display">
		  						<div style="margin-left: 20px;"><span>(주)발트페이먼츠</span></div>
		  						<div style="margin-right: 20px;"><span style="margin-right: 5px; color: purple; font-size: 21px; font-weight: bolder;">5,000</span><span style="font-weight: bolder; color: purple;">원</span></div>
		  					</div>
		  					<div style="display:flex; justify-content: space-between; margin-bottom: 15px;">
		  						<div style="margin-left: 20px; font-size: 11px;"><span>본인 <span style="color: blue; font-weight: bold;">VISA</span> 155 | 일시불</span></div>
		  						<div style="margin-right: 20px;"><span style="margin-right: 5px; font-size: 11px; color: gray;">누적</span><span style="font-size: 11px; color: gray">5,000</span><span style="font-size: 11px; color: gray;">원</span></div>
		  					</div>
		  				</li>
		  				<li style="border-bottom: 1px solid gray">
		  					<div style="margin-top: 15px; margin-bottom: 15px;">
		  						<span class="list_date">2022.10.31 08:36</span>
		  					</div>
		  					<div class="list_display">
		  						<div style="margin-left: 20px;"><span>(주)발트페이먼츠</span></div>
		  						<div style="margin-right: 20px;"><span style="margin-right: 5px; color: purple; font-size: 21px; font-weight: bolder;">5,000</span><span style="font-weight: bolder; color: purple;">원</span></div>
		  					</div>
		  					<div style="display:flex; justify-content: space-between; margin-bottom: 15px;">
		  						<div style="margin-left: 20px; font-size: 11px;"><span>본인 <span style="color: blue; font-weight: bold;">VISA</span> 155 | 일시불</span></div>
		  						<div style="margin-right: 20px;"><span style="margin-right: 5px; font-size: 11px; color: gray;">누적</span><span style="font-size: 11px; color: gray">5,000</span><span style="font-size: 11px; color: gray;">원</span></div>
		  					</div>
		  				</li>
		  				<li style="border-bottom: 1px solid gray">
		  					<div style="margin-top: 15px; margin-bottom: 15px;">
		  						<span class="list_date">2022.10.31 08:36</span>
		  					</div>
		  					<div class="list_display">
		  						<div style="margin-left: 20px;"><span>(주)발트페이먼츠</span></div>
		  						<div style="margin-right: 20px;"><span style="margin-right: 5px; color: purple; font-size: 21px; font-weight: bolder;">5,000</span><span style="font-weight: bolder; color: purple;">원</span></div>
		  					</div>
		  					<div style="display:flex; justify-content: space-between; margin-bottom: 15px;">
		  						<div style="margin-left: 20px; font-size: 11px;"><span>본인 <span style="color: blue; font-weight: bold;">VISA</span> 155 | 일시불</span></div>
		  						<div style="margin-right: 20px;"><span style="margin-right: 5px; font-size: 11px; color: gray;">누적</span><span style="font-size: 11px; color: gray">5,000</span><span style="font-size: 11px; color: gray;">원</span></div>
		  					</div>
		  				</li>
		  			</ul>
		  		</div>
	  		</div> 			
	 	</div>
	</div>	
	<%@include file = "../../common/footer.jsp" %>	
</body>
</html>