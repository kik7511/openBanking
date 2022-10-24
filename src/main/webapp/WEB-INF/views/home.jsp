<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">

<head>
	<title>openBanking</title>
	<%@include file = "infra/common/link.jsp" %>	
	<%@include file = "infra/common/font.jsp" %>
	<style type="text/css">
		.layerTooltip {position:relative; display:inline-block; margin:0 !important;}
		.layerTooltip .tip {display:none; position:absolute; top:-3px; left:0; width:100px; margin-left:0 !important; padding:5px; color:#000; font-size:10px; background-color:rgba(0, 0, 0, 0);}
		.layerTooltip.on .tip {display:block;}
		#container_inner {width:100% !important;}
		#container_inner #content {width:100% !important;}
		#content, .content {float:none; width:100% !important;}
		#content .sub_cont_wrap {width:940px; margin:0 auto;}
		.login_pc{height: 460px;}
		#slide>ul>li{position: absolute;}
		li{left: 0px}
		.banner-img{height: 460px; width: 1903px;}
	</style>
	<link rel="stylesheet" type="text/css" href="/resources/css/home.css">
</head>
<body>
<%@include file = "infra/common/header.jsp" %>	
<div id="wrap">
	<div id = "container" style="width: 100%">
		<div id = "container_inner">
			<div id = "content" style="width: 940px;">
				<div>
					<div class="content login_pc">
						<!-- <a class="banner">
							<img src="/resources/img/bg1.jpg" id="bannerImage" style="height: 460px;" >
						</a> -->
						
						<div id="slide" class="content login_pc">
							<ul>
								<li><a class="banner"><img class="banner-img" src="/resources/img/bg1.jpg" style="height: 460px; width: 1903px;"></a></li>
								<li><a class="banner"><img class="banner-img" src="/resources/img/bg2.jpg" style="height: 460px; width: 1903px;"></a></li>
	               			</ul>
						</div>
					</div>
						<div class="quickMenuArticle">
						<ul class="listQuickMenu"> 
							<li><a href="/account/accountList" id="btnSearchAll"><span class="icoSearch">조회하기</span></a></li>
							<li><a href="/account/accountTransfer" id="btnSearchEche"><span class="icoTransfer">이체하기</span></a></li>
							<li><a href="/member/accountBook" id="btnSearchBank"><span class="icoBank">가계부관리</span></a></li>
						</ul>
						<div class="bg">&nbsp;</div>
				</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file = "infra/common/footer.jsp" %>	
	
	<script>
		$(document).ready(function(){
			$('#slide>ul>li').hide();
			$('#slide>ul>li:first-child').show();

			setInterval(function(){
			    $('#slide>ul>li:first-child').fadeOut()
			    .next().fadeIn().end(1000)
			    .appendTo('#slide>ul');
			}, 5000);
		});
	</script>
</div>
</body>
</html>