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
					<h4 class="modal-title" id="gridSystemModalLabel">득점 추가</h4>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="addGoalMember">선수명</label>
							<select class="form-control" id="addGoalMember">
								<option value="">--------</option>
								<c:forEach items="${prList }" var="pr">
									<option value="${pr.userId }">${pr.userId }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="addGoalAmount">득점</label>
							<input type='number' class='text-center width-20' id="addGoalAmount">
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
					<form>
						<div class="form-group">
							<label for="addAssistMember">선수명</label>
							<select class="form-control" id="addAssistMember">
								<option value="">--------</option>
								<c:forEach items="${prList }" var="pr">
									<option value="${pr.userId }">${pr.userId }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="addAssistAmount">득점</label>
							<input type='number' class='text-center width-20' id="addAssistAmount">
						</div>
					</form>
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
					<form>
						<div class="form-group">
							<label for="addSaveMember">선수명</label>
							<select class="form-control" id="addSaveMember">
								<option value="">--------</option>
								<c:forEach items="${prList }" var="pr">
									<option value="${pr.userId }">${pr.userId }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="addSaveAmount">득점</label>
							<input type='number' class='text-center width-20' id="addSaveAmount">
						</div>
					</form>
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
	var token = '${_csrf.token }';
	var header = '${_csrf.headerName }';
	
	var goaler = '';
	var assister = '';
	var saver = '';
	
	
	
		var showScore = function(matchNo) {
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
						$("#goal").html(result.goal);
						$("#lostPoint").html(result.lostPoint);
						$("#comments").html(result.comments);
						
						var str = "<table "
								+ "class='table table-condensed table-hover text-center text-white'>"
								+ "<tr><td>이름</td>";
						var goalStr = str +"<td>득점</td></tr>" ;
						var assistStr = str+"<td>도움</td></tr>";
						var saveStr = str+"<td>선방</td></tr>";
						
						goaler = result.prDTOList;
						assister = result.prDTOList;
						saver = result.prDTOList;
						
						goaler.sort(function(a,b){
							return b.goals-a.goals;
						})
						assister.sort(function(a,b){
							return b.assists-a.assists;
						})
						saver.sort(function(a,b){
							return b.saves-a.saves;
						})
						
						console.log(goaler);
						console.log(assister);
						console.log(saver);
						
						for(var g of goaler){
							if(g.goals==0) break;
							goalStr += "<tr>"
									 +   "<td>" + g.userId + "</td>"
									 +   "<td>" + g.goals + "</td>";
						}
						for(var a of assister){
							if(a.assists==0) break;
							assistStr += "<tr>"
									 +   "<td>" + a.userId + "</td>"
									 +   "<td>" + a.assists + "</td>";
						}
						for(var s of saver){
							if(s.saves==0) break;
							saveStr += "<tr>"
								saveStr	 +   "<td>" + s.userId + "</td>"
									 +   "<td>" + s.saves + "</td>";
						}
						
						goalStr += "</table>" ;
						assistStr += "</table>";
						saveStr += "</table>";
						
						$("#goalList").html(goalStr);
						$("#assistList").html(assistStr);
						$("#saveList").html(saveStr);
						
						
					}
				}
			});

		}
		$("#addGoalMember").on("change",function(e){
			console.log($(e.target).val());
			for(var g of goaler){
				if(g.userId== $(e.target).val()){
					$("#addGoalAmount").val(g.goals);
					break;
				}
			}
		})
		$("#addAssistMember").on("change",function(e){
			console.log($(e.target).val());
			for(var a of assister){
				if(a.userId== $(e.target).val()){
					$("#addAssistAmount").val(a.assists);
					break;
				}
			}
		})
		$("#addSaveMember").on("change",function(e){
			console.log($(e.target).val());
			for(var s of saver){
				if(s.userId== $(e.target).val()){
					$("#addSaveAmount").val(s.saves);
					break;
				}
			}
		})
		
		window.onload = function() {
			showScore('${matchVO.matchNo}');
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