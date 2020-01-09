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
<title>구단 기록</title>

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
			<!-- Club Record start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>구단 기록</dfn>
					</h1>
				</div>

				<!-- total matches Nums start -->
				<div class="col-xs-6 col-sm-3 col-md-3 text-white text-center">
					<div>
						<span>경기</span>
					</div>
					<div>
						<span class="large-font">${csDTO.matchNums }</span>
					</div>
				</div>
				<!-- total matches Nums end -->

				<!-- Winning rates start -->
				<div class="col-xs-6 col-sm-3 col-md-3 text-white text-center">
					<div>
						<span>승률</span>
					</div>
					<div>
						<c:set var ="winRate" value="${csDTO.win/csDTO.matchNums*100 }"/>
						<span class="large-font">
							<fmt:formatNumber value="${winRate }" pattern=".0"/>
						</span>
					</div>
					
					<div class="text-gray">${csDTO.win }/${csDTO.draw }/${csDTO.lose }</div>
				</div>
				<!-- Winning rates end -->

				<!-- Goal Average start -->
				<div class="col-xs-6 col-sm-3 col-md-3 text-white text-center">
					<div>
						<span>경기당 득점</span>
					</div>
					<div>
					<c:set var ="goalAvg" value="${csDTO.goalSum/csDTO.matchNums }"/>
						<span class="large-font">
							<fmt:formatNumber value="${goalAvg }" pattern=".0"/>
						</span>
					</div>
					<div class="text-gray">${csDTO.goalSum }</div>
				</div>
				<!-- Goal Average end -->

				<!-- Lost Point Average start -->
				<div class="col-xs-6 col-sm-3 col-md-3 text-white text-center enter-row-1">
					<div>
						<span>경기당 실점</span>
					</div>
					<div>
					<c:set var ="lostAvg" value="${csDTO.lostPointSum/csDTO.matchNums }"/>
						<span class="large-font">
							<fmt:formatNumber value="${lostAvg }" pattern=".0"/>
						</span>
					</div>
					<div class="text-gray">${csDTO.lostPointSum }</div>
				</div>
				<!-- Lost Point Average end -->

			</div>
			<!-- Club Record end-->

			<!-- Club's Match Record start-->
			<div class="row">
				<!-- Match list Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<!-- Search condition start -->
					<div class="col-sm-12 col-md-12 enter-row-1">
						<form class="form-inline pull-right">
							<div class="form-group">
								<input type="text" class="form-control" id="keyword"
									placeholder="검색어를 입력하세요">
							</div>
						</form>
					</div>
					<!-- Search condition end -->
					<div class="table-responsive container-fluid" id="mrList">
						<table
							class="table table-condensed table-hover text-center text-white">
							<tr>
								<td>No</td>
								<td>상대팀</td>
								<td>경기 날짜</td>
								<td>구장</td>
								<td>경기 결과</td>
							</tr>
							<tr>
								<td>1</td>
								<td>123FC</td>
								<td>2019-12-16 18:00</td>
								<td>대화구장</td>
								<td>5:3 <span class="badge badge-win">승</span></td>
							</tr>
							<tr>
								<td>2</td>
								<td>456FC</td>
								<td>2019-12-11 18:00</td>
								<td>대화구장</td>
								<td>3:3 <span class="badge badge-draw">무</span></td>
							</tr>
							<tr>
								<td>3</td>
								<td>789FC</td>
								<td>2019-11-30 18:00</td>
								<td>대화구장</td>
								<td>3:5 <span class="badge badge-lose">패</span></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- Announcement list Table end -->

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
			<!-- Club's Match Record end-->


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