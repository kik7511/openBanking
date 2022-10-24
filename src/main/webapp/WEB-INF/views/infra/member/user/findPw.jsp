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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/member.css">

<title>비밀번호 찾기</title>
<%@include file = "../../common/link.jsp" %>	
<%@include file = "../../common/font.jsp" %>
<style>
	.table {
		margin : 10px 0 20px 0;
		width : 500px;
	}
	
	.table th {
		background-color: #F7F8F9;
		text-align: center;
	}
	
	.table .text-input {
		border : 1px solid #DADADA;
		padding: 2px;
	}
	
</style>
</head>
<body>
	<%@include file = "../../common/header.jsp" %>
	<div id="wrap">
		<span class="tit">비밀번호 찾기</span>
		<div class="find-wrap">
			<div class="tap-menu">
				<nav>
					<div class="nav nav-tabs" id="nav-tab" role="tablist">
						<button class="nav-link" id="nav-id-tab" data-bs-toggle="tab" data-bs-target="#nav-id" type="button" role="tab" aria-controls="nav-id" aria-selected="false" onclick="location.href='findid'">아이디 찾기</button>
						<button class="nav-link active" id="nav-pw-tab" data-bs-toggle="tab" data-bs-target="#nav-pw" type="button" role="tab" aria-controls="nav-pw" aria-selected="true" onclick="location.href='findpw'">비밀번호 찾기</button>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-pw" role="tabpanel" aria-labelledby="nav-pw-tab" tabindex="0">
						<div class="form-box">
							<form autocomplete="off">
								<section class="d-flex justify-content-center">
									<table class="table">
										<tr>
											<th class="col-5">아이디</th>
											<td><input type="text" class=text-input name="name" id="name" autocomplete="off"></td>
										</tr>
										<tr>
											<th class="col-5">이름</th>
											<td><input type="text" class=text-input name="name" id="name" autocomplete="off"></td>
										</tr>
										<tr>
											<th>휴대폰 번호</th>
											<td>
												<div class="d-flex">
													<input type="text" class="text-input mr-2">
													<button type="button" id="" class="btn btn-sm">인증요청</button>
												</div>
											</td>
										</tr>									
										<tr>
											<th>인증 번호</th>
											<td>
												<div class="d-flex">
													<input type="text" class="text-input mr-2">
													<button type="button" id="" class="btn btn-sm">인증확인</button>
												</div>
											</td>
										</tr>	
									</table>
								</section>
								<section class="d-flex justify-content-center">
									<button type="button" class="btn next-btn" onclick="location.href=''">비밀번호 찾기</button>
								</section>
							</form>
						</div>
					</div>
				</div>
			
			
			</div>	
		</div>
	</div>
	<%@include file = "../../common/footer.jsp" %>
	
	<script>
	</script>
	

</body>
</html>