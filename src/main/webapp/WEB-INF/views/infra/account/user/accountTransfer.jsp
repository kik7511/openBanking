<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">
<head>
	<title>openBanking</title>
	
	<%@include file = "../../common/link.jsp" %>
	<%@include file = "../../common/font.jsp" %>
	<link rel="stylesheet" type="text/css" href="/resources/css/accountTransfer.css">

	<style type="text/css">
		.underLine {
			border-bottom : 1.5px solid #D0D8E0;
		}
		
		.inputBOx_myAccount {
			width : 500px;
			margin-bottom : 3px;
			border-style : none;
		}
		
		.inputBox_possible {
			margin-top : 3px;
			border-style:none;
		}
		
		.inputBox_sendAccount {
			width : 400px;
			border-style : none;
		}
		
		.inputBox_won {
			width : 500px;
			border-style : none;
		}
		
		.underBtn {
			padding : 20px;
			margin-left : 150px;
		}
		
		.mouse_click {
			width : 15%;
			position: absolute; 
			top: 63%;
			left : -4.5%;
		} 
		
		.fa-wallet, .fa-user, .fa-won-sign {
			color : #0F0060; 
			margin-right: 10px;
		}
		
		.next-btn {
			border : 1px solid #BEB4AF;
			width : 200px;
			color : white;
			background-color : #0F0060;
			border : 0px;
			border-radius: 0px;
		}
		
		.next-btn:hover {
			color : white;
			background-color : #0F0060;
			border : 0px;
		}
		
		.tit {
			font-size : 23px;
			margin-left: 380px;
			color : #454D5B
		}
	</style>
</head>
<body>
<%@include file = "../../common/header.jsp" %>
	<div id="wrap">
	<!-- main S -->
		<div class="flex-shrink-0 p-3 bg-white" style="width: 250px; margin-right: 30px;">
		    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none" style="border-bottom: 2px solid">
		      <span class="fs-5 fw-semibold" style="padding-left: 15px;">이체</span>
		    </a>
		    <ul class="list-unstyled ps-0">
		      <li class="mb-1">
		        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
		          이체하기
		        </button>
		      </li>
<!-- 		      <li class="mb-1">
		        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
		          Dashboard
		        </button>
		      </li> -->
		    </ul>
		  </div>
		<div>
			<span style="font-size : 23px; color : #454D5B;">이체</span>
			<div style="margin : 20px 0 40px 0;">
				<div style="margin-bottom: 15px;"><i class="fa-solid fa-wallet"></i>출금계좌</div>
				<div class="row underLine">
					<div class="col"><input type="text" class="inputBox_myAccount" placeholder="My 입출금 통장 100-133-242800"></div>
				</div>
				<div style="display: flex; justify-content: space-between;">
					<input type="text" class="input_box inputBox_possible" value="" placeholder="입금가능금액 0원">
					<a href="#" style="color:#757575; margin-top: 5px;">잔액/한도</a>
				</div>
			</div>
			<div style="margin : 0 0 40px 0;">
				<div style="margin-bottom: 15px;"><i class="fa-solid fa-user"></i>받는사람</div>
				<div class="row underLine">
					<div class="col-3" style="padding: 0px;">
						<select class="form-select" style="border-style:none; display: inline-block;">
							<option>은행</option>
							<option>국민</option>
							<option>신한</option>
							<option>농협</option>
							<option>하나</option>
							<option>우리</option>
							<option>카카오</option>
							<option>토스</option>
							<option>신협</option>
							<option>새마을금고</option>
							<option>수협</option>
							<option>SC</option>
						</select>
					</div>
					<div class="col-7">
						<input type="text" class="input_box inputBox_sendAccount" value="" placeholder="계좌번호">
					</div>
				</div>
			</div>
			<div style="margin : 0 0 40px 0;">
				<div style="margin-bottom: 15px;"><i class="fa-solid fa-won-sign"></i>금액</div>
				<div class="row underLine">
					<div class="col"><input type="text" class="input_box inputBox_won" value="" placeholder="원"></div>
				</div>
			</div>
			<div style="display: flex; justify-content: center;">
				<button class="btn next-btn" type="button">확인</button>
				<!-- <button class="btn next-btn" type="button">이체하기</button> -->
			</div>
	   	<!-- main E-->
		</div>
	</div>
<%@include file = "../../common/footer.jsp" %>	
</body>
</html>