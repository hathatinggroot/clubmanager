<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경기 기록 상세 보기</title>

<!-- INCLUDE head.jsp -->
<%@ include file="/WEB-INF/views/includes/head.jsp"%>

</head>
<body>
	<div class="bg-image-main"></div>

	<!-- container-fluid start -->
	<div class="container-fluid">

		<!-- INCLUDE nav_top.jsp -->
		<%@ include file="/WEB-INF/views/includes/nav_top.jsp"%>
		<!-- Container Main start-->
		<div class="container-main">
			<!-- Match Detail View start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>경기 기록</dfn>
					</h1>
				</div>
				<!-- match info start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<div>
						<div class="col-xs-6 col-sm-6 col-md-6">
							<span>VS&nbsp;</span><span class="large-font">222FC</span>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6">
							<span class="large-font">5:3</span>&nbsp;<span
								class="badge badge-win large-font">승</span>
						</div>
					</div>
					<div>
						<span>2019-12-11 19:00</span><span class="tab-space-1">백석구장</span>
					</div>
				</div>
				<!-- match info end -->

				<!-- Man of the Match start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<hr class="divider">
					<h1>
						<dfn>MoM</dfn>
					</h1>
					<div>
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span class="large-font">홍길동</span>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span class="large-font badge badge-unrecorded">투표중</span>
						</div>
					</div>
				</div>
				<!-- Man of the Match end -->

				<!-- personal point table start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<hr class="divider">
					<h1>
						<dfn>공격 포인트</dfn>
					</h1>
					<div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="table-responsive container-fluid">
								<table
									class="table table-condensed table-hover text-center text-white">
									<tr>
										<td>No</td>
										<td>이름</td>
										<td>득점</td>
									</tr>
									<tr>
										<td>1</td>
										<td>홍길동</td>
										<td>2</td>
									</tr>
									<tr>
										<td>2</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>3</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>4</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>5</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>6</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>7</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
								</table>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="table-responsive container-fluid">
								<table
									class="table table-condensed table-hover text-center text-white">
									<tr>
										<td>No</td>
										<td>이름</td>
										<td>도움</td>
									</tr>
									<tr>
										<td>1</td>
										<td>홍길동</td>
										<td>2</td>
									</tr>
									<tr>
										<td>2</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>3</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>4</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>5</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
								</table>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="table-responsive container-fluid">
								<table
									class="table table-condensed table-hover text-center text-white">
									<tr>
										<td>No</td>
										<td>이름</td>
										<td>선방</td>
									</tr>
									<tr>
										<td>1</td>
										<td>홍길동</td>
										<td>2</td>
									</tr>
									<tr>
										<td>2</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>3</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>4</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
									<tr>
										<td>5</td>
										<td>홍길동</td>
										<td>1</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>


				<!-- match comment start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<hr class="divider">
					<h1>
						<dfn>코멘트</dfn>
					</h1>
					<div>
						<p>하여도 가슴이 설레는 말이다 청춘! 너의 두손을 가슴에 대고 물방아 같은 심장의 고동을 들어 보라 청춘의

							얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가
							뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면
							인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는
							것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고
							있는가? 우리 눈이 그것을</p>
					</div>
				</div>
				<!-- match comment start -->



				<!-- Tactics Short View  start -->
				<div class="col-xs-12 col-sm-12 col-md-12 enter-row-1">
					<hr class="divider">
					<h1 class="text-white text-center">
						<dfn>전술</dfn>
					</h1>
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
					<div class="table-responsive container-fluid ">
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

				<button type="button" class="btn btn-default pull-left"
					onclick="location.href='/schedule/list'">목록</button>
				<span class="pull-right">
					<button type="button" class="btn btn-default pull-left"
						data-toggle="modal" data-target="#modPlan">수정</button>
					<button type="button" class="btn btn-default" data-toggle="modal"
						data-target="#deletePlan">삭제</button>
				</span>

			</div>
			<!--   Match Detail View end-->

		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->



	<!-- Delete Plan Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="deletePlan">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">일정 삭제</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">정말 삭제하시겠습니까?</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doDeletePlan">삭제</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Delete Plan Modal end -->


	<!-- Modify Plan Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="modPlan">
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
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox1" value="#" name="autoPollRegister" checked>
									자동 투표 재등록
								</label>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doModifyPlan">수정</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Modify Plan Modal end -->


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


	<script>
		$("#doDeletePlan").on("click", function(e) {
			alert("doDeletePlan clicked");
		})
		$("#doModifyPlan").on("click", function(e) {
			alert("doModifyPlan clicked");
		})
	</script>
</body>
</html>