<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- INCLUDE head.jsp -->
<%@ include file="/WEB-INF/views/includes/head.jsp"%>

</head>
<body>
	<div class="bg-image-main"></div>

	<!-- container-fluid start -->
	<!-- 	<div class="container-fluid bg-image-main"> -->
	<div class="container-fluid">

		<!-- INCLUDE nav_top.jsp -->
		<%@ include file="/WEB-INF/views/includes/nav_top.jsp"%>

		<!-- Intro_001 start-->
		<div class="row">
			<div class="text-center text-white text-nowrap">
				<h1>
					<dfn>안녕하세요. 큽럽매니져 입니다</dfn>
				</h1>
			</div>
			<div>
				<div
					class="panel panel-default bg-none border-none text-center text-white">
					<div class="panel-body">
						<h2>모든 스포츠가 그러하듯 축구의 또다른 묘미는 '기록'입니다.<br> 클럽매니져는 여러분의 축구팀의 기록을 쉽게 기록하고
						쉽게 볼 수 있도록 도와줍니다</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- Intro_001 end-->
	<hr>
		<!-- Intro_002 start-->
		<div class="row">
			<div class="text-center text-white text-nowrap">
				<h1>
					<dfn>우리 서비스는</dfn>
				</h1>
			</div>
			<div>
				<div
					class="panel panel-default bg-none border-none text-center text-white">
					<div class="panel-body">
						<ul class="list-unstyled">
							<li><hr class="divider">
								<h2>경기 일정을 관리할 수 있습니다</h2>
								<ul class="list-unstyled">
									<li><h3>일정을 등록하면 해당 일정에 대한 참석 여부 투표가 자동으로 등록됩니다.</h3></li>
									<li><h3>일정 변동시 수정 가능하며 일정의 진행상태를 한번에 볼수 있습니다.</h3></li>
								</ul>
							</li>
							<li><hr class="divider">
								<h2>구단의 기록을 관리할 수 있습니다</h2>
								<ul class="list-unstyled">
									<li><h3>확정된 경기에 대해 라이브 보드 기능을 통해 실시간으로 기록(득점,실점,도움,선방,코멘트)이 가능합니다.</h3></li>
									<li><h3>경기별 기록 진행상태를 확인할 수 있습니다.</h3></li>
									<li><h3>기록이 완료된 경기 기준 구단의 통계치(총경기, 승률, 평균 득점, 평균 실점)를 볼수 있습니다.</h3></li>
									<li><h3>개인의 분야(활동점수, MoM, 득점, 도움, 선방)별 조회 및 세부 기록을 조회할 수 있습니다.</h3></li>
								</ul>
							</li>
							<li><hr class="divider">
								<h2>자동으로 등록되는 투표를 통해 손쉽게 관리할 수 있습니다</h2>
								<ul class="list-unstyled">
									<li><h3>경기일정이 등록되면 자동으로 참석여부 투표가 생성됩니다. 구단주는 투표 종료 시간 조정이 가능합니다.</h3></li>
									<li><h3>실시간 투표 진행률 및 현황을 확인할 수 있습니다.</h3></li>
									<li><h3>경기가 종료되고 기록이 완료되면 경기 종료시간 기준 6시간 내로 Man Of The Match 투표가 가능합니다.</h3></li>
									<li><h3>MoM 투표는 해당 경기 참석자만 가능하며 투표 종료후 자동 최다 득표자가 경기 기록에 자동으로 저장됩니다.</h3></li>
								</ul>
							</li>
							<li><hr class="divider">
								<h2>자유게시판을 통해 팀원과 소통이 가능합니다</h2>
								<ul class="list-unstyled">
									<li><h3>해당 구단별 게시판이 생성되며 회원은 본인 구단 게시판에 글 작성/수정/삭제가 가능합니다.</h3></li>
									<li><h3>게시물 별 댓글 기능을 제공합니다.</h3></li>
									<li><h3>게시글 작성시 첨부파일 첨부 및 수정/삭제가 가능하며 이미지 사진은 자동으로 미리보기 지원됩니다.</h3></li>
									<li><h3>구단주 및 구단 매니져는 특정글의 상단 고정 기능을 설정할 수 있습니다.</h3></li>
								</ul>
							</li>
							<li><hr class="divider">
								<h2>선수단 명단을 한번에 확인하고 권한을 관리할 수 있습니다</h2>
								<ul class="list-unstyled">
									<li><h3>해당 구단의 등록된 선수와 각 개인의 권한을 확인할 수 있습니다.</h3></li>
									<li><h3>구단주는 매니져, 일반사용자로 권한을 부여할 수 있으며 구단주 권한 위임시 구단주는 매니져로 전환됩니다.</h3></li>
									<li><h3>구단주는 특정 선수를 방출할 수 있습니다.</h3></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Intro_002 end-->

	</div>
	<!-- container-fluid end -->

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>