<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- top-bar start -->
<nav class="navbar navbar-default" id="top">
	<div class="container-fluid bg-gray">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/main"><img class="main-logo"
				src="/resources/img/logo.png"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right nav-pills">
			
				<!-- if not login start-->			
				<li><a href="/intro">서비스 소개</a></li>
				<!-- if not login end-->
				
				<!-- if login as Admin start-->
				<li><a href="/admin/announcements_list">공지 사항</a></li>
				<li><a href="/admin/clubs_list">구단 관리</a></li>
				<!-- if login as Admin end-->
				
				<!-- if login start-->
				<li><a href="/schedule/list">경기 일정</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">기록실<span class="badge badge-notification pull-right">&nbsp;</span> <span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="/record/club_record">구단 기록<span class="badge badge-notification pull-right">&nbsp;</span></a></li>
						<li><a href="/record/personal_record">개인 기록</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">전술 <span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="/tactics/liveboard_list">라이브 보드</a></li>
						<li><a href="/tactics/lineup_list">라인업</a></li>
					</ul></li>
				<li><a href="/freeboard/list">자유게시판</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">투표<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="/poll/participate_list">참석 여부</a></li>
						<li><a href="/poll/mom">MoM</a></li>
					</ul></li>
				<li><a href="/club_members">선수단</a></li>	
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"><img class="main-logo"
				src="/resources/img/profile.png">
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#" data-toggle="modal" data-target="#logout">로그아웃</a></li>
						<li><a href="#" data-toggle="modal" data-target="#pInfoMod">개인정보수정</a></li>
						
						<li><a href="#" data-toggle="modal" data-target="#join">회원
										가입</a></li>
								<li><a href="#" data-toggle="modal" data-target="#login">로그인</a></li>
								
					</ul></li>
				<!-- if login end-->
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<!-- top-bar end -->

<button type="button" class="btn btn-default top"
	onclick="location.href='#top'">
	<span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
</button>


<%@ include file="/WEB-INF/views/includes/clientInfo.jsp" %>

