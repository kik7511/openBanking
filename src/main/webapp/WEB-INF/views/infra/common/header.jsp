<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="header">
		<div id="">
			<div class="header_new pc" style="width: 100%;">
				<div class="top">
					<div class="inner">
		            <!-- 20190417 SR-614 기업 헤더 디자인 반영 -->
						<h1 class="logo">
							<a href="/"><img src="/resources/img/Fradel (1).png"></a>
						</h1>
						<div id="utill">
						<c:choose>
							<c:when test="${not empty sessSeq}" >
								<div class="login_before">
									<span class="login"><a href="#">${sessName} 님</a></span>
									<span class="login"><a href="/member/logout">로그아웃</a></span>
								</div>
							</c:when>
							<c:otherwise>
								<div class="login_before">
									<span class="login"><a href="/member/login">로그인</a></span>
									<span class="login"><a href="/member/signup">회원가입</a></span>
								</div>
							</c:otherwise>
						</c:choose>
           				</div>
						<!-- //20190417 SR-614 기업 헤더 디자인 반영 -->
					</div>
				</div>
				<div class="gnb">
					<div class="inner">
						<ul class="topGnb">
							<li class="topGnb-li">
								<a href="#n">계좌관리</a>
								<div class="depth02" style="width: 1903px; left: -482px;">
									<ul>
										<li style="height: 181px;">
											<a href="/account/accountList">조회</a>
										</li>
										<li style="height: 181px;">
											<a href="#n">이체</a>
											<ul style="padding-left: 0px;">
												<li>
													<a href="/account/accountTransfer">이체하기</a>
												</li>
												<li>
													<a href="#n">자동이체</a>
												</li>
												<li>
													<a href="#n">이체결과</a>
												</li>
											</ul>
										</li>
										<li style="height: 181px;">
											<a href="#n">계좌등록</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="topGnb-li">
								<a href="#n" class="main-menu">카드관리</a>
								<div class="depth02" style="width: 1903px; left: -482px;">
									<ul>
										<li style="height: 219px;">
											<a href="#n">카드</a>
											<ul style="padding-left: 0px;">
												<li>
													<a href="/account/cardView">사용금액조회</a>
												</li>
												<li>
													<a href="#n">납부예상금액</a>
												</li>
											</ul>
										</li>
										<li style="height: 219px;">
											<a href="/account/cardForm">카드등록</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="topGnb-li">
								<a href="/member/accountBook" class="main-menu">가계부</a>
								<!-- <div class="depth02" style="width: 1903px; left: -482px;">
									<ul>
										<li style="height: 219px;">
											<a href="#n">가계부</a>
											<ul style="padding-left: 0px;">
												<li>
													<a href="#n">일정 등록하기</a>
												</li>
												<li>
													<a href="#n">수정하기</a>
												</li>
											</ul>
										</li>
									</ul>
								</div> -->
							</li>
						</ul>	
						<div>
							<div class="bar" style="opacity: 0; left: 30px; width: 76px;"></div> <!-- left 160씩 이동 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> 