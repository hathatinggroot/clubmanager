<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구단 관리</title>

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
			<!-- Club List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>구단 관리</dfn>
					</h1>
				</div>

				<!-- Club list Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<!-- Search condition start -->
					<div class="col-sm-12 col-md-12 enter-row-1">
						<form class="form-inline pull-right">
							<div class="form-group text-white">
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox1" value="#" name="condition"> 구단명
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox2" value="#" name="condition"> 구단주 ID
								</label>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="keyword"
									placeholder="검색어를 입력하세요">
							</div>
						</form>
					</div>
					<!-- Search condition start -->
					<div class="table-responsive container-fluid">
						<table
							class="table table-condensed table-hover text-center text-white">
							<tr>
								<td>No</td>
								<td>구단명</td>
								<td>구단주 ID</td>
								<td>등록일</td>
								<td>관리</td>
							</tr>
							<tr>
								<td>1</td>
								<td>123FC</td>
								<td>userID_A</td>
								<td>2019-12-16</td>
								<td><button type="button"
										class="btn btn-primary col-xs-6 col-sm-6 col-md-6">입장</button>
									<button type="button"
										class="btn btn-default col-xs-6 col-sm-6 col-md-6">삭제</button></td>
							</tr>
							<tr>
								<td>2</td>
								<td>456FC</td>
								<td>userID_B</td>
								<td>2019-12-11</td>
								<td><button type="button"
										class="btn btn-primary col-xs-6 col-sm-6 col-md-6">입장</button>
									<button type="button"
										class="btn btn-default col-xs-6 col-sm-6 col-md-6">삭제</button></td>
							</tr>
							<tr>
								<td>3</td>
								<td>789FC</td>
								<td>userID_C</td>
								<td>2019-12-01</td>
								<td><button type="button"
										class="btn btn-primary col-xs-6 col-sm-6 col-md-6">입장</button>
									<button type="button"
										class="btn btn-default col-xs-6 col-sm-6 col-md-6">삭제</button></td>
							</tr>
							<tr>
								<td>4</td>
								<td>111FC</td>
								<td>userID_D</td>
								<td>2019-11-20</td>
								<td><button type="button"
										class="btn btn-primary col-xs-6 col-sm-6 col-md-6">입장</button>
									<button type="button"
										class="btn btn-default col-xs-6 col-sm-6 col-md-6">삭제</button></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- Club list Table end -->

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
			<!-- Club List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>