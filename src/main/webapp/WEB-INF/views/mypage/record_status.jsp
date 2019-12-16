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

		<!-- Personal Record Statistic start-->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="record">
				<hr class="divider">
				<h1>
					<dfn>기록실</dfn>
				</h1>
			</div>

			<!-- Club Record start -->
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>경기</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>100</h1>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>평균 득점</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>
							4.8&nbsp;<small>총 482</small>
						</h1>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>평균 도움</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>
							3.4&nbsp;<small>총 343</small>
						</h1>
					</div>
				</div>
			</div>
		</div>
		<!-- Personal Record Statistic end -->

		<!-- Personal Record List start -->
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="table-responsive container-fluid">
					<table
						class="table table-condensed table-hover text-center text-white">
						<tr>
							<td>경기 날짜</td>
							<td>상대팀</td>
							<td>득점</td>
							<td>도움</td>
							<td>세이브</td>
						</tr>
						<tr>
							<td>2019-12-03</td>
							<td>맨체스터시티<span class="badge badge-win tab-space-1">승</span></td>
							<td>3</td>
							<td>2</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2019-11-30</td>
							<td>맨체스터시티<span class="badge badge-lose tab-space-1">패</span></td>
							<td>3</td>
							<td>2</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2019-11-23</td>
							<td>맨체스터시티<span class="badge badge-draw tab-space-1">무</span></td>
							<td>3</td>
							<td>2</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2019-12-03</td>
							<td>맨체스터시티<span class="badge badge-win tab-space-1">승</span></td>
							<td>3</td>
							<td>2</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2019-11-30</td>
							<td>맨체스터시티<span class="badge badge-lose tab-space-1">패</span></td>
							<td>3</td>
							<td>2</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2019-11-23</td>
							<td>맨체스터시티<span class="badge badge-draw tab-space-1">무</span></td>
							<td>3</td>
							<td>2</td>
							<td>0</td>
						</tr>
					</table>
				</div>
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
		</div>
		<!-- Personal Record List end -->



	</div>
	<!-- container-fluid end -->

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>