<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">

<head>
	<title>openBanking</title>
	<%@include file = "infra/common/link.jsp" %>	
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
	<%@include file = "infra/common/header.jsp" %>	
	<div id = "container" style="width: 100%">
		<div id = "container_inner">
			<div id = "content" style="width: 940px;">
				<div>
					<div class="content login_pc">
						<div class="comCont">
							<div class="topSwiperBanner">
								<div class="banner_wrap light_slider">
									<div class="lSSlideOuter ">
										<ul>
											<li>
												<a class="banner">
													<img src="/resources/img/220812_pc_cs_220718 (1).png">
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
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
		</div>
	</div>
	
	<%@include file = "infra/common/footer.jsp" %>	
</div>
</body>
</html>