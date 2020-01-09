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
					<button type="button"
						class="btn btn-primary btn-block" id="endMatch">
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
								<span class="large-font"><span id="goal"></span>:<span
									id="lostPoint"></span></span>&nbsp;
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
					<button type="button" class="btn btn-primary btn-block enter-row-1"
						data-toggle="modal" data-target="#addGoal">
						<h4>기록 추가</h4>
					</button>
					<div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="table-responsive container-fluid" id="goalList">
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="table-responsive container-fluid" id="assistList">
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="table-responsive container-fluid" id="saveList">
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
					<button type="button"
							class="btn btn-default btn-block enter-row-1" id="saveCommentsBtn"><h4>저장</h4></button>
					<div class="text-gray">
						<textarea rows="10" class="comment-text" id="comments"></textarea>
					</div>
				</div>
				<!-- match comment start -->

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
							<c:set var="rowNum" value="${fn:length(prList)/4 }" />
							<c:forEach begin="1" end="${rowNum + (1-rowNum%1) }" var="i">
								<tr>
									<c:forEach begin="1" end="4" var="j">
										<c:if test="${((i-1)*4 + j)<=(rowNum*4)}">
											<td>${(i-1)*4 + j}</td>
											<td>${prList[(i-1)*4 + j-1].userId }</td>
										</c:if>
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
					<h4 class="modal-title" id="gridSystemModalLabel">공격 포인트 추가</h4>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="addGoalMember">선수명</label> <select
								class="form-control" id="addGoalMember">
								<option value="">--------</option>
								<option value="extra">상대 자책 또는 용병</option>
								<c:forEach items="${prList }" var="pr">
									<option value="${pr.userId }">${pr.userName }</option>
								</c:forEach>
							</select>
						</div>
						<input type="hidden" id="originGoal">
						<div class="form-group col-xs-4 col-sm-4 col-md-4 text-center">
							<label for="addGoalAmount">득점</label> <input type='number'
								class='text-center width-20' id="addGoalAmount">
						</div>
						<div
							class="form-group col-xs-4 col-sm-4 col-md-4 text-center isExtra">
							<label for="addGoalAmount">도움</label> <input type='number'
								class='text-center width-20' id="addAssistAmount">
						</div>
						<div
							class="form-group col-xs-4 col-sm-4 col-md-4 text-center isExtra">
							<label for="addGoalAmount">선방</label> <input type='number'
								class='text-center width-20' id="addSaveAmount">
						</div>
					</form>
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

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


	<script>
		var token = '${_csrf.token }';
		var header = '${_csrf.headerName }';

		var goaler = new Object();
		var assister = new Object();
		var saver = new Object();

		var mrObj = new Object();

		var showScore = function(matchNo) {
			$
					.ajax({
						type : "get",
						url : "/liveboard/get/" + matchNo,
						beforeSend : function(xhr) {
							xhr.setRequestHeader(header, token);
						},
						success : function(result) {
							console.log("get............");
							console.log(result);
							if (result != null && result != '') {

								mrObj = result;
								console.log("mrObj 초기화");
								console.log(mrObj);

								$("#goal").html(result.goal + result.extraGoal);
								$("#lostPoint").html(result.lostPoint);
								$("#comments").html(result.comments);

								var str = "<table "
								+ "class='table table-condensed table-hover text-center text-white'>"
										+ "<tr><td>이름</td>";
								var goalStr = str + "<td>득점</td></tr>";
								var assistStr = str + "<td>도움</td></tr>";
								var saveStr = str + "<td>선방</td></tr>";

								console.log(result.prDTOList);

								result.prDTOList.sort(function(a, b) {
									return b.goals - a.goals;
								})
								goaler = $.extend({}, result.prDTOList);
								goaler[result.prDTOList.length] = {
									goals : result.extraGoal,
									userName : '상대 자책 또는 용병',
									userId : 'extra'
								};

								result.prDTOList.sort(function(a, b) {
									return b.assists - a.assists;
								})
								assister = $.extend({}, result.prDTOList);

								result.prDTOList.sort(function(a, b) {
									return b.saves - a.saves;
								})
								saver = $.extend({}, result.prDTOList);

								console.log(goaler);
								console.log(assister);
								console.log(saver);

								for ( var g in goaler) {
									if (goaler[g].goals == 0)
										break;
									goalStr += "<tr>" + "<td>"
											+ goaler[g].userName + "</td>"
											+ "<td>" + goaler[g].goals
											+ "</td>";
								}
								for ( var a in assister) {
									if (assister[a].assists == 0)
										break;
									assistStr += "<tr>" + "<td>"
											+ assister[a].userName + "</td>"
											+ "<td>" + assister[a].assists
											+ "</td>";
								}
								for ( var s in saver) {
									if (saver[s].saves == 0)
										break;
									saveStr += "<tr>" + "<td>"
											+ saver[s].userName + "</td>"
											+ "<td>" + saver[s].saves + "</td>";
								}

								goalStr += "</table>";
								assistStr += "</table>";
								saveStr += "</table>";

								$("#goalList").html(goalStr);
								$("#assistList").html(assistStr);
								$("#saveList").html(saveStr);

							}
						}
					});

		}
		$("#addGoalMember").on("change", function(e) {
			console.log($(e.target).val());
			var userId = $(e.target).val();
			if (userId == "extra") {
				$(".isExtra").hide();
			} else {
				$(".isExtra").show();
			}
			for ( var g in goaler) {
				if (goaler[g].userId == $(e.target).val()) {
					$("#addGoalAmount").val(goaler[g].goals);
					$("#originGoal").val(goaler[g].goals);
					$("#addAssistAmount").val(goaler[g].assists);
					$("#addSaveAmount").val(goaler[g].saves);
					break;
				}
			}
		})

		window.onload = function() {
			showScore('${matchVO.matchNo}');
		}

		$("#doAddGoal").on("click", function(e) {
			if ($("#addGoalMember").val() == 'extra') {
				//MR수정
				mrObj.extraGoal = $("#addGoalAmount").val();

				console.log("자책골 추가");
				console.log(mrObj);

				modifyMR(mrObj);
			} else if ($("#addGoalMember").val() == '') {
				$("#addGoal").modal('hide');
			} else {
				var prDTO = new Object();
				prDTO.userId = $("#addGoalMember").val();
				prDTO.goals = $("#addGoalAmount").val();
				prDTO.assists = $("#addAssistAmount").val();
				prDTO.saves = $("#addSaveAmount").val();
				prDTO.matchNo = '${matchVO.matchNo}';
				console.log(prDTO);
				$.ajax({
					type : "put",
					url : "/liveboard/writeScore/",
					data : JSON.stringify(prDTO),
					contentType : "application/json",
					beforeSend : function(xhr) {
						xhr.setRequestHeader(header, token);
					},
					success : function(result) {
						console.log("writeScore Result : " + result);

						var goalGap = prDTO.goals - $("#originGoal").val();

						if (goalGap != 0) {
							//MR수정
							mrObj.goal += goalGap;
							modifyMR(mrObj);
							console.log("득점 추가");
							console.log(mrObj);
						} else {
							console.log("득점 변경 없음");
							console.log(mrObj);
							location.reload();
						}
					}
				})
			}
		})

		var modifyMR = function(obj) {
			mrObj = obj;
			console.log("modifyMR........");
			console.log(mrObj);
			$.ajax({
				type : "put",
				url : "/liveboard/modifyMR/",
				data : JSON.stringify(mrObj),
				contentType : "application/json",
				beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				},
				success : function(result) {
					console.log("modifyMR Result : " + result);
					location.reload();
				}
			})
		};
		$(".lostBtn").on("click", function(e) {
			var amount = $(e.target).data('amount');
			console.log(amount);
			mrObj.lostPoint += amount;
			modifyMR(mrObj);
		})

		$("#saveCommentsBtn").on("click", function(e) {
			console.log($("#comments").val())
			mrObj.comments = $("#comments").val();
			modifyMR(mrObj);

		})
		
		$("#endMatch").on("click", function(e) {
			if(confirm("기록을 저장하고 경기를 종료합니다. 경기 종료 이후에는 경기 기록 수정이 불가합니다. 경기를 종료하시겠습니까?")){
				location.href="/liveboard/endMatch?matchNo=${matchVO.matchNo}&clubCode=${matchVO.clubCode}";
			}
		})
	</script>
</body>
</html>