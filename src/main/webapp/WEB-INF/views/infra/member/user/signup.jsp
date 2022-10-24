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
<title>로그인</title>
<%@include file = "../../common/link.jsp" %>	
<%@include file = "../../common/font.jsp" %>
<style>
	#wrap {
		margin: 50px 0 50px 0;
	}
	
	.table {
		margin : 10px 0 20px 0;
		width : 500px;
	}
	
	.table .text-input {
		border : 1px solid #DADADA;
		padding: 2px;
	}
  		
	.tit {
		font-size : 23px;
		margin-left: 380px;
		color : #454D5B
	}
	
	.signup-wrap {
		width : 1200px;
		margin : auto;
		padding-bottom : 50px;
		border-top: 2px solid #454D5B;
		border-bottom: 1px solid #CDD7E7;
		
	}
  		
	.table th {
		background-color: #F7F8F9;
		text-align: center;
	}
  		
	#idCheck, #reset {
		display:block;
		border : 1px solid #DADADA;
		height: 26px;
	}
  		
	.table caption {
		caption-side: top;
		color : black;
	}
  		
	.table label {
		padding: inherit;
	}
  		
	.signupBtn {
		border : 1px solid #BEB4AF;
		width : 200px;
		color : white;
		background-color : #BEB4AF;
		border : 0px;
		border-radius: 0px;
	}
	
	.signupBtn:hover {
		color : white;
		background-color : #BEB4AF;
		border : 0px;
	}
	
</style>
</head>
<body>
	<%@include file = "../../common/header.jsp" %>
	<div id="wrap">
		<span class="tit">회원가입</span>
		<div class="signup-wrap">
			<form autocomplete="off">
				<section class="d-flex justify-content-center">
					<table class="table">
						<caption>회원정보를 입력해주세요.</caption>
						<tr>
							<th class="col-5">이름</th>
							<td><input type="text" class=text-input name="name" id="name" autocomplete="off"></td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td><input type="text" class="text-input" name="birth" id="birth" placeholder="YYYYMMDD"></td>
						</tr>
						<tr>
							<th>휴대폰 번호</th>
							<td><input type="text" class="text-input"name="phone" id="phone"></td>
						</tr>
						<tr>
							<th>아이디</th>
							<td>
								<div class="d-flex">
									<input type="text" class="text-input mr-2" name="loginId" id="loginId">
									<button type="button" id="idCheck" class="btn btn-sm">중복확인</button>
								</div>
								<small class="text-danger d-none idFail">중복된 아이디 입니다.</small>
								<small class="text-success d-none idSuccess">사용가능한 아이디 입니다.</small>
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" class="text-input" name="password" id="password"></td>
						</tr>
						<tr>
							<th>비밀번호 확인</th>
							<td>
								<input type="password" class="text-input" id="passwordRe"><br>
								<small class="text-danger d-none pwFail">비밀번호가 일치하지 않습니다.</small>
							</td>
						</tr>
						<tr>
							<th>이메일 주소</th>
							<td>
								<div class="d-flex">
									<input type="text" class="text-input col-6" name="email" id="email">
									<span style="margin : 0 4px 0 4px;">@</span>
									<select class="text-input col-5" name="domain" id="domain">
										<option value="0">선택</option>
											<option></option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th style="padding-top: 65px;">주소</th>
							<td id="addressWrap">
								<div class="d-flex">
									<input type="text" class="text-input mb-2 mr-2" name="postcode" id="postcode" placeholder="우편번호">
									<button type="button" id="reset" class="btn btn-sm"><i class="fa-solid fa-trash"></i></button>
								</div>
								<input type="text" class="text-input mb-2" name="address" id="address" placeholder="주소">
								<div class="d-flex mb-2">
									<input type="text" class="text-input col-7 mr-2" name="detailAddress" id="detailAddress" placeholder="상세주소">
									<input type="text" class="text-input col-5" name="extraAddress" id="extraAddress" placeholder="참고항목">
								</div>
							</td>
						</tr>
						<tr>
							<th>마케팅 활용을 위한 개인정보 수집 이용 안내(선택)</th>
							<td>
								<label class="mr-2">동의<input type="radio" class="ml-1" name="marketingAgree" value="1"></label>
								<label>비동의<input type="radio" class="ml-1" name="marketingAgree" value="0"></label>
							</td>
						</tr>
						
					</table>
				</section>
				<section class="d-flex justify-content-center">
					<button type="button" class="btn signupBtn" onclick="location.href='signup'">회원가입</button>
				</section>
			</form>
		</div>		
	</div>
	<%@include file = "../../common/footer.jsp" %>
	
	<!-- 카카오 주소 api -->
	<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
	</div>
	
	<!-- 카카오 지도 api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=07294d6c3c28278176fbea6c96ff7670&libraries=services"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>
		function execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	            	var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                if(data.userSelectedType === 'R'){
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    document.getElementById("extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                document.getElementById('postcode').value = data.zonecode;
	                document.getElementById("address").value = addr;
	                document.getElementById("detailAddress").focus();
	                
	                geocoder.addressSearch(addr, callback);
	            }
	        }).open();
	    }
		
		var geocoder = new kakao.maps.services.Geocoder();
		
		var callback = function(result, status) {
	        if (status === kakao.maps.services.Status.OK) {
	            
	        }
	    };
	
		 $(document).ready(function(){
			$("#postcode").on("click", function(){
				execDaumPostcode();
			})
			
	    	$("#reset").on("click", function(){
	    		var input = $("#addressWrap").find('input[type=text]')
			    input.val('');
	    	})
	    })
	</script>
	

</body>
</html>