<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">
	<head>
		<title>openBanking</title>
		<%@include file = "../../../infra/common/link.jsp" %>	
		<style type="text/css">
			.layerTooltip {position:relative; display:inline-block; margin:0 !important;}
			.layerTooltip .tip {display:none; position:absolute; top:-3px; left:0; width:100px; margin-left:0 !important; padding:5px; color:#000; font-size:10px; background-color:rgba(0, 0, 0, 0);}
			.layerTooltip.on .tip {display:block;}
			#container_inner {width:100% !important;}
			#container_inner #content {width:100% !important;}
			#content, .content {float:none; width:100% !important;}
			#content .sub_cont_wrap {width:940px; margin:0 auto;}
			.sidebar {position: fixed; top: 120px; left: 211.5; width: 220px; height: 100%;}
			.underbar {border-bottom: 2px solid black; padding: 5px; width: 190px; padding-bottom: 10px;}
			.blank {height: 30px; background-color: white;}
			.account{padding: 5px; width: 100%; left: 431.5; position: fixed; left: 431.5; width: 850px;}
			.account_context {border-left: 5px solid yellow; margin-top: 15px; padding-left: 20px;}
		</style>
	</head>
	<body>
		<div id="wrap">
			<%@include file = "../../../infra/common/header.jsp" %>
			<div id = "container" style="width: 100%">
				<div class="blank"></div>
				<div class="sidebar">
					<div class="blank"></div>
					<div class="underbar">
						<h3><strong>조회</strong></h3>
					</div>
				</div>
				<div class="account">
					<h4 style="padding-top: 2px;">조회</h4>
					<div class="account_context">
						<div style="text-align: right;"><span style="font-size: 7px;">관리</span></div>
						<div style="font-size: 11px; font: bold;">MY 입출금통장</div>
						<div style="font-size: 7px; color: gray;">100-133-242800</div>
						<div>
							<span>0</span>
							<span>원</span>
						</div>
						<div>
							<button>이체하기</button>
						</div>
					</div>
					<div>
						<button></button>
					</div>
					<div>
						<span>3개월 전체 최신순</span>
					</div>
					<div>
						<div>
							<span>09.24</span>
							<span>05.48</span>
						</div>
						<div>
							<span>이자</span>
							<span>+0원</span>
						</div>
						<div>
							<span>이자</span>
							<span>+0원</span>
						</div>
					</div>
				</div>	
			</div>
			<%@include file = "../../../infra/common/footer.jsp" %>	
		</div>	
	</body>
</html>