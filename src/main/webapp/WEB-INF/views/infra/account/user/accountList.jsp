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
			#wrap {width:900px; margin: auto; margin-bottom: 30px; height: 600px;}
			.layerTooltip {position:relative; display:inline-block; margin:0 !important;}
			.layerTooltip .tip {display:none; position:absolute; top:-3px; left:0; width:100px; margin-left:0 !important; padding:5px; color:#000; font-size:10px; background-color:rgba(0, 0, 0, 0);}
			.layerTooltip.on .tip {display:block;}
			#container_inner {width:100% !important;}
			#container_inner #content {width:100% !important;}
			#content, .content {float:none; width:100% !important;}
			#content .sub_cont_wrap {width:940px; margin:0 auto;}
			.underbar {border-bottom: 2px solid black; padding: 5px; width: 190px; padding-bottom: 10px;}
			.blank {height: 30px; background-color: white;}
			.border_yellow {}
			.context_content {padding: 2px;}
		</style>
	</head>
	<body>
		<%@include file = "../../common/header.jsp" %>
			<div id="wrap">
				<div class="blank"></div>
				<div class="flex-shrink-0 p-3 bg-white" style="width: 200px; float: left; height: 100%">
				    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
				      <span class="fs-5 fw-semibold" style="padding-left: 15px;">조회</span>
				    </a>
				    <ul class="list-unstyled ps-0">
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
				          Home
				        </button>
				      </li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
				          Dashboard
				        </button>
				      </li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
				          Orders
				        </button>
				      </li>
				      <li class="border-top my-3"></li>
				      <li class="mb-1">
				        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
				          Account
				        </button>
				      </li>
				    </ul>
				  </div>
				  <div style="margin-top: 11px;">
				  	<span style="font-size: 18px;">조회</span>
				  	<div class="border_yellow">
				  		<div style="text-align: right; padding: 20px;"><span style="font-size: 15px;">관리</span></div>
				  		<div class="context_content"><span style="font-size: 20px;">MY 입출금통장</span></div>
				  		<div class="context_content"><span style="font-size: 14px; color: gray;">110-133-242800</span></div>
				  		<div style="padding-top: 13px;padding-bottom: 13px;">
				  			<span style="font-size: 25px;"><strong>0</strong></span>
				  			<span style="font-size: 22px;">원</span>
			  			</div>
			  			<div align="right" style="padding-bottom: 10px; padding-top: 10px;">
			  				<button type="button" class="btn btn-primary"><span style="color: white;">이체하기</span></button>
			  			</div>
				  	</div> 			
				 </div>
				</div>	
			<%@include file = "../../common/footer.jsp" %>	
	</body>
</html>