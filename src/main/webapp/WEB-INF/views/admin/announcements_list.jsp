<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항</title>

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
			<!-- Announcement List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>공지 사항</dfn>
					</h1>
				</div>

				<!-- Announcement list Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<!-- Search condition start -->
					<div class="col-sm-12 col-md-12 enter-row-1">
						<form class="form-inline pull-right">
							<div class="form-group text-white">
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox1" value="#" name="condition"> 자유게시판
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox2" value="#" name="condition"> 투표
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox3" value="#" name="condition"> 전술
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
								<td>카테고리</td>
								<td>글제목</td>
								<td>수정일</td>
							</tr>
							<tr>
								<td>1</td>
								<td>전체</td>
								<td>서비스 점검 안내</td>
								<td>17:46</td>
							</tr>
							<tr>
								<td>2</td>
								<td>자유게시판</td>
								<td>게시판 에티켓 준수 강조</td>
								<td>2019-12-11</td>
							</tr>
							<tr>
								<td>3</td>
								<td>투표</td>
								<td>투표 방법</td>
								<td>2019-12-01</td>
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
			<!-- Announcement List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>