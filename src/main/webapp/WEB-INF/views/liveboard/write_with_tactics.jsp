<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라이브 보드(경기 기록)</title>

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
						<dfn>라이브 보드 - 기록하기</dfn>
					</h1>
				</div>

				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<button type="button" class="btn btn-default btn-block">
						<h3>기록 임시 저장</h3>
					</button>
					<button type="button" class="btn btn-primary btn-block">
						<h3>기록 저장 및 경기 종료</h3>
					</button>
					<hr class="divider">
				</div>

				<!-- match info start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<div>
						<div class="col-xs-6 col-sm-6 col-md-6">
							<span>VS&nbsp;</span><span class="large-font">${matchVO.apposingTeam }</span>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6">
							<div class="col-xs-6 col-sm-6 col-md-6">
								<span class="large-font"><span id="goal">5</span>:<span
									id="lostPoint">3</span></span>&nbsp;
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6">
								<button type="button" class="btn btn-primary btn-block lostBtn"
									data-amount="1">실점 +</button>
								<button type="button" class="btn btn-default btn-block lostBtn"
									data-amount="-1">실점 -</button>
							</div>
						</div>
					</div>
					<div>
						<span><fmt:formatDate value="${matchVO.matchDate }"
								pattern="yyyy-MM-dd E  HH:mm" /></span><span class="tab-space-1">${matchVO.stadium }</span>
					</div>
				</div>
				<!-- match info end -->

				<!-- personal point table start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<hr class="divider">
					<h1>
						<dfn>공격 포인트</dfn>
					</h1>
					<div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<button type="button" class="btn btn-primary btn-block"
								data-toggle="modal" data-target="#addGoal">득점 추가</button>
							<div class="table-responsive container-fluid" id="goalList">
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
								</table>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<button type="button" class="btn btn-primary btn-block"
								data-toggle="modal" data-target="#addAssist">도움 추가</button>
							<div class="table-responsive container-fluid" id="assistList">
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
								</table>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<button type="button" class="btn btn-primary btn-block"
								data-toggle="modal" data-target="#addSave">선방 추가</button>
							<div class="table-responsive container-fluid" id="saveList">
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
					<div class="text-gray">
						<textarea rows="10" class="comment-text" id="comments"></textarea>
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
							
							<c:forEach begin="1" end="${fn:length(prList)/4 }" var="i">
								<tr>
									<c:forEach begin="1" end="4" var="j">
										<td>${(i-1)*4 + j}</td>
										<td>${prList[(i-1)*4 + j-1].userId }</td>
									</c:forEach>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<!-- Participate Members Table end -->

				<button type="button" class="btn btn-default pull-left"
					onclick="location.href='/schedule/list'">목록</button>

			</div>
			<!--   Match Detail View end-->

		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->



	<!-- Add Goal Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="addGoal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">득점 추가</h4>
				</div>
				<div class="modal-body">
					<div
						class="table-responsive container-fluid scroll-box-personal-record">
						<table class="table table-condensed table-hover text-center">
							<tr>
								<td>No</td>
								<td>이름</td>
								<td>득점</td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doAddGoal">등록</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Add Goal Modal end -->


	<!-- Add Assist Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="addAssist">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">도움 추가</h4>
				</div>
				<div class="modal-body">
					<div
						class="table-responsive container-fluid scroll-box-personal-record">
						<table class="table table-condensed table-hover text-center">
							<tr>
								<td>No</td>
								<td>이름</td>
								<td>도움</td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doAddAssist">등록</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Add Assist Modal end -->

	<!-- Add Save Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="addSave">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">선방 추가</h4>
				</div>
				<div class="modal-body">
					<div
						class="table-responsive container-fluid scroll-box-personal-record">
						<table class="table table-condensed table-hover text-center">
							<tr>
								<td>No</td>
								<td>이름</td>
								<td>도움</td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td><input type="number" class="text-center width-20"
									name="goal" placeholder="0"></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doAddSave">등록</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Add Save Modal end -->

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


	<script>
		var showMatchInfo = function(matchNo) {

			$.ajax({
				type : "get",
				url : "/liveboard/get/" + matchNo,
				beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				},
				success : function(result) {
					console.log("get............");
					console.log(result);
					if (result != null && result != '') {

						$("#apposingTeam").html(result.matchVO.apposingTeam);
						$("#goal").html(result.goal);
						$("#lostPoint").html(result.lostPoint);

						var date = new Date(result.matchVO.matchDate);
						dateStr = (date.getYear() + 1900) + "-";
						dateStr += (date.getMonth() + 1) > 10 ? (date
								.getMonth() + 1)
								+ "-" : "0" + (date.getMonth() + 1) + "-";
						dateStr += date.getDate() > 10 ? date.getDate() + "  "
								: "0" + date.getDate() + "  ";
						dateStr += date.getHours() > 10 ? date.getHours() + ":"
								: "0" + date.getHours() + ":";
						dateStr += date.getMinutes() > 10 ? date.getMinutes()
								: "0" + date.getMinutes();
						$("#matchDate").html(dateStr);

						$("#stadium").html(result.matchVO.stadium);

					}
				}
			});
		};

		var showPRList = function(matchNo) {

			$.ajax({
				type : "get",
				url : "/liveboard/getPRList/" + matchNo,
				beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				},
				success : function(result) {
					console.log("getPRList............");
					console.log(result);
					if (result != null && result != '') {

						$("#apposingTeam").html(result.matchVO.apposingTeam);
						$("#goal").html(result.goal);
						$("#lostPoint").html(result.lostPoint);

						var date = new Date(result.matchVO.matchDate);
						dateStr = (date.getYear() + 1900) + "-";
						dateStr += (date.getMonth() + 1) > 10 ? (date
								.getMonth() + 1)
								+ "-" : "0" + (date.getMonth() + 1) + "-";
						dateStr += date.getDate() > 10 ? date.getDate() + "  "
								: "0" + date.getDate() + "  ";
						dateStr += date.getHours() > 10 ? date.getHours() + ":"
								: "0" + date.getHours() + ":";
						dateStr += date.getMinutes() > 10 ? date.getMinutes()
								: "0" + date.getMinutes();
						$("#matchDate").html(dateStr);

						$("#stadium").html(result.matchVO.stadium);

					}
				}
			});

// 			<table
// 			class="table table-condensed table-hover text-center text-white">
// 			<tr>
// 			<td>No</td>
// 			<td>이름</td>
// 			<td>도움</td>
// 			</tr>
// 			<tr>
// 			<td>1</td>
// 			<td>홍길동</td>
// 			<td>2</td>
// 			</tr>
// 			</table>

		}
		window.onload = function() {
			// 			showMatchInfo('${matchNo}');
		}

		$("#doAddGoal").on("click", function(e) {
			alert("doAddGoal clicked");
		})
		$("#doAddAssist").on("click", function(e) {
			alert("doAddAssist clicked");
		})
		$("#doAddSave").on("click", function(e) {
			alert("doAddSave clicked");
		})
	</script>
</body>
</html>