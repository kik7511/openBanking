<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">
	<head>
		<title>openBanking</title>
		<%@include file = "../../../infra/common/link.jsp" %>	
		<style type="text/css">
			#wrap {width:900px; margin: auto; margin-bottom: 30px;}
			.layerTooltip {position:relative; display:inline-block; margin:0 !important;}
			.layerTooltip .tip {display:none; position:absolute; top:-3px; left:0; width:100px; margin-left:0 !important; padding:5px; color:#000; font-size:10px; background-color:rgba(0, 0, 0, 0);}
			.layerTooltip.on .tip {display:block;}
			#container_inner {width:100% !important;}
			#container_inner #content {width:100% !important;}
			#content, .content {float:none; width:100% !important;}
			#content .sub_cont_wrap {width:940px; margin:0 auto;}
			.underbar {border-bottom: 2px solid black; padding: 5px; width: 190px; padding-bottom: 10px;}
			.blank {height: 30px; background-color: white;}
			.account{padding: 5px; width: 100%; width: 850px;}
			.account_context {border-left: 5px solid yellow; margin-top: 15px; padding-left: 20px; }
		</style>
	</head>
	<body>
			<%@include file = "../../../infra/common/header.jsp" %>
				<div id="wrap">
				<div class="blank"></div>
				<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
      <span class="fs-5 fw-semibold">Collapsible</span>
    </a>
    <ul class="list-unstyled ps-0">
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
          Home
        </button>
        <div class="collapse" id="home-collapse" style="">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Updates</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Reports</a></li>
          </ul>
        </div>
      </li>
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
          Dashboard
        </button>
        <div class="collapse" id="dashboard-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
          </ul>
        </div>
      </li>
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
          Orders
        </button>
        <div class="collapse" id="orders-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">New</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Processed</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Shipped</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Returned</a></li>
          </ul>
        </div>
      </li>
      <li class="border-top my-3"></li>
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
          Account
        </button>
        <div class="collapse" id="account-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">New...</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Profile</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Settings</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Sign out</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
				<div class="account">
					<h4 style="padding-top: 2px;">조회</h4>
					<div class="account_context">
						<div style="text-align: right;"><span style="font-size: 7px;">관리</span></div>
						<div style="font-size: 11px; font: bold;">MY 입출금통장</div>
						<div style="font-size: 7px; color: gray;">100-133-242800</div>
						<div>
							<span>0</span>
							<span>원</span>
						</div>
						<div>
							<button>이체하기</button>
						</div>
					</div>
					<div>
						<button></button>
					</div>
					<div>
						<span>3개월 전체 최신순</span>
					</div>
					<div>
						<div>
							<span>09.24</span>
							<span>05.48</span>
						</div>
						<div>
							<span>이자</span>
							<span>+0원</span>
						</div>
						<div>
							<span>이자</span>
							<span>+0원</span>
						</div>
					</div>
				</div>	
				</div>
			<%@include file = "../../../infra/common/footer.jsp" %>	
	</body>
</html>