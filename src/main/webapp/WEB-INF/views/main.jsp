<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- INCLUDE head.jsp -->
<%@ include file="/WEB-INF/views/includes/head.jsp" %>

</head>
<body>
	<div class="bg-image-main"></div>

	<!-- container-fluid start -->
	<!-- 	<div class="container-fluid bg-image-main"> -->
	<div class="container-fluid">

<!-- INCLUDE nav_top.jsp -->
<%@ include file="/WEB-INF/views/includes/nav_top.jsp" %>

		<!-- Number in service start-->
		<div class="row">

			<div class="text-center text-white text-nowrap">
				<h1>
					<dfn>마음만은 챔스의 숫자</dfn>
				</h1>
			</div>

			<div class="col-xs-6 col-sm-6 col-md-3">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>등록된 구단수</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>98</h1>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-3">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>등록된 선수</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>857</h1>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-3">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>진행된 경기수</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>645</h1>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-3">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>경기당 평균 득점</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>8.7</h1>
					</div>
				</div>
			</div>
		</div>
		<!-- Number in service end-->



		<!-- Weekly Matches start -->
		<div class="row">

			<div class="text-center text-white text-nowrap">
				<h1>
					<dfn>이주의 매치</dfn>
				</h1>
			</div>

			<div
				class="col-xs-12 col-sm-6 col-md-3 text-center text-nowrap text-white">
				<div class="panel panel-default bg-blue-opacity border-none">
					<div class="panel-body">
						<h3>
							<span><span>리버풀</span> VS <span>맨체스터시티</span><br></span>
						</h3>
						<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span></small>
					</div>
				</div>
			</div>
			<div
				class="col-xs-12 col-sm-6 col-md-3 text-center text-nowrap text-white">
				<div class="panel panel-default bg-blue-opacity border-none">
					<div class="panel-body">
						<h3>
							<span><span>리버풀</span> VS <span>맨체스터시티</span><br></span>
						</h3>
						<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span></small>
					</div>
				</div>
			</div>
			<div
				class="col-xs-12 col-sm-6 col-md-3 text-center text-nowrap text-white">
				<div class="panel panel-default bg-blue-opacity border-none">
					<div class="panel-body">
						<h3>
							<span><span>리버풀</span> VS <span>맨체스터시티</span><br></span>
						</h3>
						<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span></small>
					</div>
				</div>
			</div>
			<div
				class="col-xs-12 col-sm-6 col-md-3 text-center text-nowrap text-white">
				<div class="panel panel-default bg-blue-opacity border-none">
					<div class="panel-body">
						<h3>
							<span><span>리버풀</span> VS <span>맨체스터시티</span><br></span>
						</h3>
						<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span></small>
					</div>
				</div>
			</div>



			<!-- if over 4 Show more start -->
			<div class="collapse" id="collapseExample">
				<div
					class="col-xs-12 col-sm-6 col-md-3 text-center text-nowrap text-white">
					<div class="panel panel-default bg-blue-opacity border-none">
						<div class="panel-body">
							<h3>
								<span><span>리버풀</span> VS <span>맨체스터시티</span><br></span>
							</h3>
							<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span></small>
						</div>
					</div>
				</div>
				<div
					class="col-xs-12 col-sm-6 col-md-3 text-center text-nowrap text-white">
					<div class="panel panel-default bg-blue-opacity border-none">
						<div class="panel-body">
							<h3>
								<span><span>리버풀</span> VS <span>맨체스터시티</span><br></span>
							</h3>
							<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span></small>
						</div>
					</div>
				</div>
				<div
					class="col-xs-12 col-sm-6 col-md-3 text-center text-nowrap text-white">
					<div class="panel panel-default bg-blue-opacity border-none">
						<div class="panel-body">
							<h3>
								<span><span>리버풀</span> VS <span>맨체스터시티</span><br></span>
							</h3>
							<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span></small>
						</div>
					</div>
				</div>
				<div
					class="col-xs-12 col-sm-6 col-md-3 text-center text-nowrap text-white">
					<div class="panel panel-default bg-blue-opacity border-none">
						<div class="panel-body">
							<h3>
								<span><span>리버풀</span> VS <span>맨체스터시티</span><br></span>
							</h3>
							<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span></small>
						</div>
					</div>
				</div>
			</div>
			<button class="btn btn-primary center-block" type="button"
				data-toggle="collapse" data-target="#collapseExample"
				aria-expanded="false" aria-controls="collapseExample">MORE
			</button>
			<!-- if over 4 Show more end -->
		</div>
		<!-- Weekly Matches end -->

		<!-- Matching & Recruiting ShorView start -->
		<div class="row">
			<!-- Matching ShorView start -->
			<div class="col-sm-12 col-md-6">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>미확정 매칭</dfn>
					</h1>
				</div>
				<div class="table-responsive container-fluid">
					<table
						class="table table-condensed table-hover text-center text-white">
						<tr>
							<td>유형</td>
							<td>경기시간</td>
							<td>지역</td>
							<td>구단명1</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>12.03 13:00-16:00</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- Matching ShorView end -->

			<!-- Recruiting ShorView start -->
			<div class="col-sm-12 col-md-6">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>선수모집</dfn>
					</h1>
				</div>
				<!-- Recruiting ShorView Slide start -->
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<!-- Recruiting[loan] ShorView start -->
						<div class="item active">
							<div class="table-responsive container-fluid">
								<table
									class="table table-condensed table-hover text-center text-white">
									<caption class="text-white text-center"
										style="caption-side: bottom;">
										<h2>용병</h2>
									</caption>
									<tr>
										<td>유형</td>
										<td>경기시간</td>
										<td>지역</td>
										<td>구단명</td>
									</tr>
									<tr>
										<td>축구</td>
										<td>12.03 13:00-16:00</td>
										<td>일산서구</td>
										<td>맨체스터시티</td>
									</tr>
									<tr>
										<td>축구</td>
										<td>12.03 13:00-16:00</td>
										<td>일산서구</td>
										<td>맨체스터시티</td>
									</tr>
									<tr>
										<td>축구</td>
										<td>12.03 13:00-16:00</td>
										<td>일산서구</td>
										<td>맨체스터시티</td>
									</tr>
									<tr>
										<td>축구</td>
										<td>12.03 13:00-16:00</td>
										<td>일산서구</td>
										<td>맨체스터시티</td>
									</tr>
									<tr>
										<td>축구</td>
										<td>12.03 13:00-16:00</td>
										<td>일산서구</td>
										<td>맨체스터시티</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- Recruiting[loan] ShorView end -->

						<!-- Recruiting[transfer] ShorView start -->
						<div class="item">
							<div class="table-responsive container-fluid">
								<table
									class="table table-condensed table-hover text-center text-white">
									<caption class="text-white text-center"
										style="caption-side: bottom;">
										<h2>입단</h2>
									</caption>
									<tr>
										<td>유형</td>
										<td>활동시간대</td>
										<td>지역</td>
										<td>구단명</td>
									</tr>
									<tr>
										<td>축구</td>
										<td>주말</td>
										<td>일산서구</td>
										<td>맨체스터시티</td>
									</tr>
									<tr>
										<td>축구</td>
										<td>토</td>
										<td>일산서구</td>
										<td>맨체스터시티</td>
									</tr>
									<tr>
										<td>축구</td>
										<td>일</td>
										<td>일산서구</td>
										<td>맨체스터시티</td>
									</tr>
									<tr>
										<td>축구</td>
										<td>월</td>
										<td>일산서구</td>
										<td>맨체스터시티</td>
									</tr>
									<tr>
										<td>축구</td>
										<td>주말</td>
										<td>일산서구</td>
										<td>맨체스터시티</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- Recruiting[transfer] ShorView end -->
					</div>
				</div>
				<!-- Recruiting ShorView Slide end -->
			</div>
			<!-- Recruiting ShorView end -->
		</div>
		<!-- Matching & Recruiting ShorView end -->







	</div>
	<!-- container-fluid end -->

<!-- INCLUDE footer.jsp -->
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
	

</body>
</html>