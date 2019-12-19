<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>

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
			<!-- Free Board List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>자유게시판</dfn>
					</h1>
				</div>

				<!-- Free Board List Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<!-- Search condition start -->
					<div class="col-sm-12 col-md-12 enter-row-1">
						<form class="form-inline pull-right">
							<div class="form-group text-white">
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox1" value="#" name="condition"> 작성자
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox2" value="#" name="condition"> 제목
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
								<td>제목</td>
								<td>작성자</td>
								<td>작성일</td>
								<td>댓글</td>
								<td>좋아요</td>
								<td>조회수</td>
								<td>첨부</td>
							</tr>
							<tr class="board-top">
								<td>123</td>
								<td>공지사항</td>
								<td><span class="badge badge-owner">구단주</span></td>
								<td>17:06</td>
								<td>3</td>
								<td>45</td>
								<td>75</td>
								<td><span class="glyphicon glyphicon-folder-open"></span></td>
							</tr>
							<tr>
								<td>1</td>
								<td>활동사진이에요</td>
								<td>홍길동&nbsp;<span class="badge badge-owner">구단주</span></td>
								<td>17:06</td>
								<td>3</td>
								<td>45</td>
								<td>75</td>
								<td><span class="glyphicon glyphicon-folder-open"></span></td>
							</tr>
							<tr>
								<td>2</td>
								<td>활동사진이에요</td>
								<td>홍길동&nbsp;<span class="badge badge-manager">매니저</span></td>
								<td>17:06</td>
								<td>3</td>
								<td>45</td>
								<td>75</td>
								<td><span class="glyphicon glyphicon-folder-open"></span></td>
							</tr>
							<tr>
								<td>3</td>
								<td>배고파요</td>
								<td>홍길동&nbsp;<span class="badge badge-user">일반</span></td>
								<td>2019-12-11</td>
								<td>3</td>
								<td>45</td>
								<td>75</td>
								<td></td>
							</tr>
						</table>
						<button type="button" class="btn btn-default pull-right">글쓰기</button>
					</div>
				</div>
				<!-- Free Board List Table end -->

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
			<!-- Free Board List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->




	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>