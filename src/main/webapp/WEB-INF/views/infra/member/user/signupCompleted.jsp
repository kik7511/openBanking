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

<%@include file = "../../common/link.jsp" %>	
<%@include file = "../../common/font.jsp" %>
	
<title>회원가입 완료</title>

<style>
	.home-btn, .login-btn {
		border : 1px solid #DADADA;
		width : 200px;
		color : white;
		background-color : #BEB4AF;
		border : 0px;
		border-radius: 0px;
	}
	
	.home-btn:hover, .login-btn:hover {
		color : white;
		background-color : #BEB4AF;
		border : 0px;
		
	}

</style>
</head>
<body>
	<%@include file = "../../common/header.jsp" %>
	<div id="wrap">
		<span class="tit">회원가입 완료</span>
		<div class="signup-wrap">
			<section class="text-center">
				<p class="mt-5">회원가입을 환영합니다.<br>
				이제부터 다양한 혜택과 서비스를 이용하실 수 있습니다.</p>
				<button type="button" class="btn home-btn mt-5" onclick="location.href='/'">메인으로</button>
				<button type="button" class="btn login-btn mt-5" onclick="location.href='login'">로그인 하기</button>
			</section>
		</div>
	</div>
	<%@include file = "../../common/footer.jsp" %>

	<script>
	</script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>