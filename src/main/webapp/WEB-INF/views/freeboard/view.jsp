<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판-글 상세 보기</title>

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
			<!-- Free Board View start-->
			<div class="row">
				<div class="text-center text-white text-nowrap enter-row-4">
					<h1>
						<dfn>자유게시판 - 글 상세 보기</dfn>
					</h1>
				</div>




				<!-- Free Board Content Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12 enter-row-4">
					<div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading input-lg">
							<div class="col-xs-6 col-sm-6 col-md-6">
								홍길동 <small>2019-12-15</small>
							</div>
							<div class="col-xs-2 col-sm-2 col-md-2">
								<span class="glyphicon glyphicon-comment">3</span>
							</div>
							<div class="col-xs-2 col-sm-2 col-md-2">
								<span class="glyphicon glyphicon-thumbs-up">3</span>
							</div>
							<div class="col-xs-2 col-sm-2 col-md-2">
								<span class="glyphicon glyphicon-eye-open">33</span>
							</div>
						</div>
						<div class="panel-body">
							<div class="col-xs-12 col-sm-12 col-md-12 large-font">
								활동사진입니다</div>
							<div>
								<p>글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다글내용입니다</p>
							</div>
							<div class="scroll-box-attach">
								<ul class="list-inline">
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
									<li>첨부파일1.txt</li>
								</ul>
							</div>


							<div>
								<button type="button" class="btn btn-default pull-left">목록</button>
								<span class="pull-right">
									<button type="button" class="btn btn-default pull-left">수정</button>
									<button type="button" class="btn btn-default">삭제</button>
								</span>
							</div>
							<hr>
							<div class="comment-box ">
								<textarea class="col-xs-12 col-sm-11 col-md-11"
									placeholder="댓글을 남겨주세요"></textarea>
								<button type="button"
									class="btn btn-default input-lg col-xs-12 col-sm-1 col-md-1">등록</button>
							</div>
						</div>


						<!-- Table -->
						<div class="table-responsive container-fluid scroll-reply">
							<table class="table table-condensed text-center">
								<colgroup>
									<col width=10% />
									<col width=70% />
									<col width=10% />
									<col width=10% />
								</colgroup>
								<tr>
									<td>홍길동</td>
									<td><p>좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료
										감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은
										자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료
										감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은
										자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료
										감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다좋은 자료 감사합니다</p></td>
									<td>2019-12-15 17:45</td>
									<td><button type="button" class="btn btn-default">수정</button>
										<button type="button" class="btn btn-default">삭제</button></td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>좋은 자료 감사합니다</td>
									<td>2019-12-15 17:45</td>
									<td></td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>좋은 자료 감사합니다</td>
									<td>2019-12-15 17:45</td>
									<td></td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>좋은 자료 감사합니다</td>
									<td>2019-12-15 17:45</td>
									<td></td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>좋은 자료 감사합니다</td>
									<td>2019-12-15 17:45</td>
									<td></td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>좋은 자료 감사합니다</td>
									<td>2019-12-15 17:45</td>
									<td></td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>좋은 자료 감사합니다</td>
									<td>2019-12-15 17:45</td>
									<td></td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>좋은 자료 감사합니다</td>
									<td>2019-12-15 17:45</td>
									<td></td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>좋은 자료 감사합니다</td>
									<td>2019-12-15 17:45</td>
									<td></td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>좋은 자료 감사합니다</td>
									<td>2019-12-15 17:45</td>
									<td></td>
								</tr>
								<tr>
									<td>홍길동</td>
									<td>좋은 자료 감사합니다</td>
									<td>2019-12-15 17:45</td>
									<td></td>
								</tr>
							</table>
						</div>
					</div>

				</div>
				<!-- Free Board Content Table end -->
			</div>
			<!-- Free Board View end-->

		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->




	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>