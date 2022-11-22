<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="CodeServiceImpl" class="com.openBanking.modules.code.CodeServiceImpl" />
 
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8" name="viewport" content="width=device-width, user-scalable=0">
<title>가계부</title>

<%@include file = "../../common/link.jsp" %>

<!-- fullCalendar -->
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css">

<!-- font -->
<%@include file = "../../common/font.jsp" %>
<style>
	#wrap {
		width:900px; 
		margin: auto;
		margin-bottom: 30px;
	}
	
	#calendar {
		width : 100%;
		height : 630px !important;
	}
	
	.fc-button-group {
		position : absolute;
		margin-right: 50px;
	}
	
	.fc-button {
		background-color: white !important;
		border : 0px !important;
	}
	
	.fc-icon-chevron-left, .fc-icon-chevron-right {
		color : black;
	}
	
	.fc-scrollgrid-sync-table>tbody>tr {
		/* height: 100px;  */
		
	} 
	
	#createdBtn {
		color : black;
		position: relative;
		left: 870px;
    	top: 28px;
	}
	
	#accountBookModal {
		position:fixed	
	}
	
	#accountBookModal .modal-content {
		width : 700px;
		border : 0px;
		border-radius: 15px;
	}
	
	#accountBookModal .modal-content .modal-header {
		border : 0px;
		padding: 15px;
		
	}
	
	#accountBookModal .modal-content .modal-header #next-btn {
		border : 0px;
		background-color: white;
	}
	
	#accountBookModal.modal-content .modal-body {
		width : 100%;
		float: left;
		padding: 0 30px 50px 30px;
	}
	
	#accountBookModal .modal-content .modal-input-text {
		height : 30px;
		
	}
	
	#accountBookModal .modal-content .modal-body-section {
		border-bottom: 1px solid #ced4da;
		padding : 20px 0 20px 0;
	}
	
	#accountBookModal .modal-content .modal-body-section .tit {
		width : 30%;
	}
	
	#accountBookModal .modal-content .modal-body-section .optionBtn {
		width : 80px;
		height: 35px;
		border : 1px solid #ced4da;
		/* background-color: white; */
		border-radius: 5px;
		margin-right: 10px;
	}
	
	.optionBtn:active {
		width : 80px;
		height: 35px;
		border : 1px solid #ced4da;
		background-color: yellow; 
		border-radius: 5px;
		margin-right: 10px;
	} 
	
	#accountBookModal .modal-content .modal-body-section .form-select {
		width : 30%;
	}
	
	#accountBookModal .modal-content .modal-body div .form-control {
		border : none;
		background-color: white;
	}
	
	#saveBtn {
		width : 100%;
		background-color: #57BA83;
		margin-top: 30px;
		color : white;
	}
	
	.fc-daygrid-event {
		background-color:transparent;
		border : none;
	}
	
	.fc-event-title {
		color : black;
	}
	
</style>

</head>
<body>
<form autocomplete="off"  method="post" id="form" name="form">
	<%@include file = "../../common/header.jsp" %>
	<input type="hidden" name="memberSeq" value="${sessSeq}">
	<c:set var="listCodecategory" value="${CodeServiceImpl.selectListCachedCode('14')}" />
	<div id="wrap">
		<a id="createdBtn" data-bs-toggle="modal" href="#accountBookModal" role="button"><i class="fa-regular fa-calendar-plus"></i></a>
		<div id="calendar">
		</div>
	</div>
	<%@include file = "../../common/footer.jsp" %>
	
	<!-- modal -->
	<div class="modal fade" id="accountBookModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div>
						<input type="hidden" name="" value="${sessName}">
						<div>지출금액</div>
						<input type="text" class="form-control d-inline" id="" name="useMoney" style="width:30%; font-size: 25px; font-weight: bold;" onkeyup="inputNumberFormat(this)">원
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">분류</span>
						<input type="radio" class="btn-check" name="options" id="option1" autocomplete="off" checked>
						<label class="btn btn" for="option1">지출</label>
						
						<input type="radio" class="btn-check" name="options" id="option3" autocomplete="off">
						<label class="btn btn" for="option3">수입</label>
						
						<input type="radio" class="btn-check" name="options" id="option4" autocomplete="off">
						<label class="btn btn" for="option4">이체</label>
						
						
					<!-- <button type="button" class="btn optionBtn type" value="지출" id="type1">지출</button>
						<button type="button" class="btn optionBtn type" value="수입" id="type2">수입</button>
						<button type="button" class="btn optionBtn type" value="이체" id="type3">이체</button> -->
						<input type="hidden" id="type" name="type">
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">카테고리</span>
						<select class="form-select" name="category">
							<option>미분류</option>
							<c:forEach items="${listCodecategory}" var="listcategory" varStatus="statuscategory">
								<option value="${listcategory.ccSeq} ">
									<c:if test="${list.category eq listcategory.ccSeq}">selected</c:if>${listcategory.ccName}
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="modal-body-section d-flex">
						<div class="tit">거래처</div>
						<input type="text" class="form-control" id="" name="client" placeholder="입력하세요" style="width : 50%;">
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">결제수단</span>
						<input type="button" class="btn optionBtn" id="pay1" value="카드">
						<input type="button" class="btn optionBtn" id="pay2" value="현금">
						<!-- 
						<input type="radio" class="btn-check" name="options" id="option2" autocomplete="off">
						<label class="btn btn" for="option2">카드</label>
						<input type="radio" class="btn-check" name="options" id="option7" autocomplete="off">
						<label class="btn btn" for="option7">현금</label>
						 -->
						<!-- 
						<input type="radio" class="btn-check" name="options-outlined" id="success-outlined" autocomplete="off">
						<label class="btn btn-outline-success" for="success-outlined">카드</label>
						
						<input type="radio" class="btn-check" name="options-outlined" id="danger-outlined" autocomplete="off">
						<label class="btn btn-outline-danger" for="danger-outlined">현금</label>
						 -->
						<input type="hidden" id="payment" name="methodOfPayment">
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">날짜</span>
						<input type="text" class="form-control" id="date" name="date" placeholder="입력하세요" style="width : 40%;">
					</div>
					<div class="modal-body-section d-flex">
						<div class="tit">메모</div>
						<input type="text" class="form-control" id="" name="memo" placeholder="입력하세요" style="width : 50%;">
					</div>
					<button id="saveBtn" class="btn">저장</button>
				</div>
			</div>
		</div>
	</div>
	<!-- modal -->
