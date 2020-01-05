<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라인업</title>

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
			<!--  All Schedule List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>예정된 경기</dfn>
					</h1>
				</div>
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
								<td>라인업</td>
							</tr>
							<tr>
								<td>1</td>
								<td>123FC</td>
								<td>2019-12-16 18:00</td>
								<td>대화구장</td>
								<td><button type="button" class="btn btn-primary">입력</button></td>
							</tr>
							<tr>
								<td>2</td>
								<td>456FC</td>
								<td>2019-12-12 17:00</td>
								<td>백석구장</td>
								<td><button type="button" class="btn btn-default">수정</button></td>
							</tr>
							<tr>
								<td>3</td>
								<td>789FC</td>
								<td>2019-12-08 17:00</td>
								<td>백석구장</td>
								<td><button type="button" class="btn btn-default">수정</button></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- All Schedule list Table end -->
			</div>
			<!--  All Schedule List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


<script>
	$(".btn").on("click",function(e){
		location.href="/tactics/lineup_write";
	})
</script>
</body>
</html>