<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko" lang="ko">

<head>
	<title>오픈뱅킹공동업무</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, Chrome=1" />
	<meta content="은행권공동오픈플랫폼" name="description" />
	<meta content="은행권공동오픈플랫폼" name="keywords" />
	<meta content="은행권공동오픈플랫폼" name="subject" />
	<link rel="stylesheet" type="text/css" href="/css/common/reset_mobile.css?20220513" />
	<script type="text/javascript" src="/js/extends/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="/js/extends/common.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<meta name="viewport"
		content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scale=1.0,user-scalable=no,target-densitydpi=medium-dpi" />
</head>

<body id="openplatform">





























	<!-- S: wrap -->
	<div id="wrap">

		<div class="header">
			<h1>
				<span class="logo">오픈뱅킹공동업무</span>
			</h1>
		</div>

		<form id="form" name="frm" method="post" action="">
			<div class="container">
				<div class="member-loginbox">
					<div class="loginTit"></div>
					<p>본인인증 및 정보제공, 출금동의를 위한 방법을 선택해주세요.</p>
					<fieldset>
						<legend>인증방식선택</legend>
						<div class="btnset btnGroup">


							<div class="btn_wrap3">
								<button type="button" onclick="open_yessign_fin();">금융인증서 인증</button>
								<p>클라우드에 인증서를 보관하여 언제 어디서나 6자리 비밀번호로 간편하게 인증 가능.</p>
							</div>


							<div class="btn_wrap2">
								<button type="button" onclick="open_yessign();">공동인증서 인증</button>
								<p>법인명의, 가족명의 휴대전화를 이용중인 고객님의 공동인증서를 통해 본인인증을 할 수 있습니다.</p>
							</div>


							<div class="btn_wrap1">
								<button type="button" onclick="open_sms()">휴대전화 본인인증</button>
								<p>성명, 생년월일, 통신사 등의 정보를 입력하는 방식으로 본인명의 휴대전화임을 인증할 수 있습니다.</p>
							</div>


						</div>
						<br>
					</fieldset>

				</div>
			</div>
			<!-- 추가 파라메터 -->
			<input type="hidden" id="redirect_uri" 	name="redirect_uri" value="http://localhost:8080/" />
			<input type="hidden" id="type" 		 name="type" />
			<input type="hidden" id="device" 	 name="device" />


		</form>
			<div class="footer">
				<img src="/images/common/logo_footer.png" alt="금융결제원">
		</div>
			</div>
			<!-- //E: wrap -->

			<script type="text/javascript">
				/**
		 공인 인증서 방식
		*/
		function open_yessign() {
			$("#form").attr("action", "/apt/mobileweb/yessign_step1");
			$("#form").submit();
		}

		/**
		  금융 인증서 방식
		 */
		function open_yessign_fin() {
			$("#form").attr("action", "/apt/mobileweb/yessign_step1");
			$("#form").submit();
			
		}


		/**
		 SMS 범용 방식
		*/
		function open_sms() {
			$("#form").attr("action", "/apt/mobileweb/authorize_set");
			$("#form").submit();
		}
		
		
		
		function open_cancel() {
			var redUri = $("#redirect_uri").val();
			location.href = redUri;
		}
			</script>
</body>

</html>