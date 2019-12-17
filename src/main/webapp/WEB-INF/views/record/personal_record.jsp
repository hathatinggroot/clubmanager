<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 기록</title>

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

			<!-- Personal Rank start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>개인 순위</dfn>
					</h1>
				</div>
				<!-- Personal Rank Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div role="tabpanel">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#mileage"
								role="tab" data-toggle="tab">종합</a></li>
							<li role="presentation"><a href="#mom" role="tab"
								data-toggle="tab">MoM</a></li>
							<li role="presentation"><a href="#goal" role="tab"
								data-toggle="pill">득점</a></li>
							<li role="presentation"><a href="#assist" role="tab"
								data-toggle="pill">도움</a></li>
							<li role="presentation"><a href="#save" role="tab"
								data-toggle="pill">선방</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="mileage">
								<div class="table-responsive container-fluid">
									<table
										class="table table-condensed table-hover text-center text-white">
										<tr>
											<td>순위</td>
											<td>이름</td>
											<td>포인트</td>
										</tr>
										<tr>
											<td>1</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>2</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>3</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>4</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>5</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="mom">
								<div class="table-responsive container-fluid">
									<table
										class="table table-condensed table-hover text-center text-white">
										<tr>
											<td>순위</td>
											<td>이름</td>
											<td>MoM</td>
										</tr>
										<tr>
											<td>1</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>2</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>3</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>4</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>5</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="goal">
								<div class="table-responsive container-fluid">
									<table
										class="table table-condensed table-hover text-center text-white">
										<tr>
											<td>순위</td>
											<td>이름</td>
											<td>득점</td>
										</tr>
										<tr>
											<td>1</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>2</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>3</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>4</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>5</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="assist">
								<div class="table-responsive container-fluid">
									<table
										class="table table-condensed table-hover text-center text-white">
										<tr>
											<td>순위</td>
											<td>이름</td>
											<td>도움</td>
										</tr>
										<tr>
											<td>1</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>2</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>3</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>4</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>5</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
									</table>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="save">
								<div class="table-responsive container-fluid">
									<table
										class="table table-condensed table-hover text-center text-white">
										<tr>
											<td>순위</td>
											<td>이름</td>
											<td>선방</td>
										</tr>
										<tr>
											<td>1</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>2</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>3</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>4</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
										<tr>
											<td>5</td>
											<td>홍길동</td>
											<td>42</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Personal Rank Table end -->
			</div>
			<!-- Personal Rank end-->




			<!-- Personal Record start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<hr class="divider">
					<h1>
						<dfn>개인 기록</dfn>
					</h1>
				</div>

				<!-- All Members table start -->
				<div class="col-xs-12 col-sm-4 col-md-4 text-white text-center">
					<div>
						<div class="table-responsive container-fluid scroll-box-personal-record">
							<table
								class="table table-condensed table-hover text-center text-white">
								<tr>
									<td>No</td>
									<td>이름</td>
								</tr>
								<tr>
									<td>1</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>2</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>3</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>4</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<!-- All Members table end -->



				<!-- Personal Record View start -->
				<div class="col-xs-12 col-sm-8 col-md-8 text-white text-center">
					<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
						<span class="large-font">홍길동</span>
					</div>
					<!-- Rank start -->
					<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
						<div>
							<span>분야별 순위</span>
						</div>
						<div class="table-responsive container-fluid">
							<table
								class="table table-condensed table-hover text-center text-white">
								<tr>
									<td>홍길동</td>
									<td>종합</td>
									<td>MoM</td>
									<td>득점</td>
									<td>도움</td>
									<td>선방</td>
								</tr>
								<tr>
									<td>순위</td>
									<td>2</td>
									<td>4</td>
									<td>2</td>
									<td>1</td>
									<td>8</td>
								</tr>
							</table>
						</div>
					</div>
					<!-- Rank end -->

					<!-- Participate Record start -->
					<div class="col-xs-6 col-sm-6 col-md-6 text-white text-center">
						<div>
							<span>출전 경기수</span>
						</div>
						<div>
							<span class="large-font">45</span>
						</div>
					</div>
					<!-- Participate Record end -->
					
					<!-- Mileage Point start -->
					<div class="col-xs-6 col-sm-6 col-md-6 text-white text-center">
						<div>
							<span>종합 점수</span>
						</div>
						<div>
							<span class="large-font">45</span>
						</div>
					</div>
					<!-- Mileage Point end -->
					
					<!-- MoM start -->
					<div class="col-xs-6 col-sm-6 col-md-6 text-white text-center">
						<div>
							<span>MoM</span>
						</div>
						<div>
							<span class="large-font">3</span>
						</div>
					</div>
					<!-- MoM end -->
					
					<!-- Goal Average start -->
					<div class="col-xs-6 col-sm-6 col-md-6 text-white text-center">
						<div>
							<span>평균 득점</span>
						</div>
						<div>
							<span class="large-font">2.3</span>&nbsp;<span class="text-gray">97</span>
						</div>
					</div>
					<!-- Goal Average end -->
					
					<!-- Assist Average start -->
					<div class="col-xs-6 col-sm-6 col-md-6 text-white text-center">
						<div>
							<span>평균 도움</span>
						</div>
						<div>
							<span class="large-font">2.3</span>&nbsp;<span class="text-gray">97</span>
						</div>
					</div>
					<!-- Assist Average end -->
					
					<!-- Save Average start -->
					<div class="col-xs-6 col-sm-6 col-md-6 text-white text-center">
						<div>
							<span>평균 선방</span>
						</div>
						<div>
							<span class="large-font">2.3</span>&nbsp;<span class="text-gray">97</span>
						</div>
					</div>
					<!-- Save Average end -->
				</div>
				<!-- Personal Record View end -->

			</div>
			<!-- Personal Record end-->

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