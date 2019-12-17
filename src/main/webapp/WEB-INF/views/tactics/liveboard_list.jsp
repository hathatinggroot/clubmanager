<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<tr>
								<td>1</td>
								<td>123FC</td>
								<td>2019-12-16 18:00</td>
								<td>대화구장</td>
								<td><button type="button" class="btn btn-primary">기록하기</button></td>
							</tr>
							<tr>
								<td>2</td>
								<td>456FC</td>
								<td>2019-12-12 17:00</td>
								<td>백석구장</td>
								<td><button type="button" class="btn btn-warning">기록중</button></td>
							</tr>
							<tr>
								<td>3</td>
								<td>789FC</td>
								<td>2019-12-08 17:00</td>
								<td>백석구장</td>
								<td><span class="badge badge-recorded">기록 완료</span></td>
							</tr>
							<tr>
								<td>4</td>
								<td>789FC</td>
								<td>2019-12-08 17:00</td>
								<td>백석구장</td>
								<td><span class="badge badge-recorded">기록 완료</span></td>
							</tr>
							<tr>
								<td>5</td>
								<td>789FC</td>
								<td>2019-12-08 17:00</td>
								<td>백석구장</td>
								<td><span class="badge badge-recorded">기록 완료</span></td>
							</tr>
							<tr>
								<td>6</td>
								<td>789FC</td>
								<td>2019-12-08 17:00</td>
								<td>백석구장</td>
								<td><span class="badge badge-recorded">기록 완료</span></td>
							</tr>
							<tr>
								<td>7</td>
								<td>789FC</td>
								<td>2019-12-08 17:00</td>
								<td>백석구장</td>
								<td><span class="badge badge-recorded">기록 완료</span></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- All Live Board Table end -->
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
			<!--   All Live Board List List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->




	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


<script>
	$("button").on("click",function(e){
		location.href="/tactics/liveboard_write"
	})
</script>
</body>
</html>