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

		<!-- Matches start -->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="match">
				<h1>
					<dfn>경기 선택</dfn>
				</h1>
			</div>
			<div class="col-sm-12 col-md-12">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>전체 일정</dfn>
					</h1>
				</div>
				<div class="table-responsive container-fluid">
					<table
						class="table table-condensed table-hover text-center text-white">
						<tr>
							<td>유형</td>
							<td>경기시간</td>
							<td>구장</td>
							<td>상대팀</td>
							<td>경기결과</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>대화구장</td>
							<td>맨체스터시티</td>
							<td>예정</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>대화구장</td>
							<td>맨체스터시티</td>
							<td><span>[3:5]</span>&nbsp;<span class="badge badge-lose">패</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>대화구장</td>
							<td>맨체스터시티</td>
							<td><span>[5:5]</span>&nbsp;<span class="badge badge-draw">무</span></td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>대화구장</td>
							<td>맨체스터시티</td>
							<td><span>[8:5]</span>&nbsp;<span class="badge badge-win">승</span></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<!-- Matches end -->

	</div>
	<!-- container-fluid end -->

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>