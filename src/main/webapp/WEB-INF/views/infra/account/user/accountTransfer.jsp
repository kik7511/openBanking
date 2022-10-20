<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">

<head>
	<title>openBanking</title>
	<%@include file = "../../common/link.jsp" %>	
	<style type="text/css">
		.layerTooltip {position:relative; display:inline-block; margin:0 !important;}
		.layerTooltip .tip {display:none; position:absolute; top:-3px; left:0; width:100px; margin-left:0 !important; padding:5px; color:#000; font-size:10px; background-color:rgba(0, 0, 0, 0);}
		.layerTooltip.on .tip {display:block;}
		#container_inner {width:100% !important;}
		#container_inner #content {width:100% !important;}
		#content, .content {float:none; width:100% !important;}
		#content .sub_cont_wrap {width:940px; margin:0 auto;}
		
		/* 버튼css */
		.btn {
		    border: 0;
		    line-height: 2.5;
		    padding: 0 20px;
		    font-size: 1rem;
		    text-align: center;
		    color: #fff;
		    text-shadow: 1px 1px 1px #000;
		    border-radius: 10px;
		    background-color: #454d5b;
		    background-image: linear-gradient(to top left,
		                                      rgba(0, 0, 0, .2),
		                                      rgba(0, 0, 0, .2) 30%,
		                                      rgba(0, 0, 0, 0));
		    box-shadow: inset 2px 2px 3px rgba(255, 255, 255, .6),
		                inset -2px -2px 3px rgba(0, 0, 0, .6);
		}
		
		.btn:hover {
		    background-color: #454d5b;
		}
		
		.btn:active {
		    box-shadow: inset -2px -2px 3px rgba(255, 255, 255, .6),
		                inset 2px 2px 3px rgba(0, 0, 0, .6);
		}
		/* 버튼css */
	</style>
</head>
<body>
<div id="wrap">
	<%@include file = "../../common/header.jsp" %>	
	<%@include file = "../../common/font.jsp" %>
	<!-- main S -->
	<div style="width:600px; margin:auto;">
		<div class="row" style="margin-top: 30px;">
			<div class="col">
				<h2>이체하기</h2>
			</div>		
		</div>
		<div class="row" style="margin-top : 20px;">
			<div class="col">
				<lable>
					<i class="fa-solid fa-wallet"></i>출금계좌
				</lable>
				<br>
				<input type="text" value="My 입출금 통장 100-133-242800" style="width:500px; border-bottom: 1px solid; border-color:lightgray; background: none;">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" value="입금가능금액 0원" style="background: none;">
			</div>
			<div class="col offset-5 mt-1">
				<button type="button">잔액/한도></button>
			</div>
		</div>
		<div class="row" style="margin-top : 20px;">
			<div class="col">
				<lable>
					<i class="fa-sharp fa-solid fa-circle-user"></i>받는사람
				</lable>
				<br>
				<input type="text" value="계좌번호" style="width:500px; border-bottom: 1px solid; border-color:lightgray; background: none;">
			</div>
		</div>
		<div class="row" style="margin-top : 20px;">
			<div class="col">
				<lable>
					<i class="fa-sharp fa-solid fa-won-sign"></i>금액
				</lable>
				<br>
				<input type="text" value="원" style="width:500px; border-bottom: 1px solid; border-color:lightgray; background: none;">
			</div>
			<div class="form-check offset-8">
			  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			  <label class="form-check-label" for="flexCheckDefault">
			   마우스 입력
			  </label>
			</div>
		</div>
		<div class="row" style="padding:20px; margin-left:150px;">
			<div class="col">
				<button class="btn" type="button" style="width:100px;">취소</button>
				<button class="btn" type="button">이체하기</button>
			</div>
		</div>	
	</div>
   	<!-- main E-->
	<%@include file = "../../common/footer.jsp" %>	
</div>
</body>
</html>