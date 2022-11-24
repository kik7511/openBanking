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
    	top: 32px;
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
		/* border : 1px solid #ced4da; */
		/* background-color: white; */
		border-radius: 5px;
		margin-right: 10px;
	}
	
	/* .optionBtn:active {
		width : 80px;
		height: 35px;
		border : 1px solid #ced4da;
		border-radius: 5px;
		margin-right: 10px;
	}  */
	
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
	
	.fc-daygrid-event:hover{
		opacity: 0.33;
	}
	
	
	.fc-event-title {
		color : black;
	}
	
</style>

</head>
<body>
	<form autocomplete="off" method="post" id="form" name="form">
	<input type="hidden" name="" value="${sessName}">
	<input type="hidden" name="memberSeq" value="${sessSeq}">
	<%@include file = "../../common/header.jsp" %>
	<c:set var="listCodecategory" value="${CodeServiceImpl.selectListCachedCode('14')}" />
	<div id="wrap">
		<a id="createdBtn" href="#" onclick="createModalShow()"><i class="fa-regular fa-calendar-plus"></i></a>
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
						<div>금액</div>
						<input type="text" class="form-control d-inline" name="useMoney" id="useMoney" style="width:30%; font-size: 25px; font-weight: bold;" onkeyup="inputNumberFormat(this)" <c:if test="${not empty item.useMoney }">value="${item.useMoney  }"</c:if>>원
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">분류</span>
						<input type="radio" class="btn-check type" name="options" id="option1" autocomplete="off" value="48">
						<label class="btn btn" for="option1">지출</label>
						
						<input type="radio" class="btn-check type" name="options" id="option3" autocomplete="off" value="49">
						<label class="btn btn" for="option3">수입</label>
						
						<input type="radio" class="btn-check type" name="options" id="option4" autocomplete="off" value="50">
						<label class="btn btn" for="option4">이체</label>
						
						<input type="hidden" id="type" name="type">
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">카테고리</span>
						<select class="form-select" name="category" id="category">
							<option value="0">미분류</option>
							<c:forEach items="${listCodecategory}" var="listcategory" varStatus="statuscategory">
								<option value="${listcategory.ccSeq}">
									<c:if test="${list.category eq listcategory.ccSeq}">selected</c:if>${listcategory.ccName}
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="modal-body-section d-flex">
						<div class="tit">거래처</div>
						<input type="text" class="form-control" id="client" name="client" placeholder="입력하세요" style="width : 50%;">
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">결제수단</span>
						<input type="radio" class="btn-check" name="options2" id="option2" autocomplete="off" value="64">
						<label class="btn btn" for="option2">카드</label>
						
						<input type="radio" class="btn-check" name="options2" id="option7" autocomplete="off" value="65">
						<label class="btn btn" for="option7">현금</label>
						 
						<input type="hidden" id="payment" name="methodOfPayment">
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">날짜</span>
						<input type="text" class="form-control" id="date" name="date" placeholder="입력하세요" style="width : 40%;">
					</div>
					<div class="modal-body-section d-flex">
						<div class="tit">메모</div>
						<input type="text" class="form-control" id="memo" name="memo" placeholder="입력하세요" style="width : 50%;">
					</div>
					<button id="saveBtn" class="btn">저장</button>
				
				</div>
			</div>
		</div>
	</div>
	</form>
	<!-- modal -->
	
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
		
		function createModalShow(){
			$('#accountBookModal').find('#useMoney, #client, #date, #memo').val(null);
			$('#accountBookModal').find('select').val(0);
			
			$('#accountBookModal').modal('show');
			
			return;
		}
		
		$(document).on("click",'.fc-daygrid-event', function() {
			var seq = $(this).children("a").data("id");

			$.ajax({
				type:"post",
				url:"/rest/member/accountBookSelectOne",
				data:{"memberSeq":$("input[name=memberSeq]").val(), "seq":seq},
				success:function(data){
					console.log(data)
					var modal = $("#accountBookModal");
					modal.find("#useMoney").val(comma(data.useMoney));
					modal.find("#client").val(data.client);
					modal.find("#date").val(data.date);
					modal.find("#memo").val(data.memo);
					modal.modal('show');
					
					$("input:radio[name='options'][value='"+data.type+"']").attr('checked', true);
					$("input:radio[name='options2'][value='"+data.methodOfPayment+"']").attr('checked', true);
					console.log($("input:radio[name='options'][value='"+data.methodOfPayment+"']"))
					$("#category").val(data.category).prop("selected", true);
				}
			})
		})
		
		$('#accountBookModal').on('hide.bs.modal', function() {
			$("input:radio[name='options']").attr('checked', false);
			$("input:radio[name='options2']").attr('checked', false);
		});
			
		
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
		      	editable: true,
  			    customButtons:{
			    	prev: {
			    		click : function() {
			    			calendar.prev();
			    			$(".fc-event-main").remove();
			    		}
			    	},
			    	next: {
			    		click : function() {
			    			calendar.next();
			    			$(".fc-event-main").remove();
			    		}
			    	}
			    },
			    eventDidMount:function(data) {
			    	console.log(data.event.extendedProps.type)
			    	if(data.event.extendedProps.type == "48") {
			    		$(".fc-event-main").remove();
			    		$(data.el).html('<a href="#" class="detail" data-id="'+data.event.extendedProps.accountbookSeq+'" style="color:red;">-'+data.event.title+'</a>')
			    	} else {
			    		$(".fc-event-main").remove();
			    		$(data.el).html('<a href="#" class="detail" data-id="'+data.event.extendedProps.accountbookSeq+'" style="color:#57BA83;">+'+data.event.title+'</a>')
			    	}
				}
			});
			
			$.ajax({
				type:"post",
				url:"/rest/member/accountList",
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
			$(".fc-event-main").remove();
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
		setCheckboxValue2 = function(obj,obj2, targetObj) {
		   if(obj.is(":checked")){
			   targetObj.val("64");
		    } else if(obj2.is(":checked")) {
		    	targetObj.val("65");
		    } else {
		    }
		}
        
		<!-- insert -->
		$(document).on("click",'#saveBtn', function(){
			setCheckboxValue($("#option1"),$("#option3"),$("#option4"), $("#type"));
			setCheckboxValue2($("#option2"),$("#option7"), $("#payment"));
	   		form.attr("action", goUrlInst).submit();
		});
		<!-- insert end-->
		
	</script>

</body>
</html>