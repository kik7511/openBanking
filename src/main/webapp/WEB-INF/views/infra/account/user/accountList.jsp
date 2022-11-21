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
	
	<style>
		#accountAlias {
			font-size: 14px;
    		color: silver;
    		margin-left: 5px;
		}
	</style>
</head>
<body>
<%@include file = "../../common/header.jsp" %>	
<c:set var="listCodebankName" value="${CodeServiceImpl.selectListCachedCode('7')}" />
<c:set var="listCodecardName" value="${CodeServiceImpl.selectListCachedCode('10')}" />
	<div id="wrap">
		<div class="flex-shrink-0 p-3 bg-white" style="width: 250px; margin-right: 10px;">
		    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none" style="border-bottom: 2px solid">
		      <span class="fs-5 fw-semibold" style="padding-left: 15px;">조회</span>
		    </a>
		</div>
		<div style="margin-top: 20px;">
			<div style="margin-bottom: 10px;">계좌/현금</div>
			<div class="account-list">
				<!-- <div class="account-item" onclick="location.href='/account/accountView'">
					<img src="../../../../resources/img/logo/shinhan_logo.png" class="logo_style">
					<span id="bankName"></span>
		     		<span id="accountAlias"></span>
		 			<br>
		     		<span>계좌잔액</span>
				</div> -->
			</div>
			<div style="margin: 20px 0 10px 0;">카드</div>
			<div class="card-list">
				<input type = "hidden" name="resListArray" id="resList">
				<c:forEach items="${list2}" var="list2" varStatus="status">
					<div class="card-item">
		           		<img src="../../../../resources/img/logo/hyundaiCard_logo.png" class="logo_style">
		           		<c:forEach items="${listCodecardName}" var="listcardName" varStatus="statuscardName">
		           			<c:if test="${list2.cardName eq listcardName.ccSeq}">
		           				<c:out value="${listcardName.ccName}" />
	           				</c:if>
	       				</c:forEach>
			       		<br>
			       		<span>사용금액</span>
			       		<span>12,300원</span>
			       		<%-- <fmt:formatNumber type="number" pettern="#,###" value=""/> --%>
			       	</div>
		       	</c:forEach>
            </div>
		</div>
		<form name = "form" id="form">
		</form>
	</div>
	
	<%@include file = "../../common/footer.jsp" %>	
	
	<!-- ------------------script--------------------- -->
	<script type="text/javascript">
	
	function numComma(str) {
	    return str.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
	
	$(document).ready(function(){
		//사용자조회
		$.ajax({
			type : "GET",
			url : "https://testapi.openbanking.or.kr/v2.0/user/me",
			headers : {
				"Authorization" : "Bearer ${sessAccessToken}"
			},
			data : {
	            "user_seq_no" : "${sessUserSeqNo }"
	        }, 
	        success : function(response) {
	        	console.log(response)
	        	
	        	for(var i = 0; i < response.res_list.length; i++) {
	        		var fintech_use_num = '<input type="hidden" name="ifmmAccessToken" value="'+response.res_list[i].fintech_use_num+'"></input>'
	        	}
	        	
	        	
	        }, error : function(e) {
				alert(e);
			}
		});
		
		var logo = "";
		
		function logoNm(str) {
			if(str.includes('카카오')) logo = "kakao.png";
			if(str.includes('신한')) logo = "sh.png";
			if(str.includes('농협')) logo = "NH.png";
			if(str.includes('국민')) logo = "kb.png";
			if(str.includes('토스')) logo = "toss.png";
			if(str.includes('오픈')) logo = "open.png";
		}
		
		//계좌리스트 조회
		$.ajax({
			type : "GET",
			url : "https://testapi.openbanking.or.kr/v2.0/account/list",
			headers : {
				"Authorization" : "Bearer ${sessAccessToken}"
			},
			data : {
	            "user_seq_no" : "${sessUserSeqNo }",
	            "include_cancel_yn" : "N",
	            "sort_order" : "D"
	        }, 
	        success : function(response) {
	        	var count = 0;
	        	
	        	for(var i = 0; i < response.res_list.length; i++) {
	        		console.log(response.res_list[i])
	        		
	        		var fintech_use_num = '<input type="hidden" name="fintech_use_num" value="'+response.res_list[i].fintech_use_num +'"></input>'
	        		
	        		logoNm(response.res_list[i].bank_name)
        			
	        		var account_item = '<div class="account-item" id="account-'+count+'" onclick="location.href=\'javascript:detail(' + count + ')\'"><img src="../../../../resources/img/logo/'+logo+'" class="logo_style"><span id="bankName">'+response.res_list[i].bank_name+'</span><span id="accountAlias">'+response.res_list[i].account_alias+'</span><input type="hidden" name="fintech_use_num'+count+ '" value="' + response.res_list[i].fintech_use_num + '"></div>'
	        		
	        		$(".account-list").append(account_item);
	        		
	        		var countnum = Math.floor(Math.random() * 1000000000) + 1;
	        		
	        		(function(i) {
		        		$.ajax({
		        			type : "GET",
		        			async: false,
		        			url : "https://testapi.openbanking.or.kr/v2.0/account/balance/fin_num",
		        			headers : {
		        				"Authorization" : "Bearer ${sessAccessToken}"
		        			},
		        			data : {
		        	            "bank_tran_id" : "M202201824U"+countnum,
		        	            "fintech_use_num" : response.res_list[i].fintech_use_num,
		        	            "tran_dtime" : "20160310101921"
		        	        }, 
		        	        success : function(response) {
		        	        	console.log(response)
		        	        	
		        	        	var balance_amt = '<br><span id="balanceAmt">'+numComma(response.balance_amt)+'원</span>'
		        	        	
		        	        	$("#account-"+count).append(balance_amt)
		        	        	
		        	        }, error : function(e) {
		        				alert(e);
		        			}
		        	        
		        		});
	        		})(i);
	        		count++;
        		}
	        }, error : function(e) {
				alert(e);
			}
		});
		
	});
	
	$(document).on("load",'body', function(){
		console.log($("input[name=bankName]").val())
	});
	
	function detail(finNum){
		console.log($("input[name=fintech_use_num"+ finNum + "]").val());
		var countnum = Math.floor(Math.random() * 1000000000) + 1;
		function getToday(){
		    var date = new Date();
		    var year = date.getFullYear();
		    var month = ("0" + (1 + date.getMonth())).slice(-2);
		    var day = ("0" + date.getDate()).slice(-2);

		    return year + month + day;
		}
		
		function getPrevday(){
		    var date = new Date();
		    var year = date.getFullYear();
		    var month = ("0" + (date.getMonth())).slice(-2);
		    var day = ("0" + date.getDate()).slice(-2);

		    return year + month + day;
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
		var fnum = finNum.toString();
		
		console.log(countnum);
		console.log(getPrevday());
		console.log(getToday());
		console.log(getCurrentDate());
		
		$.ajax({
			type : "GET",
			async: false,
			url : "https://testapi.openbanking.or.kr/v2.0/account/transaction_list/fin_num",
			headers : {
				"Authorization" : "Bearer ${sessAccessToken}"
			},
			data : {
	            "bank_tran_id" : "M202201824U"+countnum,
	            "fintech_use_num" : $("input[name=fintech_use_num"+finNum+"]").val(),
	            "inquiry_type" : "A",
	            "inquiry_base" : "D",
	            "from_date" : getPrevday(),
	            "to_date" : getToday(),
	            "sort_order" : "D",
	            "tran_dtime" : getCurrentDate()
	        }, 
	        success : function(response) {
	        	console.log(response)
	        	var resList = response.res_list;
	        	var array = new Array;
	        	var arr1 = new Array;
	        	array.push(resList);
	        	console.log(array[0]);
				for(var i = 0; i < array[0].length; i++){
					arr1.push(
						array[0][i].after_balance_amt,
						/* branch_name : array[0][i].branch_name,
						inout_type : array[0][i].inout_type,
						print_content : array[0][i].print_content,
						tran_amt : array[0][i].tran_amt,
						tran_date : array[0][i].tran_date,
						tran_time : array[0][i].tran_time,
						tran_type : array[0][i].tran_type */
					)
				}        	
					console.log(arr1);
					$.ajax({
						url : "/account/accountView",
						data : {
							"after_balance_amt" : arr1
						},
						
					})
	        }, error : function(e) {
				
			}
		});
	}
	</script>
</body>
</html>