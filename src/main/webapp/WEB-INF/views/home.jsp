<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">

<head>
	<title>openBanking</title>
	<%@include file = "infra/common/link.jsp" %>	
	<%@include file = "infra/common/font.jsp" %>
	<style type="text/css">
		.layerTooltip {position:relative; display:inline-block; margin:0 !important;}
		.layerTooltip .tip {display:none; position:absolute; top:-3px; left:0; width:100px; margin-left:0 !important; padding:5px; color:#000; font-size:10px; background-color:rgba(0, 0, 0, 0);}
		.layerTooltip.on .tip {display:block;}
		#container_inner {width:100% !important;}
		#container_inner #content {width:100% !important;}
		#content, .content {float:none; width:100% !important;}
		#content .sub_cont_wrap {width:940px; margin:0 auto;}
		.login_pc{height: 460px;}
		#slide>ul>li{position: absolute;}
		li{left: 0px}
		.banner-img{height: 460px; width: 1903px;}
	</style>
	<link rel="stylesheet" type="text/css" href="/resources/css/home.css">
</head>
<body>
<%@include file = "infra/common/header.jsp" %>	
<div id="wrap" style="margin-top: -15;">
	<div id = "container" style="width: 100%">
		<div id = "container_inner">
			<div id = "content" style="width: 940px;">
				<div>
					<div class="content login_pc">
						<!-- <a class="banner">
							<img src="/resources/img/bg1.jpg" id="bannerImage" style="height: 460px;" >
						</a> -->
						
						<div id="slide" class="content login_pc">
							<ul>
								<li><a class="banner"><img class="banner-img" src="/resources/img/bg1.jpg" style="height: 460px; width: 1903px;"></a></li>
								<li><a class="banner"><img class="banner-img" src="/resources/img/bg2.jpg" style="height: 460px; width: 1903px;"></a></li>
	               			</ul>
						</div>
					</div>
						<div class="quickMenuArticle">
						<ul class="listQuickMenu"> 
							<li><a href="javascript:checkAccount()" id="btnSearchAll"><span class="icoSearch">조회하기</span></a></li>
							<li><a href="/account/accountTransfer" id="btnSearchEche"><span class="icoTransfer">이체하기</span></a></li>
							<li><a href="/member/accountBook" id="btnSearchBank"><span class="icoBank">가계부관리</span></a></li>
						</ul>
						<div class="bg">&nbsp;</div>
				</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file = "infra/common/footer.jsp" %>	
	
	<script>
		$(document).ready(function(){
			$('#slide>ul>li').hide();
			$('#slide>ul>li:first-child').show();

			setInterval(function(){
			    $('#slide>ul>li:first-child').fadeOut()
			    .next().fadeIn().end(1000)
			    .appendTo('#slide>ul');
			}, 5000);
		});
		
		function checkAccount(){
			 var tmpWindow = window.open('about:blank')
	            tmpWindow.location = "https://testapi.openbanking.or.kr/oauth/2.0/authorize?" +
	            "response_type=code&"+
	            "client_id=e3798ea4-0c60-4cde-b08c-73b2701e61d1&"+  
	            "redirect_uri=http://localhost:8080/&"+
	            "scope=login inquiry transfer&"+
	            "state=b80BLsfigm9OokPTjy03elbJqRHOfGSY&"+
	            "auth_type=0"
		}
		
		var query = window.location.search;
		var param = new URLSearchParams(query);
		var authCode = param.get('code');
		console.log(authCode)
	    
	    $.ajax({
	    	type : "POST",
	        url : "https://testapi.openbanking.or.kr/oauth/2.0/token",
	        contentType: 'application/x-www-form-urlencoded; charset=utf-8',
	        data : {
	            "code" : authCode,
	            "client_id" : 'e3798ea4-0c60-4cde-b08c-73b2701e61d1', 
	            "client_secret" : '77b177b0-e958-4eba-888d-fc5ae60df9ff',
	            "redirect_uri" : 'http://localhost:8080/',
	            "grant_type" : 'authorization_code'
	        }, 
	        success : function(data) {
	        	console.log(data)
	        }, error : function(e) {
				alert(e);
			}
	    })
		
/* 		app.get('/', function(req, res){
		    console.log(req.query);
		    var authCode = req.query.code;
		    console.log(authCode);
		    var option = {
		        method : "POST",
		        url : "https://testapi.openbanking.or.kr/oauth/2.0/token",
		        header : {
		            'Content-Type' : 'application/x-www-form-urlencoded'
		        },
		        form : {
		            code : authCode,
		            client_id : '9558ab9a-79fc-4dfa-8d61-e2b62d530324', 
		            client_secret : '95e11988-7bec-469a-8009-eda5f794ca20',
		            redirect_uri : 'http://localhost:8080/',
		            grant_type : 'authorization_code'
		        }
		    }
		    // resultChild 호출해서 얻은 토큰 정보를 사이트에 입력
		    request(option, function (error, response, body) {
		        console.log(body);
		        var requestResultJSON = JSON.parse(body);
		        res.render('resultChild',{data : requestResultJSON})
		    });
		}) */
		
		
	</script>
</div>
</body>
</html>