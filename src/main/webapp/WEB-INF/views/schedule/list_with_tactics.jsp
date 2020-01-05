<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경기 일정</title>

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
			<!-- Up-To-Match start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>다음 경기</dfn>
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

				<!-- Tactics Short View  start -->
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
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="A">
								<div class="col-xs-12 col-sm-6 col-md-6">
									<img class="tactics-board" src="/resources/img/lineup.gif">
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6 text-center text-white ">
									<h2>전술 중점</h2>
									<p>테스트테스트테스트테스트테스트 테스트테스트테스트테스트테스트테스트 테스트테스트테스트테스트</p>
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

				<!-- Participate Members Table Start -->
				<div class="col-xs-12 col-sm-12 col-md-12 ">
					<div class="text-center text-white text-nowrap">
						<h1>
							<dfn>참석 명단</dfn>
						</h1>
					</div>
					<div class="table-responsive container-fluid">
						<table
							class="table table-condensed table-hover text-center text-white">
							<tr>
								<td>No</td>
								<td>이름</td>
								<td>No</td>
								<td>이름</td>
								<td>No</td>
								<td>이름</td>
								<td>No</td>
								<td>이름</td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>2</td>
								<td>홍길동</td>
								<td>3</td>
								<td>홍길동</td>
								<td>4</td>
								<td>홍길동</td>
							</tr>
							<tr>
								<td>5</td>
								<td>홍길동</td>
								<td>6</td>
								<td>홍길동</td>
								<td>7</td>
								<td>홍길동</td>
								<td>8</td>
								<td>홍길동</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- Participate Members Table end -->
			</div>
			<!--  Up-To-Match end-->

			<!--  All Schedule List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>전체 일정</dfn>
					</h1>
				</div>
				<!-- All Schedule list Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="table-responsive container-fluid">
						<table
							class="table table-condensed table-hover text-center text-white">
							<tr onclick="location.href='/schedule/view'">
								<td>No</td>
								<td>상대팀</td>
								<td>경기 날짜</td>
								<td>구장</td>
								<td>진행 상태</td>
							</tr>
							<tr>
								<td>1</td>
								<td>123FC</td>
								<td>2019-12-16 18:00</td>
								<td>대화구장</td>
								<td><button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#planned">확정하기</button></td>
							</tr>
							<tr>
								<td>2</td>
								<td>456FC</td>
								<td>2019-12-12 17:00</td>
								<td>백석구장</td>
								<td><span class="badge badge-unplanned">미확정</span></td>
							</tr>
							<tr>
								<td>3</td>
								<td>789FC</td>
								<td>2019-12-08 17:00</td>
								<td>백석구장</td>
								<td><span class="badge badge-planned">확정</span></td>
							</tr>
						</table>
						<button type="button" class="btn btn-default btn-block pull-right"
							data-toggle="modal" data-target="#register"><h4>일정 등록</h4></button>
					</div>
				</div>
				<!-- All Schedule list Table end -->
			</div>
			<!--  All Schedule List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->



	<!-- Planned Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="planned">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">경기 확정</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">경기를 확정하시겠습니까?</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doPlanned">확정</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Planned Member Modal end -->


	<!-- Register Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="register">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">일정 등록</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form>
							<div class="form-group">
								<label for="opponentName">상대팀</label> <input type="text"
									class="form-control" id="opponentName" name="opponentName"
									placeholder="미확정">
							</div>
							<div class="form-group">
								<label for="date">경기 날짜</label> <input type="date"
									class="form-control" id="date" name="date">
							</div>
							<div class="form-group">
								<label for="time">경기 시간</label> <input type="time"
									class="form-control" id="time" name="time">
							</div>
							<div class="form-group">
								<label for="stadium">구장</label> <input type="text"
									class="form-control" id="stadium" name="stadium"
									placeholder="미정">
							</div>
							<div class="form-group">
								<label for="pollTime">참석 여부 투표 마감 시간</label> 
								<div>경기 시간으로부터 <input type="number"
									class="form-control width-20" id="pollTimeBeforeMatch" name="pollTimeBeforeMatch" placeholder="7">
								일 전</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doRegister">등록</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Register Modal end -->


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>



<script>
	$("#doPlanned").on("click",function(e){
		alert("doPlanned clicked");
	})
	$("#doRegister").on("click",function(e){
		alert("doRegister clicked");
	})
</script>
</body>
</html>