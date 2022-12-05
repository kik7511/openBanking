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
			width : 200px;
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
<c:set var="listCodebankName" value="${CodeServiceImpl.selectListCachedCode('7')}" />
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
		<div style="width : 600px;">
			<span style="font-size : 23px; color : #454D5B;">이체</span>
			<div style="margin : 20px 0 40px 0;">
				<div style="margin-bottom: 15px;"><i class="fa-solid fa-wallet"></i>출금계좌</div>
				<div class="row underLine">
					<div class="col">
						<c:choose>
							<c:when test="${not empty account_num_masked}">
								<input type="text" class="inputBox_myAccount" value="${account_num_masked}" readonly="readonly">	
							</c:when>
							<c:otherwise>
								<input type="text" class="inputBox_myAccount" placeholder="My 입출금 통장 100-133-242800">
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div style="display: flex; justify-content: space-between;">
						<c:choose>
							<c:when test="${not empty balance_amt}">
								<input type="text" class="input_box inputBox_possible" value="<fmt:formatNumber value="${balance_amt}" pattern="#,###"/>원" readonly="readonly">	
							</c:when>
							<c:otherwise>
								<input type="text" class="input_box inputBox_possible" value="" placeholder="입금가능금액 0원">
							</c:otherwise>
						</c:choose>
					<a href="#" style="color:#757575; margin-top: 5px;">잔액확인</a>
				</div>
			</div>
			<form name = "form">
	  			<input type = "hidden" name = "fintech_use_num" value="${fintech_use_num}">
	  			<input type = "hidden" name = "balance_amt" value="${balance_amt}">
	  			<input type = "hidden" name = "product_name" value="${product_name}">
	  			<input type = "hidden" name = "account_num_masked" value="${account_num_masked}">
  			</form>
			<div style="margin : 0 0 40px 0;">
				<div style="margin-bottom: 15px;"><i class="fa-solid fa-user"></i>받는사람</div>
				<div class="row underLine">
					<div class="col-3" style="padding: 0px;">
						<select class="form-select" style="border-style:none; display: inline-block;" name="req_client_bank_code">
							<option>::은행::</option>
							<c:forEach items="${listCodebankName}" var="listbankName" varStatus="statusbankName">
								<option value="${listbankName.ccOrder}" <c:if test="${list.bankName eq listbankName.ccOrder}">selected</c:if>>
									${listbankName.ccName}
								</option>
							</c:forEach>
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
					<div class="col"><input type="text" class="input_box inputBox_won" value="" placeholder="가격" onkeyup="inputNumberFormat(this)">원</div>
				</div>
			</div>
			<div style="display: flex; justify-content: center;">
				<button class="btn next-btn" type="button" id="transfer_btn">확인</button>
				<!-- <button class="btn next-btn" type="button">이체하기</button> -->
			</div>
	   	<!-- main E-->
		</div>
	</div>
<%@include file = "../../common/footer.jsp" %>	

<script>
	function inputNumberFormat(obj) {
	    obj.value = comma(uncomma(obj.value));
	}
	
	function comma(str) {
	    str = String(str);
	    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	}
	
	function uncomma(str) {
	    str = String(str);
	    return str.replace(/[^\d]+/g, '');
	}
	
	function getBankId()
	{
		var resultNum = "";  		//결과 난수
    	for (var i=0; i<9; i++) { 
			var createNum = Math.floor(Math.random() * 9);		//0부터 9까지 올 수 있는 1자리 난수 생성
			var ranNum = createNum.toString();  //1자리 난수를 String으로 형변환
			resultNum += ranNum;			//생성된 난수(문자열)을 원하는 수(letter)만큼 더하며 나열
			}
			
			var bankId = "M202201824U" + resultNum;
			console.log(bankId);
			return bankId;
	}
	
	function getCurrentDate()
    {
        var date = new Date();
        var year = date.getFullYear().toString();

        var month = date.getMonth() + 1;
        month = month < 10 ? '0' + month.toString() : month.toString();

        var day = date.getDate();
        day = day < 10 ? '0' + day.toString() : day.toString();

        var hour = date.getHours();
        hour = hour < 10 ? '0' + hour.toString() : hour.toString();

        var minites = date.getMinutes();
        minites = minites < 10 ? '0' + minites.toString() : minites.toString();

        var seconds = date.getSeconds();
        seconds = seconds < 10 ? '0' + seconds.toString() : seconds.toString();

        return year + month + day + hour + minites + seconds;
    }
	
	var finNum = $('input:hidden[name=fintech_use_num]').val(); 
	var req_client_bank_code = $('select[name=req_client_bank_code]').val();
	var jsonData = { // Body에 첨부할 json 데이터
			  "bank_tran_id": getBankId(),
			  "cntr_account_type": "N",
			  "cntr_account_num": "110334778713",
			  "dps_print_content": "이용료 (김대겸)",
			  "fintech_use_num": finNum,  
			  "tran_amt": "21000",
			  "tran_dtime": getCurrentDate(),
			  "req_client_name": "김무겸",
			  "req_client_account_num": "111334778713",
			  "req_client_bank_code": req_client_bank_code,  
			  "req_client_num": "M202201824U000000071",
			  "transfer_purpose": "TR",
			  "sub_frnc_name": "하위가맹점",
			  "sub_frnc_num": "123456789012",
			  "sub_frnc_business_num": "1234567890",
			  "recv_client_name": "김무겸",
			  "recv_client_bank_code": "097",
			  "recv_client_account_num": "111334778713"
		};
	
	
	$('#transfer_btn').click(function(){
		console.log(req_client_bank_code);
		$.ajax({
			type : "POST",
			async: true,
			contentType: "application/json; charset=utf-8",
			dataType: "JSON",
			url : "https://testapi.openbanking.or.kr/v2.0/transfer/withdraw/fin_num",
			headers : {
				"Authorization" : "Bearer ${sessAccessToken}"
			},
			data: JSON.stringify(jsonData), 
	        success : function(response) {
	        	console.log(response)
	        }, error : function(e) {
				alert(e);
			}
	        
		});
	})
</script>
</body>
</html>