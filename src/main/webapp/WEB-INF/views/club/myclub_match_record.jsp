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
			<div class="col-md-6 text-center text-white text-nowrap">
				<h1>
					<dfn>
						<a href="/club/myclub_match_record">경기 기록</a>
					</dfn>
				</h1>
			</div>
			<div class="col-md-6 text-center text-white text-nowrap">
				<h1>
					<dfn>
						<a href="/club/myclub_match_record_write">기록 하기</a>
					</dfn>
				</h1>
			</div>
		</div>
		<!-- inner nav end -->
		
		<!-- Match Short View start -->
		<div
			class="text-nowrap text-white short-view">
			<div class="panel panel-default bg-blue-opacity border-none">
				<div class="panel-body">
					<h1>
						<span>VS <span>맨체스터시티</span><br></span>
					</h1>
					<small><span><span>12.03 13:00 - 15:00</span>&nbsp;<span>대화구장</span></span><br></small>
					<h1>
						<span><span>[8:5]</span>&nbsp;<span
							class="badge badge-win">승</span></span>
					</h1>
				</div>
			</div>
		</div>
		<!-- Match Short View end -->

		<!-- Match's Record comment start -->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="match">
			<hr class="divider">
				<h1>
					<dfn>코멘트</dfn>
				</h1>
			</div>
			<div class="match-comment">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-footer bg-none border-none">
						<div class="center-block">이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다이번 경기는 아주 값진 승리였습니다</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Match's Record comment end -->
		
		
		<!-- Match's Record goal start -->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="match">
			<hr class="divider">
				<h1>
					<dfn>득점</dfn>
				</h1>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">4</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">2</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Weekly Matches goal end -->

		<!-- Match's Record assist start -->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="match">
			<hr class="divider">
				<h1>
					<dfn>도움</dfn>
				</h1>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">4</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">2</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
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
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">1</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Weekly Matches assist end -->
		
		<!-- Match's Record save start -->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="match">
			<hr class="divider">
				<h1>
					<dfn>세이브</dfn>
				</h1>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">4</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">2</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Weekly Matches save end -->


		<!-- Match's Record player start -->
		<div class="row">
			<div class="text-center text-white text-nowrap" id="match">
			<hr class="divider">
				<h1>
					<dfn>참석</dfn>
				</h1>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-sm-3 col-md-2 ">
				<div
					class="panel panel-default bg-none border-none text-center text-white text-nowrap">
					<div class="panel-body profile text-center">
						<img src="/resources/img/profile.png">
					</div>
					<div class="panel-footer bg-none border-none">
						<div class="col-xs-12 col-sm-12 col-md-12 text-center">홍길동</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Weekly Matches player end -->
	</div>
	<!-- container-fluid end -->













	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>