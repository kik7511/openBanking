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
		<a href="#" id="createdBtn"><i class="fa-regular fa-calendar-plus"></i></a>
		<div id="calendar">
		</div>
	</div>
	<%@include file = "../../common/footer.jsp" %>

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