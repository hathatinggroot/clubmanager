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
<title>경기 기록 상세 보기</title>

<!-- INCLUDE head.jsp -->
<%@ include file="/WEB-INF/views/includes/head.jsp"%>
<script>
var goaler = [];
var assister = [];
var saver = [];
</script>

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
							<span>VS&nbsp;</span><span class="large-font">${matchVO.apposingTeam }</span>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6">
							<span class="large-font">${matchVO.mrVO.goal + matchVO.mrVO.extraGoal }:${matchVO.mrVO.lostPoint }</span>&nbsp;
							<c:choose>
								<c:when test="${matchVO.mrVO.results == 1}">
									<span class="badge badge-win large-font">승</span>
								</c:when>
								<c:when test="${matchVO.mrVO.results == 2}">
									<span class="badge badge-draw large-font">무</span>
								</c:when>
								<c:when test="${matchVO.mrVO.results == 3}">
									<span class="badge badge-lose large-font">패</span>
								</c:when>
							</c:choose>
						</div>
					</div>
					<div>
						<span> <fmt:formatDate value="${matchVO.matchDate }"
								pattern="yyyy-MM-dd E  HH:mm" />
						</span> <span class="tab-space-1">${matchVO.stadium}</span>
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
							<c:choose>
								<c:when test="${matchVO.mrVO.mom == ' ' }">
									<span class="large-font badge badge-unrecorded">투표중</span>
								</c:when>
								<c:otherwise>
									<span class="large-font">${matchVO.mrVO.mom }</span>
								</c:otherwise>
							</c:choose>
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
						<c:forEach items="${matchVO.mrVO.prDTOList }" var="pr">
							<c:if test="${pr.goals >0 }">
								<script>
							goaler.push({goals:"${pr.goals}", userName :"${pr.userName}" });
						</script>
							</c:if>
							<c:if test="${pr.assists >0 }">
								<script>
							assister.push({assists:"${pr.assists}", userName :"${pr.userName}" });
						</script>
							</c:if>
							<c:if test="${pr.saves >0 }">
								<script>
							saver.push({saves:"${pr.saves}", userName :"${pr.userName}" });
						</script>
							</c:if>
						</c:forEach>
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
					<div>
						<p>${matchVO.mrVO.comments }</p>
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
							<c:set var="rowNum"
								value="${fn:length(matchVO.mrVO.prDTOList)/4 }" />
							<c:forEach begin="1" end="${rowNum + (1-rowNum%1) }" var="i">
								<tr>
									<c:forEach begin="1" end="4" var="j">
										<c:if test="${((i-1)*4 + j)<=(rowNum*4)}">
											<td>${(i-1)*4 + j}</td>
											<td>${matchVO.mrVO.prDTOList[(i-1)*4 + j-1].userName }</td>
										</c:if>
									</c:forEach>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<!-- Participate Members Table end -->

				<button type="button" class="btn btn-default pull-left"
					onclick="history.back();">목록</button>
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
	var token = '${_csrf.token }';
	var header = '${_csrf.headerName }';
	console.log("${matchVO.mrVO.prDTOList}");
	
	
	window.onload = function(){
		console.log(goaler);
		showScore("${matchVO.matchNo}");
	}
	var showScore = function(matchNo) {
		goaler.sort(function(a,b){
			return b.goals - a.goals;
		})
		assister.sort(function(a,b){
			return b.assists - a.assists;
		})
		saver.sort(function(a,b){
			return b.saves - a.saves;
		})

		console.log("after sorted...........");
		console.log(goaler);
		console.log(assister);					
		console.log(saver);					
		
		var str = "<table "
			+ "class='table table-condensed table-hover text-center text-white'>"
					+ "<tr><td>이름</td>";
		var goalStr = str + "<td>득점</td></tr>";
		var assistStr = str + "<td>도움</td></tr>";
		var saveStr = str + "<td>선방</td></tr>";
		
		for (var g of goaler) {
			goalStr += "<tr>" + "<td>"
			+ g.userName + "</td>"
			+ "<td>" + g.goals
			+ "</td></tr>";					
		}						
		
		for ( var a of assister) {
			assistStr += "<tr>" + "<td>"
					+ a.userName + "</td>"
					+ "<td>" + a.assists
					+ "</td></tr>";
		}
							
		for (var s of saver) {
			saveStr += "<tr>" + "<td>"
					+ s.userName + "</td>"
					+ "<td>" + s.saves + "</td></tr>";
		}					

		goalStr += "</table>";
		assistStr += "</table>";
		saveStr += "</table>";					

		$("#goalList").html(goalStr);
		$("#assistList").html(assistStr);
		$("#saveList").html(saveStr);					

		};
	
		$("#doDeletePlan").on("click", function(e) {
			alert("doDeletePlan clicked");
		})
		$("#doModifyPlan").on("click", function(e) {
			alert("doModifyPlan clicked");
		})
	</script>
</body>
</html>