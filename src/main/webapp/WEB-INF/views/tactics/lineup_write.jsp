<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라인업(입력)</title>

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
		<!-- Container Main start-->
		<div class="container-main">
			<!-- Line up start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>라인업</dfn>
					</h1>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<div>
						VS<span class="tab-space-1 large-font">222FC</span>
					</div>
					<div>
						<span>2019-12-11 19:00</span><span class="tab-space-1">백석구장</span>
					</div>
				</div>

				<!-- Tactics Write  start -->
				<div class="col-xs-12 col-sm-12 col-md-12 enter-row-1">
					<div role="tabpanel">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#A"
								role="tab" data-toggle="tab">PLAN_A</a></li>
							<li role="presentation"><a href="#B" role="tab"
								data-toggle="tab">PLAN_B</a></li>
							<li role="presentation"><a href="#C" role="tab"
								data-toggle="pill">PLAN_C</a></li>
							<li role="presentation"><a href="#" role="tab"
								data-toggle="pill">탭 추가</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="A">

								<div class="col-xs-12 col-sm-6 col-md-6">
									<img class="tactics-board" src="/resources/img/lineup.gif">
								</div>


								<div class="col-xs-12 col-sm-6 col-md-6 text-center text-white">
									<div
										class="table-responsive container-fluid  scroll-box-tactics-lineup">
										<table
											class="table table-condensed table-hover text-center text-white">
											<tr>
												<td></td>
												<td>No.</td>
												<td>이름</td>
												<td>참석여부</td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-join">참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-join">참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-join">참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-nojoin">미참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-novote">미정</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-join">참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-join">참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-join">참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-nojoin">미참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-novote">미정</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-join">참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-join">참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-join">참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-nojoin">미참석</span></td>
											</tr>
											<tr>
												<td><div class="player"></div></td>
												<td>1</td>
												<td>홍길동</td>
												<td><span class="badge badge-novote">미정</span></td>
											</tr>
										</table>
									</div>
								</div>


								<div
									class="col-xs-12 col-sm-12 col-md-12 text-center text-white ">
									<h2>전술 중점</h2>
									<div class="text-gray">
										<textarea rows="10" class="comment-text"></textarea>
									</div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="B">
								<div class="col-xs-12 col-sm-6 col-md-6">
									<img class="tactics-board" src="/resources/img/lineup.gif">
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6 text-center text-white ">
									<h2>전술 중점</h2>
									<p>테스트테스트테스트테스트테스트 테스트테스트테스트테스트테스트테스트 테스트테스트테스트테스트</p>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="C">
								<div class="col-xs-12 col-sm-6 col-md-6">
									<img class="tactics-board" src="/resources/img/lineup.gif">
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6 text-center text-white ">
									<h2>전술 중점</h2>
									<p>테스트테스트테스트테스트테스트 테스트테스트테스트테스트테스트테스트 테스트테스트테스트테스트</p>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- Tactics Short View  end -->

				<button type="button" class="btn btn-default pull-left"
					onclick="location.href='/tactics/lineup_list'">목록</button>
				<span class="pull-right">
					<button type="button" class="btn btn-default pull-left">저장</button>
					<button type="button" class="btn btn-default">초기화</button>
				</span>

			</div>
			<!--    Line up end-->

		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>