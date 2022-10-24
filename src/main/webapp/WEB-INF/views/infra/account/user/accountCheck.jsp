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
		
		.account_view {
			padding : 10px;
			border-bottom : 0.5px solid;
			border-color : lightgray;
		}
		
		.card_view {
			margin-bottom : 20px;
			border-bottom : 0.5px solid;
			border-color : lightgray;
		}
		
		.input_account {
			width : 300px;
			background : none;
		}
		
		.logo_style {
			width:50px; 
			float : left; 
			padding-right : 10px; 
			margin-top : 10px;"
		}
		
	</style>
</head>
<body>
<div id="wrap">
	<%@include file = "../../common/header.jsp" %>	
	<%@include file = "../../common/font.jsp" %>
	<!-- main -->
    <div class="container" style="width: 600px; margin:auto;" >
        <div class="row" style="margin-top: 50px;">
            <div class="col">
                <header style="font-size: 2em">계좌</header>
            </div>
        </div>
     	<div class="row account_view">
       	<div class="col">
     		<img src="../../../../resources/img/logo/shinhan_logo.png" class="logo_style">
     		<lable>신한은행</lable>
     		<input type="text" value="110-330-908337" class="input_account">
 			<br>
     		<lable>계좌잔액</lable>
     		<input type="text" value="310,214원" style="width:300px; background: none;">
       	</div>
        </div>
        <div class="row account_view">
       		<div clas="col">
				<img src="../../../../resources/img/logo/kbBank_logo.png" style="width:50px; float:left; padding-right:10px; margin-top:10px;">
				<lable>국민은행</lable>
				<input type="text" value="110-330-908337" style="width:300px; background: none;">
				<br>
				<lable>계좌잔액</lable>
				<input type="text" value="109,900원" style="width:300px; background: none;">
			</div>
       </div>
   	   <div class="row account_view">
			<div clas="col">
				<img src="../../../../resources/img/logo/kakaoBank_logo.png" style="width:50px; float:left; padding-right:10px; margin-top:10px;">
				<lable>카카오뱅크</lable>
				<input type="text" value="3333-04-435321" style="width:300px; background: none;">
				<br>
				<lable>계좌잔액</lable>
				<input type="text" value="782,310원" style="width:300px; background: none;">
			</div>
        </div>
       	<div class="row account_view">
        	 <div clas="col">
	       		<img src="../../../../resources/img/logo/toss_logo.png" style="width:50px; float:left; padding-right:10px; margin-top:10px;">
	       		<lable>토스뱅크</lable>
	       		<input type="text" value="1000-04-23421" style="width:300px; background: none;">
	       		<br>
	       		<lable>계좌잔액</lable>
	       		<input type="text" value="2,122,310" style="width:300px; background: none;">
            </div>
        </div>
       	<div class="row account_view">
        	 <div clas="col">
	       		<img src="../../../../resources/img/logo/nhBank_logo.png" style="width:50px; float:left; padding-right:10px; margin-top:10px;">
	       		<lable>농협</lable>
	       		<input type="text" value="212123-04-435321" style="width:300px; background: none;">
	       		<br>
	       		<lable>계좌잔액</lable>
	       		<input type="text" value="212,310원" style="width:300px; background: none;">
            </div>
        </div>
        
       <!-- 카드 -->
       
        <div class="row" style="margin-top:50px;">
            <div class="col" style="border-top: 1px solid; padding-top : 30px;">
                <header style="font-size: 2em">카드</header>
            </div>
        </div>
       <div class="row card_view">
            <div class="col"> 
           		<img src="../../../../resources/img/logo/hyundaiCard_logo.png" style="width:50px; float:left; padding-right:10px;">
	       		<lable>현대카드</lable>
	       		<br>
	       		<lable>사용금액</lable>
	       		<input type="text" value="2,305,100원" style="none; width:300px; background: none;">
            </div>
        </div>
       	<div class="row card_view">
        	 <div class="col">
	     		<img src="../../../../resources/img/logo/shinhanCard_logo.png" style="width:50px; float:left; padding-right:10px;">
	       		<lable>신한카드</lable>
	       		<br>
	       		<lable>사용금액</lable>
	       		<input type="text" value="12,300원" style="width:300px; background: none;">
            </div>
        </div>
      	<div class="row card_view">
        	 <div class="col">
	       		<img src="../../../../resources/img/logo/samsungCard_logo.png" style="width:50px; float:left; padding-right:10px;">
	       		<lable>삼성카드</lable>
	       		<br>
	       		<lable>사용금액</lable>
	       		<input type="text" value="1,212,310원" style="width:300px; background: none;">
            </div>
        </div>
        <div class="row card_view">
        	 <div class="col">
	       		<img src="../../../../resources/img/logo/kbCard_logo.png" style="width:50px; float:left; padding-right:10px;">
	       		<lable>국민카드</lable>
	       		<br>
	       		<lable>사용금액</lable>
	       		<input type="text" value="200,010원" style="width:300px; background: none;">
            </div>
        </div>
       <div class="row card_view">
        	 <div class="col">
	       		<img src="../../../../resources/img/logo/wooriCard_logo.png" style="width:50px; float:left; padding-right:10px;">
	       		<lable>우리카드</lable>
	       		<br>
	       		<lable>사용금액</lable>
	       		<input type="text" value="50,000원" style="width:300px; background: none;">
            </div>
        </div>
    </div>
	<%@include file = "../../common/footer.jsp" %>	
</div>
</body>
</html>