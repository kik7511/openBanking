<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">
<head>
	<title>openBanking</title>
	<%@include file = "../../common/link.jsp" %>
	<%@include file = "../../common/font.jsp" %>
	<link rel="stylesheet" type="text/css" href="/resources/css/accountView.css">
	<style>
		.pagination-container {
  width: calc(100% - 2rem);
  display: flex;
  align-items: center;
  bottom: 0;
  padding: 1rem 0;
  justify-content: center;
}

.hidden {
  display: none;
}

.pagination-number,
.pagination-button{
  font-size: 1.1rem;
  background-color: transparent;
  border: none;
  margin: 0.25rem 0.25rem;
  cursor: pointer;
  height: 2.5rem;
  width: 2.5rem;
  border-radius: .2rem;
}

.pagination-number:hover,
.pagination-button:not(.disabled):hover {
  background: #fff;
}

.pagination-number.active {
  color: #fff;
  background: #0085b6;
}
	</style>
</head>
<body>
	<%@include file = "../../common/header.jsp" %>
	<div id="wrap">
		<div class="flex-shrink-0 p-3 bg-white" style="width: 250px; margin-right: 10px;">
		    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none" style="border-bottom: 2px solid">
		      <span class="fs-5 fw-semibold" style="padding-left: 15px;">조회</span>
		    </a>
		</div>
		  <div style="margin-top: 11px; width : 600px;">
		  	<span style="font-size : 23px; color : #454D5B;">조회</span>
		  	<div class="border_yellow">
		  		<div style="text-align: right; padding: 20px;"><span style="font-size: 15px;">관리</span></div>
		  		<div class="context_content"><span style="font-size: 20px;">${product_name}</span></div>
		  		<div class="context_content"><span style="font-size: 14px; color: gray;">${account_num_masked}</span></div>
		  		<div style="padding-top: 13px;padding-bottom: 13px;">
		  			<span style="font-size: 25px;"><strong> <fmt:formatNumber value="${balance_amt}" pattern="#,###"/></strong></span>
		  			<span style="font-size: 22px;">원</span>
	  			</div>
	  			<form name = "form">
		  			<input type = "hidden" name = "fintech_use_num" value="${fintech_use_num}">
		  			<input type = "hidden" name = "balance_amt" value="${balance_amt}">
		  			<input type = "hidden" name = "product_name" value="${product_name}">
		  			<input type = "hidden" name = "account_num_masked" value="${account_num_masked}">
	  			</form>
	  			<div align="right" style="padding-bottom: 10px; padding-top: 10px;">
	  				<button type="button" class="btn next-btn" id="next-btn"><span style="color: white;">이체하기</span></button>
	  			</div>
	  			<div align="right" style="padding-bottom: 10px; padding-top: 10px;">
	  				<button type="button" class="btn btn-light" id="btnExcel"><span style="color: gray; border-radius: 3px;">엑셀 다운로드</span></button>
		  		</div>	
		  		<div style="background-color: #F2F2F2; height: 55px; margin-top: 10px;">
		  			<i class="fa-solid fa-magnifying-glass fa-1x" style="padding-left: 25px;padding-top: 22px"></i>
		  		</div>
		  		<div id="content_res_list_div">
		  			<ul id="paginated-list" class="content_res_list_div_ul" data-current-page="1" aria-live="polite">
		  			</ul>
		  			<nav class="pagination-container">
					    <button class="pagination-button" id="prev-button" aria-label="Previous page" title="Previous page">
					      &lt;
					    </button>
					
					    <div id="pagination-numbers">
					
					    </div>
					
					    <button class="pagination-button" id="next-button" aria-label="Next page" title="Next page">
					      &gt;
					    </button>
				  </nav>
		  		</div>
	  		</div> 			
	 	</div>
	</div>	
	<%@include file = "../../common/footer.jsp" %>	
	<script>
	
	/* excel download */
	$("#btnExcel").click(function() {
		form.attr("action", excelUri).submit();
	});
		
	function numComma(str) {
	    return str.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
	
	function numDate(str) {
	    return (str.substr(4, 4)).slice(0, 2) + '.' + (str.substr(4, 4)).slice(2, 4);
	}
	
	function numTime(str) {
		return (str.substr(0, 4)).slice(0, 2) + ':' + (str.substr(0, 4)).slice(2, 4);
	}
	
	
	$(document).ready(function(){
		
		function getBankId()
    	{
    		var resultNum = "";  		//결과 난수
        	for (var i=0; i<9; i++) { 
				var createNum = Math.floor(Math.random() * 9);		//0부터 9까지 올 수 있는 1자리 난수 생성
				var ranNum = createNum.toString();  //1자리 난수를 String으로 형변환
				resultNum += ranNum;			//생성된 난수(문자열)을 원하는 수(letter)만큼 더하며 나열
				}
				
				var bankId = "M202201828U" + resultNum;
				console.log(bankId);
				return bankId;
    	}
		
		var finNum = $('input:hidden[name=fintech_use_num]').val();
		console.log(finNum);
		
		function getToday(){
		    var date = new Date();
		    var year = date.getFullYear();
		    var month = ("0" + (1 + date.getMonth())).slice(-2);
		    var day = ("0" + date.getDate()).slice(-2);

		    return year + month + day;
		}
		
		function getPrevday(){
		    var date = new Date();
		    var year = date.getFullYear();
		    var month = ("0" + (date.getMonth())).slice(-2);
		    var day = ("0" + date.getDate()).slice(-2);

		    return year + month + day;
		}
		
		function getCurrentDate()
	    {
	        var date = new Date();
	        var year = date.getFullYear().toString();

	        var month = date.getMonth() + 1;
	        month = month < 10 ? '0' + month.toString() : month.toString();

	        var day = date.getDate();
	        day = day < 10 ? '0' + day.toString() : day.toString();

	        var hour = date.getHours();
	        hour = hour < 10 ? '0' + hour.toString() : hour.toString();

	        var minites = date.getMinutes();
	        minites = minites < 10 ? '0' + minites.toString() : minites.toString();

	        var seconds = date.getSeconds();
	        seconds = seconds < 10 ? '0' + seconds.toString() : seconds.toString();

	        return year + month + day + hour + minites + seconds;
	    }
		
		$.ajax({
			type : "GET",
			async: false,
			url : "https://testapi.openbanking.or.kr/v2.0/account/transaction_list/fin_num",
			headers : {
				"Authorization" : "Bearer ${sessAccessToken}"
			},
			data : {
	            "bank_tran_id" : getBankId(),
	            "fintech_use_num" : finNum,
	            "inquiry_type" : "A",
	            "inquiry_base" : "D",
	            "from_date" : getPrevday(),
	            "to_date" : getToday(),
	            "sort_order" : "D",
	            "tran_dtime" : getCurrentDate()
	        }, 
	        success : function(response) {
	        	console.log(response);
	        	
	        	for(var i=0; i<response.res_list.length; i++){
	        		var str1 = response.res_list[i].tran_date;
	        		var str2 = response.res_list[i].tran_time;
	        		
	        		var li = "";
	        		if(response.res_list[i].inout_type == "입금"){
		        		li += '<li style="border-bottom: 1px solid gray">';
		        		li += '<div style="margin-top: 35px; margin-bottom: 15px;">';
		        		li += '<span style="font-size: 17px; padding-left: 20px;">' + numDate(response.res_list[i].tran_date) + ' | ' + numTime(response.res_list[i].tran_time) + '</span>';
		        		li += '</div>';
		        		li += '<div style="display:flex; justify-content: space-between; margin-bottom: 5px;">';
		        		li += '<div style="margin-left: 20px;"><span>' + response.res_list[i].print_content + '</span></div>';
		        		li += '<div style="margin-right: 20px;"><span style="margin-right: 5px; color: purple; font-size: 21px; font-weight: bolder;">+' + numComma(response.res_list[i].tran_amt) + '</span><span style="font-weight: bolder; color: purple;">원</span></div>';
		        		li += '</div>';
		        		li += '<div style="display:flex; justify-content: space-between; margin-bottom: 15px;">';
		        		li += '<div style="margin-left: 20px; font-size: 11px;"><span>' + response.res_list[i].tran_type + '</span></div>';
		        		li += '<div style="margin-right: 20px;"><span style="margin-right: 5px; font-size: 11px; color: gray;">잔액</span><span style="font-size: 11px; color: gray">' + numComma(response.res_list[i].after_balance_amt) + '</span><span style="font-size: 11px; color: gray;">원</span></div>';
		        		li += '</div>';
		        		li += '</li>';
		        		$('#content_res_list_div').children('ul.content_res_list_div_ul').append(li); 
	        		}else{
	        			li += '<li style="border-bottom: 1px solid gray">';
		        		li += '<div style="margin-top: 35px; margin-bottom: 15px;">';
		        		li += '<span style="font-size: 17px; padding-left: 20px;">' + numDate(response.res_list[i].tran_date) + ' | ' + numTime(response.res_list[i].tran_time) + '</span>';
		        		li += '</div>';
		        		li += '<div style="display:flex; justify-content: space-between; margin-bottom: 5px;">';
		        		li += '<div style="margin-left: 20px;"><span>' + response.res_list[i].print_content + '</span></div>';
		        		li += '<div style="margin-right: 20px;"><span style="margin-right: 5px; color: purple; font-size: 21px; font-weight: bolder;">-' + numComma(response.res_list[i].tran_amt) + '</span><span style="font-weight: bolder; color: purple;">원</span></div>';
		        		li += '</div>';
		        		li += '<div style="display:flex; justify-content: space-between; margin-bottom: 15px;">';
		        		li += '<div style="margin-left: 20px; font-size: 11px;"><span>' + response.res_list[i].tran_type + '</span></div>';
		        		li += '<div style="margin-right: 20px;"><span style="margin-right: 5px; font-size: 11px; color: gray;">잔액</span><span style="font-size: 11px; color: gray">' + numComma(response.res_list[i].after_balance_amt) + '</span><span style="font-size: 11px; color: gray;">원</span></div>';
		        		li += '</div>';
		        		li += '</li>';
		        		$('#content_res_list_div').children('ul.content_res_list_div_ul').append(li);
	        		}
	        	}
	        	
	        	//pagination
	        	const paginationNumbers = document.getElementById("pagination-numbers");
	        	const paginatedList = document.getElementById("paginated-list");
	        	const listItems = paginatedList.querySelectorAll("li");
	        	const nextButton = document.getElementById("next-button");
	        	const prevButton = document.getElementById("prev-button");

	        	const paginationLimit = 5;
	        	const pageCount = Math.ceil(response.res_list.length / paginationLimit);
	        	console.log(pageCount);
	        	let currentPage = 1;

	        	const disableButton = (button) => {
	        	  button.classList.add("disabled");
	        	  button.setAttribute("disabled", true);
	        	};

	        	const enableButton = (button) => {
	        	  button.classList.remove("disabled");
	        	  button.removeAttribute("disabled");
	        	};

	        	const handlePageButtonsStatus = () => {
	        	  if (currentPage === 1) {
	        	    disableButton(prevButton);
	        	  } else {
	        	    enableButton(prevButton);
	        	  }

	        	  if (pageCount === currentPage) {
	        	    disableButton(nextButton);
	        	  } else {
	        	    enableButton(nextButton);
	        	  }
	        	};

	        	const handleActivePageNumber = () => {
	        	  document.querySelectorAll(".pagination-number").forEach((button) => {
	        	    button.classList.remove("active");
	        	    const pageIndex = Number(button.getAttribute("page-index"));
	        	    if (pageIndex == currentPage) {
	        	      button.classList.add("active");
	        	    }
	        	  });
	        	};

	        	const appendPageNumber = (index) => {
	        	  const pageNumber = document.createElement("button");
	        	  pageNumber.className = "pagination-number";
	        	  pageNumber.innerHTML = index;
	        	  pageNumber.setAttribute("page-index", index);
	        	  pageNumber.setAttribute("aria-label", "Page " + index);

	        	  paginationNumbers.appendChild(pageNumber);
	        	};

	        	const getPaginationNumbers = () => {
	        	  for (let i = 1; i <= pageCount; i++) {
	        	    appendPageNumber(i);
	        	  }
	        	};

	        	const setCurrentPage = (pageNum) => {
	        	  currentPage = pageNum;

	        	  handleActivePageNumber();
	        	  handlePageButtonsStatus();
	        	  
	        	  const prevRange = (pageNum - 1) * paginationLimit;
	        	  const currRange = pageNum * paginationLimit;

	        	  listItems.forEach((item, index) => {
	        	    item.classList.add("hidden");
	        	    if (index >= prevRange && index < currRange) {
	        	      item.classList.remove("hidden");
	        	    }
	        	  });
	        	};

	        	window.addEventListener("load", () => {
	        	  getPaginationNumbers();
	        	  setCurrentPage(1);

	        	  prevButton.addEventListener("click", () => {
	        	    setCurrentPage(currentPage - 1);
	        	  });

	        	  nextButton.addEventListener("click", () => {
	        	    setCurrentPage(currentPage + 1);
	        	  });

	        	  document.querySelectorAll(".pagination-number").forEach((button) => {
	        	    const pageIndex = Number(button.getAttribute("page-index"));

	        	    if (pageIndex) {
	        	      button.addEventListener("click", () => {
	        	        setCurrentPage(pageIndex);
	        	      });
	        	    }
	        	  });
	        	});
	        }, error : function(e) {
				
			}
		});
	});
	
	</script>
	<script>
		var goTransfer = "/account/accountTransfer"
		
		$('#next-btn').click(function(){
			alert('작동');
			$('form[name=form]').attr("action", goTransfer).submit();
		})
	</script>
</body>
</html>