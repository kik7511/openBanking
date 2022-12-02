<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
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
	
	.nav-tabs .nav-link {
		width : 50%
	}
	
	.nav-tabs .nav-link.active {
		border-color: #0F0060 #0F0060 #fff;
	}
	
	.nav-tabs .nav-link {
		border: 1px solid #EBEBEB;
		border-radius: 0px;
	}
	
	.tab-content {
		margin-top: 50px;
	}
	
	.next-btn {
		border : 1px solid #0F0060;
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
	
	.btn-sm {
		display:block;
		border : 1px solid #DADADA;
		height: 26px;
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
													<input type="text" class="text-input mr-2" id="ifmmTel">
													<input type="hidden" id="phoneCode" value="">
													<div class="msg" id="phone_msg" name="phone_msg" style="display: none;"></div>
													<button type="button" id="" class="btn btn-sm" onclick="sendSms()">인증요청</button>
												</div>
											</td>
										</tr>									
										<tr>
											<th>인증 번호</th>
											<td>
												<div class="d-flex">
													<input type="text" id="phoneCodeSms" class="text-input mr-2">
													<button type="button" id="" class="btn btn-sm" onclick="checkSms()">인증확인</button>
												</div>
											</td>
										</tr>	
									</table>
								</section>
								<section class="d-flex justify-content-center">
									<button type="button" class="btn next-btn" id="changePw">비밀번호 찾기</button>
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
	/* 인증번호 s */
	sendSms = function() {
		alert("test");
		$.ajax({
			async: true
			,cache: false
			,type: 'post'
			,url: '/member/checkSms'
			,data: {
				ifmmTel : $("#ifmmTel").val()
			},
			success:function(response) {
				$("#phoneCode").val(response.code);
			},
			error:function(){
				alert("ajax error..!");
			}
		});
	};
	/* 
	 function swAlert(title, text, icon) {
			swal({
				title: title
				,text: text
				,icon: icon
				,buttons: "확인"
			}).then((value) => {
				if (value) {
					loaction.href = "/member/passwordModForm";
				}
			})
		}
	 */
	checkSms = function() {
		if($("#phoneCodeSms").val() == $("#phoneCode").val()){
			alert("인증되었습니다")
			$('#changePw').on("click", function(){
				form.attr("action", "/member/passwordModForm").submit();
			})
		} else {
			alert("인증번호가 틀립니다")
		}
	};
	/* 인증번호 e */
	</script>
	

</body>
</html>