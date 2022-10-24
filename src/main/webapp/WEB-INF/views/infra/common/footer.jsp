<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script>
	$('a:contains("계좌관리"), .depth02').mouseover(function(){
		$(this).parent('li').addClass('on');
	});
	$('a:contains("계좌관리"), .depth02').mouseout(function(){ 
		$(this).parent('li').removeClass('on');
	});
	
	$('a:contains("카드관리"), .depth02').mouseover(function(){
		$(this).parent('li').addClass('on');
	});
	$('a:contains("카드관리"), .depth02').mouseout(function(){ 
		$(this).parent('li').removeClass('on');
	});
		
	$('a:contains("가계부"), .depth02').mouseover(function(){
		$(this).parent('li').addClass('on');
	});
	$('a:contains("가계부"), .depth02').mouseout(function(){ 
		$(this).parent('li').removeClass('on');
	});
	
	
	</script>