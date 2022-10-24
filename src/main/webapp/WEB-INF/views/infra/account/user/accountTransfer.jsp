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
		/* 버튼css */
		.btn_AT {
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
		
		.btn_AT:hover {
		    background-color: #454d5b;
		}
		
		.btn_AT:active {
		    box-shadow: inset -2px -2px 3px rgba(255, 255, 255, .6),
		                inset 2px 2px 3px rgba(0, 0, 0, .6);
		}
		/* 버튼css */
		
		.mWidth {
			width : 600px;
			margin : auto;
			
		}
		.blankHeight{
			margin-top : 20px;
		}
		
		.underLine {
			border-bottom : 1px solid;
			border-color : lightgray;
		}
		
		.input_box {
		    font-size: 1rem;
		    font-weight: 400;
		    line-height: 1.5;
		    color: #212529;
		    background-color: #fff;
		    background-clip: padding-box;
		    border: 1px solid #ced4da;
		    appearance: none;
		    border-radius: 0.375rem;
		    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
		}
		
		.input_select {
		    width: 100%;
		    padding: 0.375rem 2.25rem 0.375rem 0.75rem;
		    font-size: 1rem;
		    font-weight: 400;
		    line-height: 1.5;
		    color: #212529;
		    background-color: #fff;
		    background-image: url(data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='%23343a40' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='m2 5 6 6 6-6'/%3e%3c/svg%3e);
		    background-repeat: no-repeat;
		    background-position: right 0.75rem center;
		    background-size: 16px 12px;
		    border: 1px solid #ced4da;
		    border-radius: 0.375rem;
		    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
		    appearance: none;
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
		
		.calculator {
			width : 15%;
			position: absolute; 
			top: 48%;
			left : 32%;
		}
		
		.mouse_click {
			width : 15%;
			position: absolute; 
			top: 79%;
			left : -3%;
		}
		
	</style>
</head>
<body>
<div id="wrap">
	<%@include file = "../../common/header.jsp" %>	
	<%@include file = "../../common/font.jsp" %>
	<!-- main S -->
		<div class="blank"></div>
		<div class="flex-shrink-0 p-3 bg-white" style="width: 200px; float: left; height: 100%">
		    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
		      <span class="fs-5 fw-semibold" style="padding-left: 15px;">이체하기</span>
		    </a>
		    <ul class="list-unstyled ps-0">
		      <li class="mb-1">
		        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
		          이체하기
		        </button>
		      </li>
		       <li class="border-top my-1"></li>
		      <li class="mb-1">
		        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
		          자동이체
		        </button>
		      </li>
		       <li class="border-top my-1"></li>
		      <li class="mb-1">
		        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
		          대량이체
		        </button>
		      </li>
		      <li class="border-top my-1"></li>
		      <li class="mb-1">
		        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
		          이체결과
		        </button>
		      </li>
		       <li class="border-top my-1"></li>
		    </ul>
		  </div>
	<div class="mWidth">
		<div class="row blankHeight">
			<div class="col">
				<h2>이체하기</h2>
			</div>		
		</div>
		<div class="row blankHeight">
			<div class="col">
				<span>
					<i class="fa-solid fa-wallet"></i>출금계좌
				</span>
			</div>
		</div>
		<div class="row underLine">
			<div class="col mt-2">
				<input type="text" class="input_box inputBox_myAccount" value="" placeholder="My 입출금 통장 100-133-242800">
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<input type="text" class="input_box inputBox_possible" value="" placeholder="입금가능금액 0원">
			</div>
			<div class="col calculator offset-5 mt-1">
				<button type="button">
					<i class="fas fa-thin fa-calculator"></i>잔액/한도
				</button>
			</div>
		</div>
		<div class="row" style="margin-top : 20px;">
			<div class="col">
				<span>받는사람</span>
					<div class="row underLine">
						<div class="col-3 mt-2">
							<select class="form-select" style="border-style:none">
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
						<div class="col-7 mt-3">
							<input type="text" class="input_box inputBox_sendAccount" value="" placeholder="계좌번호">
						</div>
					</div>
			</div>
		</div>
		<div class="row" style="margin-top : 20px;">
			<div class="col">
				<span>
					<i class="fa-sharp fa-solid fa-won-sign"></i>금액
				</span>
			</div>
		<div class="row">
			<div class="col mt-2 underLine">
				<input type="text" class="input_box inputBox_won" value="" placeholder="원">
			</div>
			<div class="col mouse_click offset-9 mt-1">
				<button type="button">
					<i class="fas fa-regular fa-computer-mouse"></i>마우스 입력
				</button>
			</div>
		</div>
		<div class="row underBtn">
			<div class="col">
				<button class="btn_AT" type="button" style="width:100px;">취소</button>
				<button class="btn_AT" type="button">이체하기</button>
			</div>
		</div>	
	</div>
   	<!-- main E-->
</div>
<%@include file = "../../common/footer.jsp" %>	
</body>
</html>