<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="CodeServiceImpl" class="com.openBanking.modules.code.CodeServiceImpl" />

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
<script src="/resources/js/validation.js"></script>
<title>회원가입</title>
<%@include file = "../../common/link.jsp" %>	
<%@include file = "../../common/font.jsp" %>
<style>
.table {
	margin : 10px 0 20px 0;
	width : 500px;
}

.table caption {
	caption-side: top;
	color : black;
}

.table label {
	padding: inherit;
}

.table .text-input {
	border : 1px solid #DADADA;
	padding: 2px;
}

.table th {
	background-color: #F7F8F9;
	text-align: center;
}

.next-btn {
	border : 1px solid #BEB4AF;
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

.font-orange {
    color: #e63e30!important;
}

</style>
</head>
<body>
	<%@include file = "../../common/header.jsp" %>
	<c:set var="listCodeifmmEmailAddress" value="${CodeServiceImpl.selectListCachedCode('4')}" />
	<form autocomplete="off"  method="post" id="form" name="form">
		<div id="wrap">
			<span class="tit">회원가입</span>
			<div class="signup-wrap">
				<section class="d-flex justify-content-center">
					<table class="table">
						<caption>회원정보를 입력해주세요.</caption>
						<tr>
							<th class="col-5"><em class="font-orange">*</em> 이름</th>
							<td>
								<input type="text" class=text-input name="ifmmName" id="ifmmName" autocomplete="off">
								<small class="text-danger" id="name_msg" style="display: none"></small>
							</td>
						</tr>
						<tr>
							<th><em class="font-orange">*</em> 생년월일</th>
							<td><input type="text" class="text-input" name=ifmmDob id="datepicker" placeholder="YYYY-MM-DD"></td>
						</tr>
						<tr>
							<th><em class="font-orange">*</em> 휴대폰 번호</th>
							<td><input type="text" class="text-input"name="ifmmTel" id="ifmmTel"></td>
						</tr>
						<tr>
							<th><em class="font-orange">*</em> 아이디</th>
							<td>
								<div class="d-flex">
									<input type="text" class="text-input mr-2" name="ifmmId" id="ifmmId">
									<button type="button" id="idCheck" class="btn btn-sm">중복확인</button>
								</div>
								<small class="text-danger" id="id_msg" style="display: none"></small>
								<small class="text-danger d-none idFail">중복된 아이디 입니다.</small>
								<small class="text-success d-none idSuccess">사용가능한 아이디 입니다.</small>
							</td>
						</tr>
						<tr>
							<th><em class="font-orange">*</em> 비밀번호</th>
							<td><input type="password" class="text-input" name="ifmmPassword" id="ifmmPassword"></td>
						</tr>
						<tr>
							<th><em class="font-orange">*</em> 비밀번호 확인</th>
							<td>
								<input type="password" class="text-input" id="passwordRe"><br>
								<small class="text-danger d-none pwFail">비밀번호가 일치하지 않습니다.</small>
								<small class="text-success d-none pwSuccess">비밀번호가 일치합니다.</small>
							</td>
						</tr>
						<tr>
							<th>이메일 주소</th>
							<td>
								<div class="d-flex">
									<input type="text" class="text-input col-6" name="ifmmEmail" id="ifmmEmail">
									<span style="margin : 0 4px 0 4px;">@</span>
									<select class="text-input col-5" name="ifmmEmailAddress" id="ifmmEmailAddress">
										<option value="0">::선택::</option>
											<c:forEach items="${listCodeifmmEmailAddress}" var="listifmmEmailAddress" varStatus="statusifmmEmailAddress">
												<option value="${listifmmEmailAddress.ccSeq} ">
													<c:if test="${list.ifmmEmailAddress eq listifmmEmailAddress.ccSeq}">selected</c:if>${listifmmEmailAddress.ccName}
												</option>
											</c:forEach>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th style="padding-top: 55px;">주소</th>
							<td id="addressWrap">
								<div class="d-flex">
									<input type="text" class="text-input mb-2 mr-2" name="ifmmPostNumber" id="ifmmPostNumber" placeholder="우편번호">
									<button type="button" id="reset" class="btn btn-sm"><i class="fa-solid fa-trash"></i></button>
								</div>
								<input type="text" class="text-input mb-2" name="ifmmAddress" id="ifmmAddress" placeholder="주소">
								<div class="d-flex mb-2">
									<input type="text" class="text-input col-7 mr-2" name="ifmmAddressDetail" id="ifmmAddressDetail" placeholder="상세주소">
									<input type="text" class="text-input col-5" name="extraAddress" id="extraAddress" placeholder="참고항목">
								</div>
							</td>
						</tr>
						<tr>
							<th><em class="font-orange">*</em> 사용자 인증</th>
							<td><button type="button" class="btn btn-sm" onclick="javascript:checkAccount()">인증하기</button></td>
						</tr>
						<tr>
							<th>마케팅 활용을 위한 개인정보 수집 이용 안내</th>
							<td>
								<label class="mr-2">동의<input type="radio" class="ml-1" name="marketing" id="marketing" value="1"></label>
								<label>비동의<input type="radio" class="ml-1" name="ifmmMarketingNy" value="0"></label>
								<input type="hidden" name="ifmmMarketingNy" id="ifmmMarketingNy" value="0">
							</td>
						</tr>
						
					</table>
				</section>
				<section class="d-flex justify-content-center">
					<button type="button" class="btn next-btn" id="btnSave">회원가입</button>
				</section>
			</div>		
		</div>
	</form>
	<%@include file = "../../common/footer.jsp" %>
	
	<!-- 카카오 주소 api -->
	<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
	</div>
	
	<!-- 카카오 지도 api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=07294d6c3c28278176fbea6c96ff7670&libraries=services"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>
		
		var goUrlInst = "/member/memberInst";
		var form =$("form[name=form]");
		var seq = $("input:hidden[name=ifmmSeq]");			/* #-> */
		
		//마케팅수신동의 
		setCheckboxValue = function(obj, targetObj) {
			   if(obj.is(":checked")){
				   targetObj.val("1");
			    } else {
			    	targetObj.val("0");
			    }
			}
		
		validationUpdt = function() {
            if (!id_regex($('input[name=ifmmId]'), $('input[name=ifmmId]').val(), "입력 필요!", $('#id_msg'))) {
            	return false;
            } else if(!name_regex($('input[name=ifmmName]'), $('input[name=ifmmName').val(), "입력 필요!", $('#name_msg'))) {
                return false;
            }else{
            	return true;
            } 
		}; 
		
		<!-- insert -->
		$(document).on("click",'#btnSave', function(){
			if(validationUpdt() == false) return false;
	   		/* if(ckeckId() == false) return false;
	   		if(ckeckPwd() == false) return false; */
	   		 setCheckboxValue($("#marketing"), $("#ifmmMarketingNy"));
	   		 form.attr("action", goUrlInst).submit();
		});
		<!-- insert end-->
		
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
	
	                document.getElementById('ifmmPostNumber').value = data.zonecode;
	                document.getElementById("ifmmAddress").value = addr;
	                document.getElementById("ifmmAddressDetail").focus();
	                
	                geocoder.addressSearch(addr, callback);
	            }
	        }).open();
	    }
		
		var geocoder = new kakao.maps.services.Geocoder();
		
		var callback = function(result, status) {
	        if (status === kakao.maps.services.Status.OK) {
	            
	        }
	    };
	    
	    <!-- 사용자인증 -->
	    function checkAccount(){
			 var tmpWindow = window.open('about:blank')
	            tmpWindow.location = "https://testapi.openbanking.or.kr/oauth/2.0/authorize?" +
	            "response_type=code&"+
	            "client_id=eb586430-d8eb-4fcd-bd6e-0448383e17a5&"+  
	            "redirect_uri=http://localhost:8080/member/signup&"+
	            "scope=login inquiry transfer&"+
	            "state=b80BLsfigm9OokPTjy03elbJqRHOfGSY&"+
	            "auth_type=0"
		}
	
		 $(document).ready(function(){
			 
			
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
		            "redirect_uri" : 'http://localhost:8080/member/signup',
		            "grant_type" : 'authorization_code'
		        }, 
		        success : function(data) {
		        	var access_token = '<input type="hidden" id="ifmmAccessToken" name="ifmmAccessToken" value="'+data.access_token+'"></input>'
		        	$("#wrap").append(access_token)
		        }, error : function(e) {
					alert(e);
				}
		    })
			 
			$("#ifmmPostNumber").on("click", function(){
				execDaumPostcode();
			})
			
	    	$("#reset").on("click", function(){
	    		var input = $("#addressWrap").find('input[type=text]')
			    input.val('');
	    	})
	    })
	    
	    <!-- DatePicker start -->
		 
		 $(document).ready(function () {
			    $.datepicker.regional['ko'] = {
			        closeText: '닫기',
			        prevText: '이전달',
			        nextText: '다음달',
			        currentText: '오늘',
			        monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
			        '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
			        monthNamesShort: ['1월','2월','3월','4월','5월','6월',
			        '7월','8월','9월','10월','11월','12월'],
			        dayNames: ['일','월','화','수','목','금','토'],
			        dayNamesShort: ['일','월','화','수','목','금','토'],
			        dayNamesMin: ['일','월','화','수','목','금','토'],
			        weekHeader: 'Wk',
			        dateFormat: 'yy-mm-dd',
			        firstDay: 0,
			        showMonthAfterYear: true,
			        changeMonth: true,
			        changeYear: true,
			        yearRange: 'c-99:c+99',
			    };	
			    $.datepicker.setDefaults($.datepicker.regional['ko']);
		
			    $('#datepicker').datepicker();
			    });
	  <!-- DatePicker end -->
	  	
	  $("#idCheck").on("click", function ckeckId(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,dataType:"json" 
				,url: "/member/checkId"
				,data : { "ifmmId" : $("#ifmmId").val() }
				,success: function(response) {
					$("#id_msg").css("display", "none")
					if(response.rt == "success") {
						$("small.idSuccess").removeClass('d-none');
						return true;
					} else {
						$("small.idFail").removeClass('d-none');
						passwordRe.focus();
						return false;
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	});
	  
	  
	  $("#passwordRe").on("focusout", function checkPwd(){
			var password = $("#ifmmPassword");
			var passwordRe = $("#passwordRe");
			
			if(password != '' && passwordRe == ''){
				null;
			}else if(password != "" || passwordRe != ""){
				if(password.val() == passwordRe.val()){
					$(".pwFail").addClass('d-none');
					$(".pwSuccess").removeClass('d-none');
					return true;
				}else{
					$(".pwSuccess").addClass('d-none');
					$(".pwFail").removeClass('d-none');
					$("#ifmmPassword").val("");
					$("#passwordRe").val("");
					password.focus();
					return false;
				}
			}
		});
	  
	  $("#ifmmName").on("focusout", function(){
		  $("#name_msg").css("display", "none");  
	  });
	  
	  $("#ifmmId").on("focusout", function(){
		  $("#id_msg").css("display", "none");  
	  });
	  
	</script>

</body>
</html>