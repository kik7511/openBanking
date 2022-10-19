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

	</style>
</head>
<body>
<div id="wrap">
	<%@include file = "../../common/header.jsp" %>	
	
	<!-- main -->
    <div class="container" style="width: 600px; margin-left:610px;" >
        <div class="row" style="margin-top: 50px;">
            <div class="col">
                <header style="font-size: 2em">계좌</header>
            </div>
        </div>
        <div class="row" style="margin-bottom:20px; margin-top:50px; border-bottom: 0.5px solid; border-color:lightgray;">
           	<div class="col">
           		<img src="../../../../resources/img/logo/shinhan_logo.png" style="width:30px; float:left; padding-right:10px;">
           		<input type="text" value="신한은행">
           		<span>110-390-707339</span>
       			<br>
           		<span>계좌잔액</span>
           		<span>310,214원</span>
           	</div>
        </div>
        <div class="row" style="margin-bottom:20px; border-bottom: 0.5px solid; border-color:lightgray;">
        	 <div clas="col">
        	 	<img src="../../../../resources/img/logo/kbBank_logo.png" style="width:30px; float:left; padding-right:10px;"">
           		<span>국민은행</span>
           		<span>680802-02-310326</span>
       			<br>
           		<span>계좌잔액</span>
           		<span>109,900원</span>
            </div>
       </div>
       <div class="row" style="margin-bottom:20px; border-bottom: 0.5px solid; border-color:lightgray;">
       	  <div clas="col">
        	<img src="../../../../resources/img/logo/kakaoBank_logo.png" style="width:30px; float:left; padding-right:10px;"">
       		<span>카카오뱅크</span>
       		<span>3333-04-435321</span>
       		<br>
       		<span>계좌잔액</span>
       		<span>782,310원</span>
            </div>
        </div>
       <div class="row" style="margin-bottom:20px; border-bottom: 0.5px solid; border-color:lightgray;">
        	 <div clas="col">
	        	<img src="../../../../resources/img/logo/toss_logo.png" style="width:30px; float:left; padding-right:10px;"">
	       		<span>토스뱅크</span>
	       		<span>1000-04-23421</span>
	       		<br>
	       		<span>계좌잔액</span>
	       		<span>2,122,310원</span>
            </div>
        </div>
       <div class="row" style="margin-bottom:20px; border-bottom: 0.5px solid; border-color:lightgray;">
        	 <div clas="col">
	        	<img src="../../../../resources/img/logo/nhBank_logo.png" style="width:30px; float:left; padding-right:10px;"">
	       		<span>농협</span>
	       		<span>212123-04-435321</span>
	       		<br>
	       		<span>계좌잔액</span>
	       		<span>212,310원</span>
            </div>
        </div>
        
       <!-- 카드 -->
       
        <div class="row" style="margin-top:50px;">
            <div class="col" style="border-top: 1px solid; padding-top : 30px;">
                <header style="font-size: 2em">카드</header>
            </div>
        </div>
       <div class="row" style="margin-bottom:20px; border-bottom: 0.5px solid; border-color:lightgray;">
            <div class="col"> 
            	<img src="../../../../resources/img/logo/hyundaiCard_logo.png" style="width:40px; float:left; padding-right:10px;"">
             	<span>현대카드</span>
             	<br>
           		<span>사용금액</span>
           		<span>2,305,100원</span>
            </div>
        </div>
       <div class="row" style="margin-bottom:20px; border-bottom: 0.5px solid; border-color:lightgray;">
        	 <div class="col">
        	    <img src="../../../../resources/img/logo/shinhanCard_logo.png" style="width:40px; float:left; padding-right:10px;"">
	     		<span>신한카드</span>
	   			<br>
	     		<span>사용금액</span>
	     		<span>12,300원</span>
            </div>
        </div>
       <div class="row" style="margin-bottom:20px; border-bottom: 0.5px solid; border-color:lightgray;">
        	 <div class="col">
	        	<img src="../../../../resources/img/logo/samsungCard_logo.png" style="width:40px; float:left; padding-right:10px;"">
	       		<span>삼성카드</span>
	       		<br>
	       		<span>사용금액</span>
	       		<span>1,212,310원</span>
            </div>
        </div>
        <div class="row" style="margin-bottom:20px; border-bottom: 0.5px solid; border-color:lightgray;">
        	 <div class="col">
	        	<img src="../../../../resources/img/logo/kbCard_logo.png" style="width:40px; float:left; padding-right:10px;"">
	       		<span>국민카드</span>
	       		<br>
	       		<span>계좌잔액</span>
	       		<span>200,010원</span>
            </div>
        </div>
       <div class="row" style="margin-bottom:20px; border-bottom: 0.5px solid; border-color:lightgray;">
        	 <div class="col">
	        	<img src="../../../../resources/img/logo/wooriCard_logo.png" style="width:40px; float:left; padding-right:10px;"">
	       		<span>우리카드</span>
	       		<br>
	       		<span>사용금액</span>
	       		<span>50,000원</span>
            </div>
        </div>
    </div>
	<%@include file = "../../common/footer.jsp" %>	
</div>
</body>
</html>