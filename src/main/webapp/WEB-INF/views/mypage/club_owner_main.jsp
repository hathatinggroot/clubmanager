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

		<!-- inner nav start -->
		<div class="row">
			<div class="col-md-4 text-center text-white text-nowrap">
				<h1>
					<dfn>
						<a href="#match">매칭 관리</a>
					</dfn>
				</h1>
			</div>
			<div class="col-md-4 text-center text-white text-nowrap">
				<h1>
					<dfn>
						<a href="#recruit">선수 모집 현황</a>
					</dfn>
				</h1>
			</div>

			<div class="col-md-4 text-center text-white text-nowrap">
				<h1>
					<dfn>
						<a href="#club">구단 관리</a>
					</dfn>
				</h1>
			</div>
		</div>
		<!-- inner nav end -->

		<!-- Match start -->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="match">
				<h1>
					<dfn>내가 초청한 매칭</dfn>
				</h1>
			</div>

			<!-- table start -->
			<div class="col-sm-12 col-md-12">
				<div class="table-responsive container-fluid">
					<table
						class="table table-condensed table-hover text-center text-white">
						<tr>
							<td>경기 유형</td>
							<td>경기 시간</td>
							<td>구장</td>
							<td>상대팀</td>
							<td>신청 현황</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>대화구장</td>
							<td>맨체스터시티</td>
							<td><span class="badge badge-planned">확정</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>대화구장</td>
							<td>맨체스터시티</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
						<tr>
							<td>경기 유형</td>
							<td>경기 시간</td>
							<td>구장</td>
							<td>상대팀</td>
							<td>신청 현황</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>대화구장</td>
							<td>맨체스터시티</td>
							<td><span class="badge badge-planned">확정</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>대화구장</td>
							<td>맨체스터시티</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
					</table>
				</div>
			</div>
			<!-- table end -->
			<!-- Pagination start -->
			<div class="text-center">
				<nav>
					<ul class="pagination">
						<li class="disabled"><a href="#" aria-label="Previous"><span
								aria-hidden="true">&laquo;</span></a></li>
						<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
						<li><a href="#" aria-label="Previous"><span
								aria-hidden="true">&raquo;</span></a></li>
					</ul>
				</nav>
			</div>
			<!-- Pagination end -->

			<div class="text-center text-white text-nowrap">
				<h1>
					<dfn>내가 요청한 매칭</dfn>
				</h1>
			</div>
			<!-- table start -->
			<div class="col-sm-12 col-md-12">
				<div class="table-responsive container-fluid">
					<table
						class="table table-condensed table-hover text-center text-white">
						<tr>
							<td>경기 유형</td>
							<td>경기 시간</td>
							<td>지역</td>
							<td>구장</td>
							<td>구단명(A)</td>
							<td>구단명(B)</td>
							<td>진행 상태</td>
						</tr>

						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>대화구장</td>
							<td>느루FC</td>
							<td>맨체스터시티</td>
							<td><span class="badge badge-planned">확정</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>대화구장</td>
							<td>느루FC</td>
							<td>맨체스터시티</td>
							<td><span class="badge badge-completed">경기종료</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>대화구장</td>
							<td>느루FC</td>
							<td>미확정</td>
							<td><span class="badge badge-unplanned">미확정</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>대화구장</td>
							<td>느루FC</td>
							<td>맨체스터시티</td>
							<td><span class="badge badge-unrecorded">결과 미입력</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>대화구장</td>
							<td>느루FC</td>
							<td>맨체스터시티</td>
							<td><span class="badge badge-completed">경기종료</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>대화구장</td>
							<td>느루FC</td>
							<td>미확정</td>
							<td><span class="badge badge-unplanned">미확정</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>대화구장</td>
							<td>느루FC</td>
							<td>맨체스터시티</td>
							<td><span class="badge badge-unrecorded">결과 미입력</span></td>
						</tr>
					</table>
				</div>
			</div>
			<!-- table end -->

			<!-- Pagination start -->
			<div class="text-center">
				<nav>
					<ul class="pagination">
						<li class="disabled"><a href="#" aria-label="Previous"><span
								aria-hidden="true">&laquo;</span></a></li>
						<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
						<li><a href="#" aria-label="Previous"><span
								aria-hidden="true">&raquo;</span></a></li>
					</ul>
				</nav>
			</div>
			<!-- Pagination end -->

		</div>
		<!-- Match start -->

		<!-- Recruit start-->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="recruit">
				<hr class="divider">
				<h1>
					<dfn>선수 모집 현황</dfn>
				</h1>
			</div>
			<!-- Recruit Loan start-->
			<div class="text-center text-white text-nowrap" id="recruit">
				<h1>
					<dfn>용병</dfn>
				</h1>
			</div>
			<!-- table start -->
			<div class="col-sm-12 col-md-12">
				<div class="table-responsive container-fluid">
					<table
						class="table table-condensed table-hover text-center text-white">
						<tr>
							<td>경기 유형</td>
							<td>경기 시간</td>
							<td>지역</td>
							<td>신청 현황</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
					</table>
				</div>
			</div>
			<!-- table end -->
			<!-- Pagination start -->
			<div class="text-center">
				<nav>
					<ul class="pagination">
						<li class="disabled"><a href="#" aria-label="Previous"><span
								aria-hidden="true">&laquo;</span></a></li>
						<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
						<li><a href="#" aria-label="Previous"><span
								aria-hidden="true">&raquo;</span></a></li>
					</ul>
				</nav>
			</div>
			<!-- Pagination end -->
			<!-- Recruit Loan end-->

			<!-- Recruit transfer start -->
			<div class="text-center text-white text-nowrap" id="match">
				<h1>
					<dfn>입단</dfn>
				</h1>
			</div>

			<!-- table start -->
			<div class="col-sm-12 col-md-12">
				<div class="table-responsive container-fluid">
					<table
						class="table table-condensed table-hover text-center text-white">
						<tr>
							<td>경기 유형</td>
							<td>활동 시간대</td>
							<td>지역</td>
							<td>신청현황</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
							<td>일산서구</td>
							<td><span class="badge badge-unplanned">5</span></td>
						</tr>
					</table>
				</div>
			</div>
			<!-- table end -->
			<!-- Pagination start -->
			<div class="text-center">
				<nav>
					<ul class="pagination">
						<li class="disabled"><a href="#" aria-label="Previous"><span
								aria-hidden="true">&laquo;</span></a></li>
						<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
						<li><a href="#" aria-label="Previous"><span
								aria-hidden="true">&raquo;</span></a></li>
					</ul>
				</nav>
			</div>
			<!-- Pagination end -->
			<!-- Recruit transfer end -->
		</div>
		<!-- Recuit end-->

		<!-- club management start-->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="club">
				<hr class="divider">
				<h1>
					<dfn>구단 관리</dfn>
				</h1>
			</div>

			<div class="col-xs-12 col-sm-4 col-md-4">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<button type="button" class="btn btn-default" data-toggle="modal"
							data-target="#cInfoMod">
							<h3>구단 정보 수정</h3>
						</button>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<button type="button" class="btn btn-default" data-toggle="modal"
							data-target="#tPlayerRegister">
							<h3>임시 선수 등록</h3>
						</button>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<button type="button" class="btn btn-default" data-toggle="modal"
							data-target="#playerDelete">
							<h3>선수 방출</h3>
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- club management end-->
	</div>
	<!-- container-fluid end -->


	<!-- Modify Club Info Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="cInfoMod">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">구단 정보 수정</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form>
							<div class="form-group">
								<label for="type">경기 유형</label> <select class="form-control"
									id="type" name="type">
									<option value="전체">전체</option>
									<option value="S">축구</option>
									<option value="F">풋살</option>
								</select>
							</div>
							<div class="form-group">
								<label for="area">지역</label> <select class="form-control"
									id="area" name="area">
									<option value="전체">전체</option>
									<option value="일산서구">일산서구</option>
									<option value="일산동구">일산동구</option>
								</select>
							</div>
							<div class="form-group">
								<label>활동 시간대</label>
								<div class="enter-row-1"></div>
								<label for="mon">월<input type="checkbox" class="dp-none"
									id="mon" value="mon" name="date">
								</label> <label for="tue">화 <input type="checkbox"
									class="dp-none" id="tue" value="tue" name="date">
								</label> <label for="wed">수 <input type="checkbox"
									class="dp-none" id="wed" value="wed" name="date">
								</label> <label for="thu">목 <input type="checkbox"
									class="dp-none" id="thu" value="thu" name="date">
								</label> <label for="fri">금 <input type="checkbox"
									class="dp-none" id="fri" value="fri" name="date">
								</label> <label for="sat">토 <input type="checkbox"
									class="dp-none" id="sat" value="sat" name="date">
								</label> <label for="sun">일 <input type="checkbox"
									class="dp-none" id="sun" value="sun" name="date">
								</label>
							</div>
							<div class="form-group">
								<label for="clubName">구단명</label> <input type="text"
									class="form-control" id="clubName" name="clubName"
									placeholder="구단명">
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doModifyClub">수정 완료</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Modify Club Info Modal end -->


	<!-- Temp Player Register Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="tPlayerRegister">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">임시 선수 등록</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<form>
								<div class="form-group">
									<label for="userName">이름</label> <input type="text"
										class="form-control" id="userName" name="userName">
								</div>
								<div class="form-group">
									<label>포지션<sup class="text-gray">중복선택 가능</sup></label>
									<div class="enter-row-1"></div>
									<label for="GK">GK<input type="checkbox"
										class="dp-none" id="GK" value="GK" name="position"></label> <label
										for="CB">CB<input type="checkbox" class="dp-none"
										id="CB" value="CB" name="position"></label> <label for="LB">LB<input
										type="checkbox" class="dp-none" id="LB" value="LB"
										name="position"></label> <label for="RB">RB<input
										type="checkbox" class="dp-none" id="RB" value="RB"
										name="position"></label> <label for="CDM">CDM<input
										type="checkbox" class="dp-none" id="CDM" value="CDM"
										name="position"></label> <label for="CM">CM<input
										type="checkbox" class="dp-none" id="CM" value="CM"
										name="position"></label> <label for="CAM">CAM<input
										type="checkbox" class="dp-none" id="CAM" value="CAM"
										name="position"></label> <label for="LW">LW<input
										type="checkbox" class="dp-none" id="LW" value="LW"
										name="position"></label> <label for="RW">RW<input
										type="checkbox" class="dp-none" id="RW" value="RW"
										name="position"></label> <label for="CF">CF<input
										type="checkbox" class="dp-none" id="CF" value="CF"
										name="position"></label>
								</div>
								<div class="form-group">
									<label for="userClub">소속 구단</label> <input type="text"
										class="form-control" id="userClub" name="userClub"
										placeholder="구단명">
								</div>
							</form>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6 text-center">
							<div class="enter-row-4">
								<img src="/resources/img/profile.png">
							</div>
							<input type="file" name="photo">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doTempRegister">등록</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Temp Player Register Modal end -->


	<!-- Player Delete Modal end -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="playerDelete">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">선수 방출</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<!-- table start -->
						<div class="col-sm-12 col-md-12">
							<div class="table-responsive container-fluid">
								<table class="table table-condensed table-hover text-center">
									<tr>
										<td>선수명</td>
										<td>생년월일</td>
										<td>선택</td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
									<tr>
										<td>홍길동</td>
										<td>1992-05-22</td>
										<td><input type="checkbox" class="checkbox-inline"
											name="deleteSelected" value="홍길동"></td>
									</tr>
								</table>
							</div>
						</div>
						<!-- table end -->
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doPlayerDelete">선수
						방출</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Player Delete Modal end -->




	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>

	<script>
		$("#doModifyClub").on("click", function(e) {
			alert("doModifyClub clicked");
		})
		$("#doTempRegister").on("click", function(e) {
			alert("doTempRegister clicked");
		})
		$("#doPlayerDelete").on("click", function(e) {
			alert("doPlayerDelete clicked");
		})
	</script>

</body>
</html>