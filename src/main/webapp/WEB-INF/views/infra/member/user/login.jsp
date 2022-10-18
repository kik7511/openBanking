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

<title>로그인</title>
<style>
	body {
		font-family: 'Noto Sans KR', sans-serif;
	}
	
	.login-wrap {
		width : 1200px;
		margin : auto;
		padding-bottom : 50px;
		border-top: 2px solid #454D5B;
		border-bottom: 1px solid #CDD7E7;
		
	}
	
	.login-tit {
		font-size : 23px;
		margin-left: 350px;
		color : #454D5B
	}
	
	.login-box {
		width : 700px;
		height : 100%;
		margin : auto;
		margin-top: 50px;
	}
	
	.text-input {
		width : 280px;
		height: 35px;
		border : none;
		background-color: #F3F3F3;
	}
	
	.input-wrap {
		display: flex;
		width : 100%;
		margin: auto;
		justify-content: center;
	}

	#loginBtn {
		height: 100%;
		width: 100px;
		background-color: #0F0060;
		color : white;
	}
	
	.btn-wrap {
		width: 70%;
		margin : auto;
		margin-top : 30px;
		display: flex;
		justify-content: space-evenly;
	}
	
	.btn {
		width : 140px;
		height : 35px;
		border : 1px solid #A7A19A;
		background-color: white;
		
		    
	}
</style>
</head>
<body>
	<div id="wrap">
		<span class="login-tit">로그인</span>
		<div class="login-wrap">
			<div class="login-box">
				<div class="input-wrap">
					<div class="input-box">
						<span style="margin-right: 14px;">아이디</span>
						<input type="text" class="text-input" style="margin-bottom: 10px;"><br>
						<span>비밀번호</span>
						<input type="password" class="text-input">
					</div>
					<div>
						<button type="button" id="loginBtn" style="margin-left: 10px;">로그인</button>
					</div>
				</div>
				<div class="btn-wrap">
					<button type="button" class="btn">아이디 찾기</button>
					<button type="button" class="btn">비밀번호 찾기</button>
					<button type="button" class="btn">회원가입</button>
				</div>
			</div>
		
		
		</div>
	
	
	
	
	</div>
	

</body>
</html>