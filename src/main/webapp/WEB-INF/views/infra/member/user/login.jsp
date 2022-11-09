<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 구글폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/member.css">

<title>로그인</title>
<%@include file = "../../common/link.jsp" %>	
<%@include file = "../../common/font.jsp" %>
<style>

	.text-input {
		width : 300px !important;
		height: 35px;
		border : none;
		background-color: #F3F3F3;
	}
</style>

</head>
<body>
	<%@include file = "../../common/header.jsp" %>
	<div id="wrap">
		<span class="tit">로그인</span>
		<div class="login-wrap">
			<div class="form-box">
				<div class="input-wrap">
					<div class="input-box">
						<div style="display: flex;">
							<span style="width:30%; margin-top:9px; text-align: center;">아이디</span>
							<input type="text" name="ifmmId" id="ifmmId" class="text-input" style="margin-bottom: 10px;">
						</div>
						<div style="display: flex;">
							<span style="width:30%; margin-top:9px; text-align: center;">비밀번호</span>
							<input type="password" name="ifmmPassword" id="ifmmPassword" class="text-input">
						</div>
					</div>
					<div>
						<button type="button" id="loginBtn" style="margin-left: 10px;">로그인</button>
					</div>
				</div>
				<div class="btn-wrap">
					<button type="button" class="btn" onclick="location.href='findid'">아이디 찾기</button>
					<button type="button" class="btn" onclick="location.href='findpw'">비밀번호 찾기</button>
					<button type="button" class="btn" onclick="location.href='signup'">회원가입</button>
				</div>
			</div>
		</div>
	</div>
	<%@include file = "../../common/footer.jsp" %>
	
	<script>
		$(document).ready(function(){
			$("#loginBtn").on("click", function(){
				var ifmmId = $("#ifmmId").val();
				var ifmmPassword = $("#ifmmPassword").val();
				
				if(ifmmId == null || ifmmId == "") {
					alert("아이디를 입력해주세요");
					return;
				}
				
				if(ifmmPassword == null || ifmmPassword == "") {
					alert("비밀번호를 입력해주세요");
					return;
				}
				
				$.ajax({
					type : 'post',
					url : '/member/loginProc',
					data : {"ifmmId":ifmmId, 
							"ifmmPassword":ifmmPassword
							},
					success:function(data){
						if(data.result == "success") {
							location.href="/" 
							alert(${token});
							
						} else {
							alert("이메일과 비밀번호를 확인하세요");
							$("#ifmmId").focus();
							return;
						}
						
						/* $.ajax({
						type : 'POST',
						url :  'https://testapi.openbanking.or.kr/oauth/2.0/token',
						data : {
								"client_id" : "9558ab9a-79fc-4dfa-8d61-e2b62d530324",
								"client_secret" : "95e11988-7bec-469a-8009-eda5f794ca20",
								"refresh_token" : "${sessRefreshToken}",
								"scope" : "login inquiry transfer",
								"grant_type" : "refresh_token"
						},
						success:function(data){
							console.log(data);
						}
					})  */
					},
					error:function(e){
						alert("로그인실패");
					}
				})
			})
		});
	</script>
	

</body>
</html>