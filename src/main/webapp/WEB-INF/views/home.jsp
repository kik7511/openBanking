<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">

<head>
	<title>openBanking</title>
	<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/kbankform.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
	
	<style type="text/css">
	  .layerTooltip {position:relative; display:inline-block; margin:0 !important;}
	  .layerTooltip .tip {display:none; position:absolute; top:-3px; left:0; width:100px; margin-left:0 !important; padding:5px; color:#000; font-size:10px; background-color:rgba(0, 0, 0, 0);}
	  .layerTooltip.on .tip {display:block;}
	  #container_inner {width:100% !important;}
	  #container_inner #content {width:100% !important;}
	  #content, .content {float:none; width:100% !important;}
	  #content .sub_cont_wrap {width:940px; margin:0 auto;}
	  
 	</style>
</head>
<body>
<div id="wrap">
	<div id="header">
		<div id="">
			<div class="header_new pc" style="width: 100%;">
				<div class="top">
					<div class="inner">
		            <!-- 20190417 SR-614 기업 헤더 디자인 반영 -->
						<h1 class="logo">
							<a href=""><img src="/resources/img/logo_kbank.png" alt="make money, Kbank"></a>
						</h1>
						<div id="utill">
						<!-- 로그인 전 -->	
							<div class="login_before">
								<span class="login"><a href="">로그인</a></span>
							</div>
						<!-- //로그인 전 -->
			
           				</div>
						<!-- //20190417 SR-614 기업 헤더 디자인 반영 -->
					</div>
				</div>
				<div class="gnb">
					<div class="inner">
						<ul class="topGnb">
							<li class="">
								<a href="#n">계좌관리</a>
								<div class="depth02" style="width: 1474px; left: -267px;">
									<ul>
										<li style="height: 181px;">
											<a href="#n">조회</a>
										</li>
										<li style="height: 181px;">
											<a href="#n">이체</a>
											<ul>
												<li>
													<a href="#n">이체하기</a>
												</li>
												<li>
													<a href="#n">자동이체</a>
												</li>
												<li>
													<a href="#n">대량이체</a>
												</li>
												<li>
													<a href="#n">이체결과</a>
												</li>
											</ul>
										</li>
										<li style="height: 181px;"><a href="#n">퀵송금</a>
											<ul>
												<li>
													<a href="#n">서비스안내</a>
												</li>
											</ul>
										</li>
										<li style="height: 181px;">
											<a href="#n">해외송금</a>
										</li>
										<li style="height: 181px;">
											<a href="#n">간편결제</a>
											<ul>
												<li>
													<a href="#n">결제내역</a>
												</li>
											</ul>
										</li>
									</ul>
								</div>
							</li>
							<li class="">
								<a href="#n">카드관리</a>
								<div class="depth02" style="width: 1474px; left: -267px;">
									<ul>
										<li style="height: 219px;">
											<a href="#n">예금 · 적금</a>
											<ul>
												<li>
													<a href="#n">예금 해지</a>
												</li>
												<li>
													<a href="#n">만기해지계좌 조회</a>
												</li>
											</ul>
										</li>
										<li style="height: 219px;">
											<a href="#n">대출</a>
											<ul>
												<li>
													<a href="#n">원금/이자 관리</a>
												</li>
												<li>
													<a href="#n">한도 관리</a>
												</li>
											</ul>
										</li>
									</ul>
								</div>
							</li>
							<li class="">
								<a href="#n">가계부</a>
								<div class="depth02" style="width: 1474px; left: -267px;">
									<ul>
										<li style="height: 219px;">
											<a href="#n">예금 · 적금</a>
											<ul>
												<li>
													<a href="#n">예금 해지</a>
												</li>
												<li>
													<a href="#n">만기해지계좌 조회</a>
												</li>
											</ul>
										</li>
										<li style="height: 219px;">
											<a href="#n">대출</a>
											<ul>
												<li>
													<a href="#n">원금/이자 관리</a>
												</li>
												<li>
													<a href="#n">한도 관리</a>
												</li>
											</ul>
										</li>
									</ul>
								</div>
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
	
	<div id = "container" style="width: 100%">
		<div id = "container_inner">
			<div id = "content" style="width: 940px;">
				<div class="topSwiperBanner">
					<ul>
						<li>
							<a class="banner">
								<img src="/resources/img/220812_pc_cs_220718 (1).png">
							</a>
						</li>
					</ul>
				</div>
				<div class="quickMenuArticle">
				<ul class="listQuickMenu"> 
					<li><a href="#n" id="btnSearchAll"><span class="icoSearch">조회하기</span></a></li>
					<li><a href="#n" id="btnSearchEche"><span class="icoTransfer">이체하기</span></a></li>
					<li><a href="#n" id="btnSearchDae"><span class="icoLoan">대출</span></a></li>
					<li><a href="#n" id="btnSearchBank"><span class="icoBank">뱅킹관리</span></a></li>
				</ul>
				<div class="bg">&nbsp;</div>
			</div>
			</div>
		</div>
	</div>
	
	<div id="footer" class="dark">
		<div id="CMMTPL0300000000V">
			<div id="ContentsDim"></div> 
			<div>
				<div class="footer pc dark" style="width: 100%;">
					<div>
						<!-- <p class="cs_center"><strong class="txtHide txtHelp">24·365 고객센터</strong><span>은행 1522-1000</span><span class="line">카드 1522-1155</span><span class="line overCs"><em>해외 82-2-3778-9111</em></span></p> -->
						<!-- 2017-09-11 -->
						<div class="cs_center">
							<h2>고객센터</h2> <!--  <em>24·365</em> 삭제  CF 33825 -->
							<ul>
								<li>은행 1522-1000</li>
								<li>카드 1522-1155</li>
								<li class="etc">해외 82-2-3778-9111</li>
							</ul>
						</div>
						<!-- //2017-09-11 -->
						
						<!-- 2017-04-06 추가 -->
						<ul class="list_sns">
							<li><a href="" target="_blank" title="케이뱅크 페이스북 새창으로 열기"><img src="/resources/img/sns_facebook_p.png" alt="페이스북"></a></li>
							<li><a href="" target="_blank" title="케이뱅크 블로그 새창으로 열기"><img src="/resources/img/sns_blog_p.png" alt="블로그"></a></li>
							<li><a href="" target="_blank" title="케이뱅크 유튜브 새창으로 열기"><img src="/resources/img/sns_youtube_p.png" alt="유튜브"></a></li>
						</ul>
						<!-- //2017-04-06 추가 -->			
						<ul>
							<li><a>은행소개</a></li>
							<li><a>개인정보처리방침</a></li>
							<li><a>신용정보활용체제</a></li>
							<li><a>약관자료실</a></li>
							<li><a>상품공시실</a></li>
							<li><a>보호금융상품등록부</a></li>
							<li><a>경영공시실</a></li>
							<li><a>사고신고</a></li>
							<li><a>전자민원</a></li>
							<li><a>금융소비자보호</a></li>
						</ul>
						<!-- 2016-10-26 수정 끝 -->
						<div class="layerTooltip">
							<p>Copyright Kbank. All rights reserved.</p><!-- 2016-12-27 텍스트 수정 -->
							<div class="tip">INB2201 - 운영</div>
						</div>
						<ul class="markAwardItems">
							<li class="markAwardItem markIsmsp"> <!-- 20210615 SR-1451 수정 -->
								<div class="maItemWrap">
									<i class="maIconImg"></i>
									<p class="maContTxt">인증범위: 인터넷뱅킹 및 스마트폰뱅킹 서비스<br>유효기간: 2021.05.31~2024.05.30</p> <!-- 20210615 SR-1451 수정 -->
								</div>
							</li>
						</ul>
					</div>
				</div><!-- //footer -->
			</div><!-- //#footer -->
			<form name="menu_form" id="menu_form" method="post" action="">
				<input type="hidden" name="selectmenuid" id="selectmenuid">
				<input type="hidden" name="language" id="language">
				<!-- <input type="hidden" name="isAutoLogout" id="isAutoLogout" /> -->
				<!-- <input type="hidden" name="ib20.persistent.lang.code" id="ib20_persistent_lang_code" /> -->
			</form>
		</div>
	</div>
</div>
</body>
</html>