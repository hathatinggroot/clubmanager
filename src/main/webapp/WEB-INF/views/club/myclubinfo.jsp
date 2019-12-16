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

		<!-- inner nav start -->
		<div class="row">
			<div class="col-md-4 text-center text-white text-nowrap">
				<h1>
					<dfn>
						<a href="#match">최근 경기 및 다음 경기</a>
					</dfn>
				</h1>
			</div>
			<div class="col-md-4 text-center text-white text-nowrap">
				<h1>
					<dfn>
						<a href="#record">기록실</a>
					</dfn>
				</h1>
			</div>

			<div class="col-md-4 text-center text-white text-nowrap">
				<h1>
					<dfn>
						<a href="#squad">선수단</a>
					</dfn>
				</h1>
			</div>
		</div>
		<!-- inner nav end -->

		<!-- latest Matches start -->
		<div class="row">

			<div class="text-center text-white text-nowrap" id="match">
				<h1>
					<dfn>최근 경기 및 다음 경기</dfn>
				</h1>
			</div>

			<div
				class="col-xs-12 col-sm-6 col-md-3 text-center text-nowrap text-white">
				<div class="panel panel-default bg-blue-opacity border-none">
					<div class="panel-body">
						<h3>
							<span>VS <span>맨체스터시티</span>&nbsp;<span>[8:5]</span>&nbsp;<span
								class="badge badge-win">승</span><br></span>
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
							<span>VS <span>맨체스터시티</span>&nbsp;<span>[8:8]</span>&nbsp;<span
								class="badge badge-draw">무</span><br></span>
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
							<span>VS <span>맨체스터시티</span>&nbsp;<span>[3:5]</span>&nbsp;<span
								class="badge badge-lose">패</span><br></span>
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
							<span> VS <span>맨체스터시티</span><br></span>
						</h3>
						<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span></small>
					</div>
				</div>
			</div>



			<!-- Show All start -->
			<div class="collapse" id="collapseExample">
				<!-- Matching ShorView start -->
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
				<!-- Matching ShorView end -->
			</div>
			<button class="btn btn-primary center-block" type="button"
				data-toggle="collapse" data-target="#collapseExample"
				aria-expanded="false" aria-controls="collapseExample">일정
				전체보기</button>
			<!-- Show All end -->
		</div>
		<!-- Weekly Matches end -->


		<!-- Record start-->
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
						<h3>평균 실점</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>
							3.4&nbsp;<small>총 343</small>
						</h1>
					</div>
				</div>
			</div>

			<div class="col-xs-6 col-sm-6 col-md-3">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>승률</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>85</h1>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-3">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>승</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>85</h1>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-3">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>무</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>3</h1>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-3">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>패</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>12</h1>
					</div>
				</div>
			</div>
			<!-- Club Record end -->

			<!-- Personal Ranking start -->
			<div class="col-sm-12 col-md-12">
				<div class="table-responsive container-fluid">
					<table
						class="table table-condensed table-hover text-center text-white">
						<tr>
							<td>순위</td>
							<td>파워랭킹</td>
							<td>득점</td>
							<td>도움</td>
							<td>세이브</td>
						</tr>
						<tr>
							<td>1</td>
							<td>홍길동&nbsp;<small class="text-warning">34</small></td>
							<td>손흥민&nbsp;<small class="text-warning">45</small></td>
							<td>포그바&nbsp;<small class="text-warning">31</small></td>
							<td>테어슈테켄&nbsp;<small class="text-warning">54</small></td>
						</tr>
						<tr>
							<td>2</td>
							<td>홍길동&nbsp;<small class="text-warning">34</small></td>
							<td>손흥민&nbsp;<small class="text-warning">45</small></td>
							<td>포그바&nbsp;<small class="text-warning">31</small></td>
							<td>테어슈테켄&nbsp;<small class="text-warning">54</small></td>
						</tr>
						<tr>
							<td>3</td>
							<td>홍길동&nbsp;<small class="text-warning">34</small></td>
							<td>손흥민&nbsp;<small class="text-warning">45</small></td>
							<td>포그바&nbsp;<small class="text-warning">31</small></td>
							<td>테어슈테켄&nbsp;<small class="text-warning">54</small></td>
						</tr>
						<tr>
							<td>4</td>
							<td>홍길동&nbsp;<small class="text-warning">34</small></td>
							<td>손흥민&nbsp;<small class="text-warning">45</small></td>
							<td>포그바&nbsp;<small class="text-warning">31</small></td>
							<td>테어슈테켄&nbsp;<small class="text-warning">54</small></td>
						</tr>
						<tr>
							<td>5</td>
							<td>홍길동&nbsp;<small class="text-warning">34</small></td>
							<td>손흥민&nbsp;<small class="text-warning">45</small></td>
							<td>포그바&nbsp;<small class="text-warning">31</small></td>
							<td>테어슈테켄&nbsp;<small class="text-warning">54</small></td>
						</tr>
						<tr>
							<td>6</td>
							<td>홍길동&nbsp;<small class="text-warning">34</small></td>
							<td>손흥민&nbsp;<small class="text-warning">45</small></td>
							<td>포그바&nbsp;<small class="text-warning">31</small></td>
							<td>테어슈테켄&nbsp;<small class="text-warning">54</small></td>
						</tr>
						<tr>
							<td>7</td>
							<td>홍길동&nbsp;<small class="text-warning">34</small></td>
							<td>손흥민&nbsp;<small class="text-warning">45</small></td>
							<td>포그바&nbsp;<small class="text-warning">31</small></td>
							<td>테어슈테켄&nbsp;<small class="text-warning">54</small></td>
						</tr>
						<tr>
							<td>8</td>
							<td>홍길동&nbsp;<small class="text-warning">34</small></td>
							<td>손흥민&nbsp;<small class="text-warning">45</small></td>
							<td>포그바&nbsp;<small class="text-warning">31</small></td>
							<td>테어슈테켄&nbsp;<small class="text-warning">54</small></td>
						</tr>
						<tr>
							<td>9</td>
							<td>홍길동&nbsp;<small class="text-warning">34</small></td>
							<td>손흥민&nbsp;<small class="text-warning">45</small></td>
							<td>포그바&nbsp;<small class="text-warning">31</small></td>
							<td>테어슈테켄&nbsp;<small class="text-warning">54</small></td>
						</tr>
						<tr>
							<td>10</td>
							<td>홍길동&nbsp;<small class="text-warning">34</small></td>
							<td>손흥민&nbsp;<small class="text-warning">45</small></td>
							<td>포그바&nbsp;<small class="text-warning">31</small></td>
							<td>테어슈테켄&nbsp;<small class="text-warning">54</small></td>
						</tr>
					</table>
				</div>

				<!-- Ranking search start -->
				<div class="text-center enter-row-1">
					<form class="form-inline">
						<div class="form-group" style="display: inline-block;">
							<label class="sr-only" for="playerName">선수명</label> <input
								type="email" class="form-control" style="width: 200px;"
								id="playerName" placeholder="선수명">
						</div>
						<button type="submit" class="btn btn-default">순위 검색</button>
					</form>
				</div>
				<div class="table-responsive container-fluid">
					<table
						class="table table-condensed table-hover text-center text-white">
						<tr>
							<td>선수명</td>
							<td>파워랭킹</td>
							<td>득점</td>
							<td>도움</td>
							<td>세이브</td>
						</tr>
						<tr>
							<td>홍길동</td>
							<td>2&nbsp;<small class="text-warning">34</small></td>
							<td>4&nbsp;<small class="text-warning">45</small></td>
							<td>15&nbsp;<small class="text-warning">31</small></td>
							<td>18&nbsp;<small class="text-warning">54</small></td>
						</tr>
					</table>
				</div>
				<!-- Ranking search end -->
			</div>
			<!-- Personal Ranking end -->
		</div>
		<!-- Record end-->

		<!-- squad start-->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="squad">
				<hr class="divider">
				<h1>
					<dfn>선수단</dfn>
				</h1>
			</div>

			<div class="col-xs-6 col-sm-6 col-md-6">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>규모</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>34</h1>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body">
						<h3>평균 연령</h3>
					</div>
					<div class="panel-footer bg-none border-none">
						<h1>28.7</h1>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">홍길동</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">MF</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1992.05.22</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">홍길동</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">MF</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1992.05.22</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">홍길동</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">MF</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1992.05.22</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">홍길동</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">MF</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1992.05.22</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">홍길동</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">MF</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1992.05.22</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">홍길동</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">MF</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1992.05.22</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">홍길동</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">MF</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1992.05.22</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">홍길동</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">MF</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1992.05.22</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">홍길동</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-center">MF</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1992.05.22</div>
					</div>
				</div>
			</div>
		</div>
		<!-- squad end-->

		


	</div>
	<!-- container-fluid end -->

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>