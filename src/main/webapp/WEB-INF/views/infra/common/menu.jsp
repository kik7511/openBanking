<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<header class="d-flex">
	<a href="/admin/memberList" class="display-6 text-dark col-2 mt-2" id="logo">admin page</a>
	<nav class="sub-menu col-10 d-flex align-items-center justify-content-end">
		<ul class="nav">
			<c:choose>
				<c:when test="${not empty loginId}" >
					<a href="#" class="userName" style="margin-right: 10px">${name } 님</a>
					<a href="#" class="logout" id="logoutBtn">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a href="/admin/login" class="mr-3 login">로그인</a>
				</c:otherwise>
			</c:choose>
		</ul>                        
	</nav>
</header>
<section class="d-flex">
	<aside class="col-2">
		<nav class="main-nav">
			<ul class="nav flex-column">
				<li class="nav-item"><a href="#" class="nav-link">회원관리</a></li>
				<li class="nav-item"><a href="#" class="nav-link">실시간문의 관리</a></li>
				<li class="nav-item"><a href="#" class="nav-link">예매오픈 관리</a></li>				
				<li class="nav-item"><a href="#" class="nav-link">박스오피스 API</a></li>
				<li class="nav-item"><a href="#" class="nav-link">코드그룹관리</a></li>
				<li class="nav-item"><a href="#" class="nav-link">코드관리</a></li>
			</ul>
		</nav>
	</aside>
<!-- 				
		<div class="noticeSection d-flex justify-content-around">
			<div class="box">
				<span>공지사항</span>
			</div>
			<div class="box">
				<span>1:1문의</span>
			</div>
			<div class="box">
				<span>1:1문의</span>
			</div>
			<div class="box">
				<span>1:1문의</span>
			</div>
		</div>
 -->		
 
<script>
	$(document).ready(function(){
		$("#logoutBtn").on("click", function() {
			$.ajax({
				type: "POST"
				,url: "/member/logout"
				,data: {}
				,success : function(response) {
					if (response.rt == "success") {
						window.location.href = document.location.pathname;
					} else {
						localStorage.clear();
						window.location.href = document.location.pathname;
					}
				}
			});
		});
	});
</script>		