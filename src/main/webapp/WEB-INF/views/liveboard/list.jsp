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
<title>라이브 보드</title>

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

			<!--  All Live Board List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>라이브 보드</dfn>
					</h1>
				</div>
				<!-- All Live Board Table start -->
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
							<c:forEach items="${matchList }" var="match" varStatus="stat">
								<tr>
									<td>${stat.count }</td>
									<td>${match.apposingTeam }</td>
									<td><fmt:formatDate value="${match.matchDate }" pattern="yyyy-MM-dd E  HH:mm" /></td>
									<td>${match.stadium }</td>
									<c:choose>
										<c:when test="${match.matchRecordStatus == 0 }">
											<td><button type="button" class="btn btn-primary recordBtn" onclick="writePage(${match.matchNo})">기록하기</button></td>
										</c:when>
										<c:otherwise>
											<td><button type="button" class="btn btn-warning recordBtn" onclick="writePage(${match.matchNo})">기록중</button></td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<!-- All Live Board Table end -->
			</div>
			<!--   All Live Board List List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->




	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


	<script>
		var writePage = function(matchNo){
			location.href = "/liveboard/write?clubCode=${principal.member.clubCode}&matchNo="+matchNo;
		}
	</script>
</body>
</html>