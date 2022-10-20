<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8" name="viewport" content="width=device-width, user-scalable=0">
<title>가계부</title>
<%@include file = "../../common/link.jsp" %>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

<!-- fullCalendar -->
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css">

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<!-- fontawesome -->
<script src="https://kit.fontawesome.com/9a0994e5cb.js" crossorigin="anonymous"></script>

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
		height : 650px !important;
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

</style>

</head>
<body>
	<%@include file = "../../common/header.jsp" %>
	<div id="wrap">
		<a data-bs-toggle="modal" href="#accountBookModal" role="button"><i class="fa-regular fa-calendar-plus"></i></a>
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
					<div class="section d-flex">
						<span class="tit">분류</span>
						<button class="btn optionBtn">지출</button>
						<button class="btn optionBtn">수입</button>
						<button class="btn optionBtn">이체</button>
					</div>
					<div class="section d-flex">
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
					<div class="section d-flex">
						<div class="tit">거래처</div>
						<input type="text" class="form-control" placeholder="입력하세요" style="width : 50%;">
					</div>
					<div class="section d-flex">
						<span class="tit">결제수단</span>
						<button class="btn optionBtn">카드</button>
						<button class="btn optionBtn">현금</button>
					</div>
					<div class="section d-flex">
						<span class="tit">날짜</span>
						<input type="text" class="form-control" id="date" placeholder="입력하세요" style="width : 40%;">
					</div>
					<div class="section d-flex">
						<div class="tit">메모</div>
						<input type="text" class="form-control" placeholder="입력하세요" style="width : 50%;">
					</div>
					<button id="saveBtn" class="btn">저장</button>
				</div>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<!-- modal -->
	
	<script>
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