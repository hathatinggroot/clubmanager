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
			<div class="col-md-6 text-center text-white text-nowrap">
				<h1>
					<dfn>
						<a href="/club/myclub_match_record">경기 기록</a>
					</dfn>
				</h1>
			</div>
			<div class="col-md-6 text-center text-white text-nowrap">
				<h1>
					<dfn>
						<a href="/club/myclub_match_record_write">기록 하기</a>
					</dfn>
				</h1>
			</div>
		</div>
		<!-- inner nav end -->

		<!-- Match Short View start -->
		<div class="text-nowrap text-white short-view">
			<div class="panel panel-default bg-blue-opacity border-none">
				<div class="panel-body">
					<h1>
						<span>VS <span>맨체스터시티</span><br></span>
					</h1>
					<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span><br></small>
					<h1>
						<span><span>[8:5]</span>&nbsp;<span class="badge badge-win">승</span></span>
					</h1>
				</div>
			</div>
		</div>
		<!-- Match Short View end -->


		<!-- Match's Record write start -->
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 enter-row-4">
				<button type="button" class="btn btn-primary btn-lg btn-block">기록 저장</button>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-12 enter-row-4">
				<form class="form-inline text-center" data-player="summary">
					<div class="form-group">
						<div class="col-sm-10">
							<span class="text-white">실점</span> 
							<input type="number" class="form-control" id="losePoint" placeholder="0">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<span class="text-white">코멘트</span> 
							<textarea class="form-control" id="comment" placeholder="코멘트" rows="4" cols="50"></textarea>
						</div>
					</div>
				</form>

			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">
							<form class="form-horizontal text-center" data-player="홍길동">
								<label class="radio-inline"> <input type="radio" checked
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									불참
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									참석
								</label>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="goal"
											placeholder="득점">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="assist"
											placeholder="도움">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<input type="number" class="form-control" id="save"
											placeholder="세이브">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Match's Record write end -->

	</div>
	<!-- container-fluid end -->













	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>