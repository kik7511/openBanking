<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">

<head>
	<title>openBanking</title>
	<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
</head>
<body>
<div id="wrap">
	<div id="header">
		<div id="CMMTPL1100000000V">
			<div class="header_new pc" style="width: 100%;">
				<div class="top">
					<div class="inner">
		            <!-- 20190417 SR-614 기업 헤더 디자인 반영 -->
						<h1 class="logo">
							<a href="javascript:goMenu('PBKMAN000000');"><img src="/resource/img/reform/layout/logo_kbank.png" alt="make money, Kbank"></a>
							<span class="client">
								<em>개인</em> <!-- 현재 -->
								<a href="https://biz.kbanknow.com" target="_blank" title="새창으로 이동">기업</a>
							</span>
						</h1>
						<div id="utill">
						<!-- 로그인 전 -->	
							<div class="login_before">
								<span class="login"><a href="javascript:goMenu('CMMLGI010000');">로그인</a></span>
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
								<a href="#n" data-menu-id="PBKMAN000000">조회 · 이체</a>
								<div class="depth02" style="width: 1474px; left: -267px;">
									<ul>
										<li style="height: 181px;">
											<a href="#n" data-menu-id="PBKINQ010000">조회</a>
										</li>
										<li style="height: 181px;">
											<a href="#n">이체</a>
											<ul>
												<li>
													<a href="#n" data-menu-id="PBKTRN010000">이체하기</a>
												</li>
												<li>
													<a href="#n" data-menu-id="PBKTRN080000">자동이체</a>
												</li>
												<li>
													<a href="#n" data-menu-id="PBKTRN090000">대량이체</a>
												</li>
												<li>
													<a href="#n" data-menu-id="PBKTRN070000">이체결과</a>
												</li>
											</ul>
										</li>
										<li style="height: 181px;"><a href="#n">퀵송금</a>
											<ul>
												<li>
													<a href="#n" data-menu-id="PBKQIC110000">서비스안내</a>
												</li>
											</ul>
										</li>
										<li class=""><a href="#n" data-menu-id="PBKMAN000000">뱅킹</a><div class="depth02" style="width: 1474px; left: -267px;"><ul><li style="height: 219px;"><a href="#n">예금 · 적금</a><ul><li><a href="#n" data-menu-id="PBKINQ020200">예금 해지</a></li><li><a href="#n" data-menu-id="PBKINQ020500">만기해지계좌 조회</a></li></ul></li><li style="height: 219px;"><a href="#n">대출</a><ul><li><a href="#n" data-menu-id="PBKINQ030200">원금/이자 관리</a></li><li><a href="#n" data-menu-id="PBKINQ030403">한도 관리</a></li><li><a href="#n" data-menu-id="PBKINQ030208">대출기간연장신청</a></li><li><a href="#n" data-menu-id="PBKINQ030400">대출세부내역</a></li><li><a href="#n" data-menu-id="PBKINQ030500">진행현황 확인 및 변경</a></li></ul></li><li style="height: 219px;"><a href="#n">카드</a><ul><li><a href="#n" data-menu-id="PBKINQ010005">카드 조회</a></li><li><a href="#n" data-menu-id="PBKINQ040301">카드 분실신고/해제</a></li><li><a href="#n" data-menu-id="PBKINQ040108">소득공제내역</a></li><li><a href="#n" data-menu-id="PBKINQ040500">해지카드 조회</a></li><li><a href="#n" data-menu-id="FPMCRD010100">카드 이용 안내</a></li></ul></li><li style="height: 219px;"><a href="#n">보험</a><ul><li><a href="#n" data-menu-id="PBKINQ060100">내 보험</a></li></ul></li><li style="height: 219px;"><a href="#n">뱅킹관리</a><ul><li><a href="#n" data-menu-id="PBKBKM010000">계좌관리</a></li><li><a href="#n" data-menu-id="PBKBKM020000">입출금통지서비스</a></li></ul></li></ul></div></li><li class=""><a href="#n" data-menu-id="FPMMAN000000">상품가입</a><div class="depth02" style="width: 1474px; left: -267px;"><ul><li style="height: 18px;"><a href="#n" data-menu-id="FPMDPT010000">예금 · 적금</a></li><li style="height: 18px;"><a href="#n" data-menu-id="FPMLON010000">대출</a></li><li style="height: 18px;"><a href="#n" data-menu-id="FPMCRD000000">카드</a></li><li style="height: 18px;"><a href="#n" data-menu-id="FPMBAC000000">보험</a></li></ul></div></li><li class=""><a href="#n" data-menu-id="CBRCSC100003">고객센터</a><div class="depth02" style="width: 1474px; left: -267px;"><ul><li style="height: 296px;"><a href="#n">고객지원</a><ul><li><a href="#n" data-menu-id="CBRCSC060200">자주하는 문의</a></li><li><a href="#n" data-menu-id="CBRCSC060700">내 문의내역</a></li><li><a href="#n" data-menu-id="CBRCSC060800">증명서 발급</a></li><li><a href="#n" data-menu-id="CBRCSC030200">이름/주민등록번호 변경</a></li><li><a href="#n" data-menu-id="CBRCSC100100">서식 다운로드</a></li><li><a href="#n" data-menu-id="CBRCSC040000">비과세 증빙서류 제출</a></li><li><a href="#n" data-menu-id="CBRCSC060600">원격지원</a></li></ul></li><li style="height: 296px;"><a href="#n">신고 및 해제</a><ul><li><a href="#n" data-menu-id="CBRCSC080000">사고 신고/해제</a></li><li><a href="#n" data-menu-id="CBRCSC110400">통장한도 풀기</a></li></ul></li><li style="height: 296px;"><a href="#n">이용안내</a><ul><li><a href="#n" data-menu-id="CBRCSC110200">이용시간 안내</a></li><li><a href="#n" data-menu-id="CBRCSC110204">수수료 안내</a></li><li><a href="#n" data-menu-id="CBRCSC110208">자동화기기(ATM) 안내</a></li><li><a href="#n" data-menu-id="CBRCSC110004">금리 안내</a></li><li><a href="#n" data-menu-id="CBRCSC110209">금리보장 서비스 안내</a></li><li><a href="#n" data-menu-id="CBRCSC110500">회원가입 안내</a></li></ul></li><li style="height: 296px;"><a href="#n">긴급서비스</a><ul><li><a href="#n" data-menu-id="CBRCSC050000">긴급이체</a></li><li><a href="#n" data-menu-id="CBRCSC020000">고액이체</a></li></ul></li><li style="height: 296px;"><a href="#n">상품・약관 설명서 및 공시</a><ul><li><a href="#n" data-menu-id="CBRCSC100200">상품약관</a></li><li><a href="#n" data-menu-id="CBRCSC100800">상품설명서</a></li><li><a href="#n" data-menu-id="CBRCSC100301">상품공시실</a></li><li><a href="#n" data-menu-id="CBRCSC100400">보호금융상품등록부</a></li></ul></li><li style="height: 296px;"><a href="#n">금융고객 보호</a><ul><li><a href="#n" data-menu-id="CBRCSC070000">금융소비자보호</a></li></ul></li></ul></div></li><li class=""><a href="#n" data-menu-id="CMMCMC040000">인증센터</a><div class="depth02" style="width: 1474px; left: -267px;"><ul><li style="height: 352px;"><a href="#n" class="allMenuConTit">OTP인증센터</a><ul><li><a href="#n" data-menu-id="CMMCMC030001">OTP인증센터 안내</a></li><li><a href="#n" data-menu-id="CMMCMC030700">OTP 관리</a></li><li><a href="#n" data-menu-id="CMMCMC030400">OTP 발급신청</a></li><li><a href="#n" data-menu-id="CMMCMC030300">OTP 등록</a></li></ul></li><li style="height: 352px;"><a href="#n" class="allMenuConTit">공동인증서</a><ul><li><a href="#n" data-menu-id="CMMCMC010100">공동인증서 안내</a></li><li><a href="#n" data-menu-id="CMMCMC010200">공동인증서 발급/재발급</a></li><li><a href="#n" data-menu-id="CMMCMC010300">타행/타기관 인증서 등록/해제</a></li><li><a href="#n" data-menu-id="CMMCMC010400">PC-&gt;휴대폰 인증서 복사</a></li><li><a href="#n" data-menu-id="CMMCMC010500">휴대폰-&gt;PC 인증서 복사</a></li><li><a href="#n" data-menu-id="CMMCMC010600">인증서 관리</a></li><li><a href="#n" data-menu-id="CMMCMC010604">공동인증서 폐기</a></li><li><a href="#n" data-menu-id="CMMCMC010800">휴대폰 인증서 서비스</a></li></ul></li><li style="height: 352px;"><a href="#n" class="allMenuConTit">보안센터</a><ul><li><a href="#n" data-menu-id="CMMSEC010000">보안센터 안내</a></li><li><a href="#n" data-menu-id="CMMSEC040000">비밀번호 관리</a></li><li><a href="#n" data-menu-id="CMMSEC020000">전자금융사기예방 서비스</a></li><li><a href="#n" data-menu-id="CMMSEC030000">보안 서비스</a></li><li><a href="#n" data-menu-id="CMMSEC050000">보안 게시판</a></li><li><a href="#n" data-menu-id="CMMSEC070000">금융사기 관련공시</a></li></ul></li></ul></div></li></ul>
 						<div class="bar" style="opacity: 0; left: 30px; width: 76px;"></div><!--20190417 SR-614 추가 -->
			<div class="cmm_search iconSearch">
				<a href="#n" role="button"><img src="/resource/img/cmm/head_search.gif" alt="검색"></a>
			</div>
			<!--2017-08-01 전체메뉴 아이콘 추가-->
			<div class="cmm_allMenu">
				<a href="#n" role="button">전체메뉴</a>
			</div>

			<!-- 전체메뉴 영역 -->
			<div class="allMenuArea" style="">
				<div class="allMenuList">
					<ul>
						<li class=""><a href="#n"><em>조회 · 이체</em></a></li>
						<li><a href="#n"><em>뱅킹</em></a></li>
						<li><a href="#n"><em>상품가입</em></a></li>
						<li><a href="#n"><em>고객센터</em></a></li>
						<li><a href="#n"><em>인증센터</em></a></li>
						<li><a href="#n"><em>은행소개</em></a></li>
					</ul>
				</div>
				<div class="allMenuCon"><div class="allMenuBox"><div id="MenuList01" class="menuListBox" title="조회 · 이체"><h2 class="allMenuTit">조회 · 이체</h2><ul class="depthmenuWrap"><li><a class="allMenuConTit" href="#n" data-menu-id="PBKINQ010000">조회</a></li><li><a href="#n" class="allMenuConTit">이체</a><ul><li><a href="#n" data-menu-id="PBKTRN010000">이체하기</a></li><li><a href="#n" data-menu-id="PBKTRN080000">자동이체</a></li><li><a href="#n" data-menu-id="PBKTRN090000">대량이체</a></li><li><a href="#n" data-menu-id="PBKTRN070000">이체결과</a></li></ul></li><li><a href="#n" class="allMenuConTit">퀵송금</a><ul><li><a href="#n" data-menu-id="PBKQIC110000">서비스안내</a></li></ul></li><li><a class="allMenuConTit" href="#n" data-menu-id="PBKFXR000000">해외송금</a></li></ul><ul class="depthmenuWrap"><li><a href="#n" class="allMenuConTit">간편결제</a><ul><li><a href="#n" data-menu-id="EXPIFU050101">결제내역</a></li></ul></li><li><a href="#n" class="allMenuConTit">공과금</a><ul><li><a href="#n" data-menu-id="PBKPBC010000">나의공과금</a></li><li><a href="#n" data-menu-id="PBKPBC020000">지로/생활요금</a></li><li><a href="#n" data-menu-id="PBKPBC030000">세금</a></li><li><a href="#n" data-menu-id="PBKPBC040000">연금/보험료</a></li></ul></li><li><a class="allMenuConTit" href="#n" data-menu-id="PBKAMW000000">계좌이동/통합조회</a></li><li><a href="#n" class="allMenuConTit">자동화기기</a><ul><li><a href="#n" data-menu-id="PBKWIT000000">무카드거래서비스</a></li></ul></li></ul></div><div id="MenuList02" class="menuListBox" title="뱅킹"><h2 class="allMenuTit">뱅킹</h2><ul class="depthmenuWrap"><li><a href="#n" class="allMenuConTit">예금 · 적금</a><ul><li><a href="#n" data-menu-id="PBKINQ020200">예금 해지</a></li><li><a href="#n" data-menu-id="PBKINQ020500">만기해지계좌 조회</a></li></ul></li><li><a href="#n" class="allMenuConTit">대출</a><ul><li><a href="#n" data-menu-id="PBKINQ030200">원금/이자 관리</a></li><li><a href="#n" data-menu-id="PBKINQ030403">한도 관리</a></li><li><a href="#n" data-menu-id="PBKINQ030208">대출기간연장신청</a></li><li><a href="#n" data-menu-id="PBKINQ030400">대출세부내역</a></li><li><a href="#n" data-menu-id="PBKINQ030500">진행현황 확인 및 변경</a></li></ul></li><li><a href="#n" class="allMenuConTit">카드</a><ul><li><a href="#n" data-menu-id="PBKINQ010005">카드 조회</a></li><li><a href="#n" data-menu-id="PBKINQ040301">카드 분실신고/해제</a></li><li><a href="#n" data-menu-id="PBKINQ040108">소득공제내역</a></li><li><a href="#n" data-menu-id="PBKINQ040500">해지카드 조회</a></li><li><a href="#n" data-menu-id="FPMCRD010100">카드 이용 안내</a></li></ul></li><li><a href="#n" class="allMenuConTit">보험</a><ul><li><a href="#n" data-menu-id="PBKINQ060100">내 보험</a></li></ul></li></ul><ul class="depthmenuWrap"><li><a href="#n" class="allMenuConTit">뱅킹관리</a><ul><li><a href="#n" data-menu-id="PBKBKM010000">계좌관리</a></li><li><a href="#n" data-menu-id="PBKBKM020000">입출금통지서비스</a></li></ul></li></ul></div><div id="MenuList03" class="menuListBox" title="상품가입"><h2 class="allMenuTit">상품가입</h2><ul class="depthmenuWrap"><li><a class="allMenuConTit" href="#n" data-menu-id="FPMDPT010000">예금 · 적금</a></li><li><a class="allMenuConTit" href="#n" data-menu-id="FPMLON010000">대출</a></li><li><a class="allMenuConTit" href="#n" data-menu-id="FPMCRD000000">카드</a></li><li><a class="allMenuConTit" href="#n" data-menu-id="FPMBAC000000">보험</a></li></ul></div><div id="MenuList04" class="menuListBox" title="고객센터"><h2 class="allMenuTit">고객센터</h2><ul class="depthmenuWrap"><li><a href="#n" class="allMenuConTit">고객지원</a><ul><li><a href="#n" data-menu-id="CBRCSC060200">자주하는 문의</a></li><li><a href="#n" data-menu-id="CBRCSC060700">내 문의내역</a></li><li><a href="#n" data-menu-id="CBRCSC060800">증명서 발급</a></li><li><a href="#n" data-menu-id="CBRCSC030200">이름/주민등록번호 변경</a></li><li><a href="#n" data-menu-id="CBRCSC100100">서식 다운로드</a></li><li><a href="#n" data-menu-id="CBRCSC040000">비과세 증빙서류 제출</a></li><li><a href="#n" data-menu-id="CBRCSC060600">원격지원</a></li></ul></li><li><a href="#n" class="allMenuConTit">신고 및 해제</a><ul><li><a href="#n" data-menu-id="CBRCSC080000">사고 신고/해제</a></li><li><a href="#n" data-menu-id="CBRCSC110400">통장한도 풀기</a></li></ul></li><li><a href="#n" class="allMenuConTit">이용안내</a><ul><li><a href="#n" data-menu-id="CBRCSC110200">이용시간 안내</a></li><li><a href="#n" data-menu-id="CBRCSC110204">수수료 안내</a></li><li><a href="#n" data-menu-id="CBRCSC110208">자동화기기(ATM) 안내</a></li><li><a href="#n" data-menu-id="CBRCSC110004">금리 안내</a></li><li><a href="#n" data-menu-id="CBRCSC110209">금리보장 서비스 안내</a></li><li><a href="#n" data-menu-id="CBRCSC110500">회원가입 안내</a></li></ul></li><li><a href="#n" class="allMenuConTit">긴급서비스</a><ul><li><a href="#n" data-menu-id="CBRCSC050000">긴급이체</a></li><li><a href="#n" data-menu-id="CBRCSC020000">고액이체</a></li></ul></li></ul><ul class="depthmenuWrap"><li><a href="#n" class="allMenuConTit">상품・약관 설명서 및 공시</a><ul><li><a href="#n" data-menu-id="CBRCSC100200">상품약관</a></li><li><a href="#n" data-menu-id="CBRCSC100800">상품설명서</a></li><li><a href="#n" data-menu-id="CBRCSC100301">상품공시실</a></li><li><a href="#n" data-menu-id="CBRCSC100400">보호금융상품등록부</a></li></ul></li><li><a href="#n" class="allMenuConTit">금융고객 보호</a><ul><li><a href="#n" data-menu-id="CBRCSC070000">금융소비자보호</a></li></ul></li></ul></div><div id="MenuList05" class="menuListBox" title="인증센터"><h2 class="allMenuTit">인증센터</h2><ul class="depthmenuWrap"><li><a href="#n" class="allMenuConTit">OTP인증센터</a><ul><li><a href="#n" data-menu-id="CMMCMC030001">OTP인증센터 안내</a></li><li><a href="#n" data-menu-id="CMMCMC030700">OTP 관리</a></li><li><a href="#n" data-menu-id="CMMCMC030400">OTP 발급신청</a></li><li><a href="#n" data-menu-id="CMMCMC030300">OTP 등록</a></li></ul></li><li><a href="#n" class="allMenuConTit">공동인증서</a><ul><li><a href="#n" data-menu-id="CMMCMC010100">공동인증서 안내</a></li><li><a href="#n" data-menu-id="CMMCMC010200">공동인증서 발급/재발급</a></li><li><a href="#n" data-menu-id="CMMCMC010300">타행/타기관 인증서 등록/해제</a></li><li><a href="#n" data-menu-id="CMMCMC010400">PC-&gt;휴대폰 인증서 복사</a></li><li><a href="#n" data-menu-id="CMMCMC010500">휴대폰-&gt;PC 인증서 복사</a></li><li><a href="#n" data-menu-id="CMMCMC010600">인증서 관리</a></li><li><a href="#n" data-menu-id="CMMCMC010604">공동인증서 폐기</a></li><li><a href="#n" data-menu-id="CMMCMC010800">휴대폰 인증서 서비스</a></li></ul></li><li><a href="#n" class="allMenuConTit">보안센터</a><ul><li><a href="#n" data-menu-id="CMMSEC010000">보안센터 안내</a></li><li><a href="#n" data-menu-id="CMMSEC040000">비밀번호 관리</a></li><li><a href="#n" data-menu-id="CMMSEC020000">전자금융사기예방 서비스</a></li><li><a href="#n" data-menu-id="CMMSEC030000">보안 서비스</a></li><li><a href="#n" data-menu-id="CMMSEC050000">보안 게시판</a></li><li><a href="#n" data-menu-id="CMMSEC070000">금융사기 관련공시</a></li></ul></li></ul></div><div id="MenuList06" class="menuListBox" title="은행소개"><h2 class="allMenuTit">은행소개</h2><ul class="depthmenuWrap"><li><a href="#n" class="allMenuConTit">케이뱅크</a><ul><li><a href="#n" data-menu-id="HOMBKI030000">브랜드</a></li><li><a href="#n" data-menu-id="HOMBKI010600">주주사 소개</a></li><li><a href="#n" data-menu-id="HOMBKI010200">윤리강령</a></li></ul></li><li><a href="#n" class="allMenuConTit">투자정보</a><ul><li><a href="#n" data-menu-id="HOMBKI020101">경영공시</a></li><li><a href="#n" data-menu-id="HOMBKI020102">기타공시</a></li><li><a href="#n" data-menu-id="HOMBKI020303">관리규정</a></li><li><a href="#n" data-menu-id="HOMBKI020402">전자공시</a></li><li><a href="#n" data-menu-id="HOMBKI020401">재무제표</a></li><li><a href="#n" data-menu-id="HOMBKI020201">실적발표자료</a></li><li><a href="#n" data-menu-id="HOMBKI020203">Annual Report</a></li></ul></li><li><a href="#n" class="allMenuConTit">인재채용</a><ul><li><a href="#n" data-menu-id="HOMBKI040300">채용공고</a></li></ul></li><li><a href="#n" class="allMenuConTit">새소식</a><ul><li><a href="#n" data-menu-id="HOMBKI030703">공지사항</a></li><li><a href="#n" data-menu-id="HOMBKI030300">보도자료</a></li><li><a href="#n" data-menu-id="HOMBKI030200">사업공고</a></li></ul></li></ul></div></div></div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>

</body>
</html>