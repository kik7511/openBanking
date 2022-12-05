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

<title>아이디 찾기</title>
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
	
	.tap-menu {
		width : 60%;
		margin: auto;
		margin-top: 50px;
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
</style>
</head>
<body>
	<%@include file = "../../common/header.jsp" %>
	<div id="wrap">
		<span class="tit">아이디 찾기</span>
		<div class="find-wrap">
			<div class="tap-menu">
				<nav>
					<div class="nav nav-tabs" id="nav-tab" role="tablist">
						<button class="nav-link active" id="nav-id-tab" data-bs-toggle="tab" data-bs-target="#nav-id" type="button" role="tab" aria-controls="nav-id" aria-selected="ture" onclick="location.href='findid'">아이디 찾기</button>
						<button class="nav-link" id="nav-pw-tab" data-bs-toggle="tab" data-bs-target="#nav-pw" type="button" role="tab" aria-controls="nav-pw" aria-selected="false" onclick="location.href='findpw'">비밀번호 찾기</button>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-id" role="tabpanel" aria-labelledby="nav-id-tab" tabindex="0">
						<div class="login-box">
							<form autocomplete="off">
								<section class="d-flex justify-content-center">
									<table class="table">
										<!--  <tr id="idHidden" style="display: none;">
	                                    	<td colspan="2" style="border:none; text-align: center;">
	                                    		<h4>회원님의 아이디는 <strong class="personerId"></strong> 입니다. </h4>
	                                    	</td>
	                                    	<td></td>
	                                    </tr> -->
										<tr>
											<th class="col-5">이름</th>
											<td><input type="text" class=text-input name="ifmmName" id="ifmmName" autocomplete="off"></td>
										</tr>
										<tr>
											<th>생년월일</th>
											<td><input type="text" class="text-input" name="ifmmDob" id="ifmmDob" placeholder="YYYYMMDD"></td>
										</tr>
										<tr>
											<th>휴대폰 번호</th>
											<td>
												<input type="text" class="text-input mr-2" name="ifmmTel" id="ifmmTel">
											</td>
										</tr>									
									</table>
								</section>
								<section class="d-flex justify-content-center">
									<!-- <button type="button" class="btn next-btn" id="findId">아이디 찾기</button> -->
									<button type="button" class="btn next-btn" id="modal" data-bs-toggle="modal" data-bs-target="#exampleModal">
								  아이디 찾기
								</button> 
								</section>
							</form>
						</div>
					</div>
				</div>
			</div>	
		</div>
	</div>
	<%@include file = "../../common/footer.jsp" %>
	
    <!-- modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">아이디 확인</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <div id="idHidden">
	        	<h4>회원님의 아이디는 <strong class="personerId"></strong> 입니다. </h4>
	        </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">확인</button>
	        <button type="button" class="btn btn-primary" onclick="location.href='login'">로그인</button>
	      </div>
	    </div>
	  </div>
	</div>
    <!-- modal -->
	
	<script>
	/* id찾기 */
	$("#modal").on("click", function() {
		$.ajax({
			async: true
			,cache: false
			,type:"POST"
			,url: "/member/findId"
			,data: {"ifmmName": $("#ifmmName").val(), "ifmmDob": $("#ifmmDob").val(), "ifmmTel" : $("#ifmmTel").val()}
			,success : function(response) {
				if (response.rt == "success") {
					console.log(response);
					$("#idHidden").css("display", "")
					$(".personerId").html(response.id.ifmmId);
					
				} else {
					alert("정확한 정보를 입력해주세요!!!");
				}
			},
			/* error : function(jqXHR, status, error) {
				alert("알 수 없는 에러 [ " + error + " ]");
			} */
			error : function(jqXHR, status, error) {
				$(".personerId").html("없는 정보");
				alert("등록된 회원 정보가 없습니다.!!");
			}
		});
	})
	</script>
	

</body>
</html>