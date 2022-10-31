<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		background-color: white;
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

</style>

</head>
<body>
	<%@include file = "../../common/header.jsp" %>
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
						<div>지출금액</div>
						<input type="text" class="form-control d-inline" style="width:30%; font-size: 25px; font-weight: bold;" onkeyup="inputNumberFormat(this)">원
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">분류</span>
						<button class="btn optionBtn">지출</button>
						<button class="btn optionBtn">수입</button>
						<button class="btn optionBtn">이체</button>
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">카테고리</span>
						<select class="form-select">
							<option>미분류</option>
							<option>식비</option>
							<option>카페/간식</option>
							<option>술/유흥</option>
							<option>생활</option>
							<option>온라인쇼핑</option>
							<option>패션/쇼핑</option>
							<option>뷰티/미용</option>
							<option>교통</option>
							<option>주거/통신</option>
							<option>문화/여가</option>
							<option>여행/숙박</option>
							<option>반려동물</option>
							<option>경조/선물</option>
						</select>
					</div>
					<div class="modal-body-section d-flex">
						<div class="tit">거래처</div>
						<input type="text" class="form-control" placeholder="입력하세요" style="width : 50%;">
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">결제수단</span>
						<button class="btn optionBtn">카드</button>
						<button class="btn optionBtn">현금</button>
					</div>
					<div class="modal-body-section d-flex">
						<span class="tit">날짜</span>
						<input type="text" class="form-control" id="date" placeholder="입력하세요" style="width : 40%;">
					</div>
					<div class="modal-body-section d-flex">
						<div class="tit">메모</div>
						<input type="text" class="form-control" placeholder="입력하세요" style="width : 50%;">
					</div>
					<button id="saveBtn" class="btn">저장</button>
				</div>
			</div>
		</div>
	</div>
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
			});
			 
			calendar.render();
			
		});
		
	</script>

</body>
</html>