</form>
	<script>
		$("#date").datepicker({
			dateFormat: "yy-mm-dd",
		    dayNamesMin:['월', '화', '수', '목', '금', '토', '일'],
		    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    showMonthAfterYear: true,
		    yearSuffix: '년',
		});
		
		function inputNumberFormat(obj) {
		    obj.value = comma(uncomma(obj.value));
		}
		
		function comma(str) {
		    str = String(str);
		    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		}
		
		function uncomma(str) {
		    str = String(str);
		    return str.replace(/[^\d]+/g, '');
		}
		
		$(document).ready(function() {
			
			var calendarEl = document.getElementById('calendar');
			var calendar = new FullCalendar.Calendar(calendarEl, {
				height: '1000px', // calendar 높이 설정
		        expandRows: true,
				headerToolbar: {
					left: 'title',
					center: '',
					right: 'prev,next'
				},
				initialView: 'dayGridMonth',
				titleFormat: function (date) {
			      year = date.date.year;
			      month = date.date.month + 1;
		
			      return month + "월";
			    },
			    eventDidMount:function(data) {
			    	console.log(data.event.extendedProps.type)
			    	if(data.event.extendedProps.type == "48") {
			    		$(".fc-event-main").remove();
			    		$(data.el).css("color", "red");
			    		$(data.el).html("-"+data.event.title)
			    	} else {
			    		$(".fc-event-main").remove();
			    		$(data.el).css("color", "#57BA83");
			    		$(data.el).html("+"+data.event.title)
			    	}
				}
			});
			
			$.ajax({
				type:"post",
				url:"/rest/member/accountData",
				data:{"memberSeq":$("input[name=memberSeq]").val()},
				success:function(data) {
					console.log(data)
					
					for(i=0; i < data.length; i++) {
						calendar.addEvent({
							title:data[i]['useMoney'],
							start:data[i]['date'],
							
							extendedProps: {
						        accountbookSeq:data[i]['seq'],
						        type:data[i]['type'],
						        useMoney:data[i]['useMoney']
					        }
	  				 	});
  			 		}
	 		 	}
				
		});
			 
			calendar.render();
		});
		
		var goUrlInst = "/member/accountBookInst";
		var form =$("form[name=form]");
		var seq = $("input:hidden[name=ifmmSeq]");			/* #-> */
		
		/* type */
		setCheckboxValue = function(obj, obj2, obj3, targetObj) {
			   if(obj.is(":checked")){
				   targetObj.val("48");
			    } else if(obj2.is(":checked")) {
			    	targetObj.val("49");
			    } else if(obj3.is(":checked")) {
			    	targetObj.val("50");
			    } else {
			    }
			}
		
		/* methodOfPayment */
		setCheckboxValue2 = function(obj1,obj2, targetObj) {
			   if(obj.is(":checked")){
				   targetObj.val("64");
			    } else if(obj2.is(":checked")) {
			    	targetObj.val("65");
			    } else {
			    }
			}
	  	/* $(".optionBtn").on("click", function() {
		 	if($('.optionBtn').is(':checked')){
		 		$(".optionBtn").css('background-color', 'black')
	 		};
		})   */
	    
	 	/* $('optionBtn').click(function() {
			$('optionBtn').removeClass("active");
			$(this).addClass("active");
		}); */  
	  	
	  /* 	for (var i=0; i<$(".type").length; i++) {
	  		alert($("#type"+(i+1)).val())
	  		$("#type"+(i+1)).on("click", function() {
	  			alert("asdda"+i)
				$("#type"+(i+1)).css("background", "yellow")
			})
	  	} */
		
		/* 분류 */
		$("#type1").on("click", function(){
			$('input:hidden[name = type]').val("48");
			/* $(".optionBtn").css("background", "yellow") */
		})
		
		$("#type2").on("click", function() {
			$('input:hidden[name = type]').val("49");
		})
		
		$("#type3").on("click", function() {
			$('input:hidden[name = type]').val("50");
		})
		
		/* 결제수단 */
		$("#pay1").on("click", function(){
			$('input:hidden[name = methodOfPayment]').val("64");
		})
		
		$("#pay2").on("click", function(){
			$('input:hidden[name = methodOfPayment]').val("65");
		})
		
		<!-- insert -->
		$(document).on("click",'#saveBtn', function(){
			alert("나와라");
			setCheckboxValue($("#option1"),$("#option3"),$("#option4"), $("#type"));
	   		form.attr("action", goUrlInst).submit();
		});
		<!-- insert end-->
		
		
		
		
	</script>

</body>
</html>