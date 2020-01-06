<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



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
				<c:set var='i' value="0" />
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>
							<fmt:formatDate value="${matchList[i].matchDate }"
								pattern="MM-dd E  HH:mm" />
						</dfn>
					</h1>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<div>
						VS<span class="tab-space-1 large-font">${matchList[0].apposingTeam }</span>
					</div>
					<div>
						<span class="tab-space-1">${matchList[0].stadium }</span>
					</div>
				</div>

				<!-- Participate Members Table Start -->
				<div class="col-xs-12 col-sm-12 col-md-12 ">
					<div class="text-center text-white text-nowrap">
						<hr class="divider">
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
				<hr>
				<!-- 				<div class="text-center text-white text-nowrap"> -->

				<!-- 					<h1> -->
				<!-- 						<dfn>전체 일정</dfn> -->
				<!-- 					</h1> -->
				<!-- 				</div> -->
				<!-- All Schedule list Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="table-responsive container-fluid">
						<table
							class="table table-condensed table-hover text-center text-white">
							<tr>
								<td>No</td>
								<td>상대팀</td>
								<td>경기 날짜</td>
								<td>구장</td>
								<td>진행 상태</td>
							</tr>
							<c:forEach items="${matchList }" var="match" varStatus="status">
								<c:choose>
									<c:when
										test="${principal.member.auth == 'ROLE_OWNER' ||principal.member.auth == 'ROLE_MANAGER' }">
										<tr data-apposingTeam="${match.apposingTeam }"
											data-matchDate="${match.matchDate.time }"
											data-stadium="${match.stadium }"
											data-matchNo="${match.matchNo }"
											data-matchStatus="${match.matchStatus }" class="matchModTr">
									</c:when>
									<c:otherwise>
										<tr>
									</c:otherwise>
								</c:choose>

								<td>${status.count }</td>
								<td>${match.apposingTeam }</td>
								<td><fmt:formatDate value="${match.matchDate }"
										pattern="yyyy-MM-dd E  HH:mm" /></td>
								<td>${match.stadium }</td>
								<c:choose>
									<c:when test="${match.matchStatus ==0 }">
										<td><span class="badge badge-unplanned">미확정</span></td>
									</c:when>
									<c:when test="${match.matchStatus ==1 }">
										<td><span class="badge badge-planned">확정</span></td>
									</c:when>
								</c:choose>
								</tr>
							</c:forEach>
						</table>
						<button type="button" class="btn btn-default btn-block pull-right"
							data-toggle="modal" data-target="#register">
							<h4>일정 등록</h4>
						</button>
					</div>
				</div>
				<!-- All Schedule list Table end -->
			</div>
			<!--  All Schedule List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->



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
								<label for="registerApposingTeam">상대팀</label> <input type="text"
									class="form-control" id=registerApposingTeam placeholder="미확정"
									value="미정">
							</div>
							<div class="form-group">
								<label for="registerMatchDate">경기 일시</label>
								<div id="registerMatchDate">
									<select id="registerMatchYear">
										<option value="2020" selected="selected">2020</option>
										<option value="2019">2019</option>
									</select> <label for="registerMatchYear">년 </label> <select
										id="registerMatchMonth">
										<c:forEach begin="1" end="12" var="mon">
											<option value="${mon }">${mon }</option>
										</c:forEach>
									</select> <label for="registerMatchMonth">월 </label> <select
										id="registerMatchDay">
										<c:forEach begin="1" end="31" var="day">
											<option value="${day }">${day }</option>
										</c:forEach>
									</select> <label for="registerMatchDay">일 </label> <select
										id="registerMatchHour">
										<c:forEach begin="0" end="24" var="hour">
											<option value="${hour }"><c:if test="${hour < 10}">0</c:if>${hour }</option>
										</c:forEach>
									</select> <label for="registerMatchHour">: </label> <select
										id="registerMatchMin">
										<c:forEach begin="00" end="59" var="min">
											<option value="${min }"><c:if test="${min < 10}">0</c:if>${min }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="registerStadium">구장</label> <input type="text"
									class="form-control" id="registerStadium" placeholder="미정"
									value="미정">
							</div>
							<div class="form-group">
								<label for="registerEndDate">참석 여부 투표 마감 시간</label>
								<div>
									경기 시간으로부터 <input type="number" class="form-control width-20"
										id="registerEndDate" placeholder="7" value="7"> 일 전
								</div>
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

	<!-- Modfiy Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="modifyMatch">
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
							<input type="hidden" id="modMatchNo">
							<div class="form-group">
								<label for="modApposingTeam">상대팀</label> <input type="text"
									class="form-control" id="modApposingTeam">
							</div>
							<div class="form-group">
								<label for="registerMatchDate">경기 일시</label>
								<div id="registerMatchDate">
									<select id="modMatchYear">
										<option value="2020">2020</option>
										<option value="2019">2019</option>
									</select> <label for="modMatchYear">년 </label> <select
										id="modMatchMonth">
										<c:forEach begin="1" end="12" var="mon">
											<option value="${mon }">${mon }</option>
										</c:forEach>
									</select> <label for="modMatchMonth">월 </label> <select id="modMatchDay">
										<c:forEach begin="1" end="31" var="day">
											<option value="${day }">${day }</option>
										</c:forEach>
									</select> <label for="modMatchDay">일 </label> <select id="modMatchHour">
										<c:forEach begin="0" end="24" var="hour">
											<option value="${hour }"><c:if test="${hour < 10}">0</c:if>${hour }</option>
										</c:forEach>
									</select> <label for="modMatchHour">: </label> <select id="modMatchMin">
										<c:forEach begin="00" end="59" var="min">
											<option value="${min }"><c:if test="${min < 10}">0</c:if>${min }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="modStadium">구장</label> <input type="text"
									class="form-control" id="modStadium">
							</div>
							<div class="form-group">
								<label for="modMatchStatus">경기 확정하기</label> <input
									type="checkbox" class="form-control" id="modMatchStatus"
									value="1">
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doModify">수정</button>
					<button type="button" class="btn btn-danger" id="doDelete">삭제</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Modfiy Modal end -->


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>



	<script>
		var token = '${_csrf.token }';
		var header = '${_csrf.headerName }';

		$("#doRegister").on(
				"click",
				function(e) {
					var matchObj = new Object();

					var matchYear = $("#registerMatchYear").val();
					var matchMonth = $("#registerMatchMonth").val();
					var matchDay = $("#registerMatchDay").val();
					var matchHour = $("#registerMatchHour").val();
					var matchMin = $("#registerMatchMin").val();
					var matchD = new Date(matchYear, matchMonth - 1, matchDay,
							matchHour, matchMin, 0, 0);
					console.log(matchD);

					matchObj.apposingTeam = $("#registerApposingTeam").val();
					matchObj.matchDate = matchD;
					matchObj.stadium = $("#registerStadium").val();
					matchObj.clubCode = '${principal.member.clubCode}';
					matchObj.pollTime = $("#registerEndDate").val();
					console.log(matchObj);

					$.ajax({
						type : "post",
						url : "/schedule/register",
						data : JSON.stringify(matchObj),
						contentType : "application/json",
						beforeSend : function(xhr) {
							xhr.setRequestHeader(header, token);
						},
						success : function(result) {
							console.log(result);
							location.reload();
						}
					});

				})
		var matchObj = new Object();
		$(".matchModTr").on("click", function(e) {
			console.log($(e.currentTarget).data());
			matchObj = $(e.currentTarget).data();
			$("#modifyMatch").modal();
		})
		$("#modifyMatch").on("show.bs.modal", function(e) {
			console.log(matchObj);
			console.log()
			$("#modMatchNo").val(matchObj.matchno);
			$("#modApposingTeam").val(matchObj.apposingteam);
			$("#modStadium").val(matchObj.stadium);

			var matchDate = new Date(matchObj.matchdate);
			console.log(matchDate.getYear() + 1900);
			console.log(matchDate.getMonth() + 1);
			console.log(matchDate.getDate());
			console.log(matchDate.getHours());
			console.log(matchDate.getMinutes());
			$("#modMatchYear").val(matchDate.getYear() + 1900);
			$("#modMatchMonth").val(matchDate.getMonth() + 1);
			$("#modMatchDay").val(matchDate.getDate());
			$("#modMatchHour").val(matchDate.getHours());
			$("#modMatchMin").val(matchDate.getMinutes());

			if (matchObj.matchstatus == 1) {
				$("#modMatchStatus").attr("checked", true);
			} else {
				$("#modMatchStatus").attr("checked", false);
			}

		})

		$("#doModify").on(
				"click",
				function(e) {
					var matchObj = new Object();

					var matchYear = $("#modMatchYear").val();
					var matchMonth = $("#modMatchMonth").val();
					var matchDay = $("#modMatchDay").val();
					var matchHour = $("#modMatchHour").val();
					var matchMin = $("#modMatchMin").val();
					var matchStatus = $("#modMatchStatus").prop("checked") ? 1
							: 0;
					var matchD = new Date(matchYear, matchMonth - 1, matchDay,
							matchHour, matchMin, 0, 0);
					console.log(matchD);

					matchObj.apposingTeam = $("#modApposingTeam").val();
					matchObj.matchDate = matchD;
					matchObj.stadium = $("#modStadium").val();
					matchObj.matchNo = $("#modMatchNo").val();
					matchObj.matchStatus = matchStatus;
					console.log(matchObj);

					$.ajax({
						type : "post",
						url : "/schedule/modify",
						data : JSON.stringify(matchObj),
						contentType : "application/json",
						beforeSend : function(xhr) {
							xhr.setRequestHeader(header, token);
						},
						success : function(result) {
							console.log(result);
							if(result=="success"){
								alert("수정 완료");
							}
							location.reload();
						}
					});

				})

		$("#doDelete").on(
				"click",
				function(e) {
					if(!confirm("정말 삭제하시겠습니까?")) return;
					
					$.ajax({
						type : "delete",
						url : "/schedule/delete/"+$("#modMatchNo").val(),
						beforeSend : function(xhr) {
							xhr.setRequestHeader(header, token);
						},
						success : function(result) {
							console.log(result);
							if(result=="success"){
								alert("삭제 완료");
							}
							location.reload();
						}
					});

				})
	</script>
</body>
</html>