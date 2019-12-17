<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판-글쓰기(수정)</title>

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
			<!-- Free Board Write start-->
			<div class="row">
				<div class="text-center text-white text-nowrap enter-row-4">
					<h1>
						<dfn>자유게시판 - 수정</dfn>
					</h1>
				</div>

				<!-- Free Board List Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<form>
						<div class="form-group">
							<input type="text" class="form-control input-lg" name="title"
								autofocus placeholder="기존의 제목">
						</div>
						<div class="form-group text-white">
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox1" value="#" name="isAnnouncement">
								공지로 등록
							</label>
						</div>
						<div class="form-group">
							<input type="file" class="form-control" name="atthch" multiple>
						</div>
						<div class="form-group text-white">
							<fieldset>
								<legend class="text-white">첨부파일 목록</legend>
								<div class="scroll-box-attach">test.txt</div>
							</fieldset>
						</div>
						<div class="form-group text-center">
							<textarea class="form-control input-lg" name="content" rows="20"
								placeholder="기존의 내용"></textarea>
						</div>
						<button class="btn btn-default btn-block">
							<h2>수정 완료</h2>
						</button>

					</form>
				</div>
				<!-- Free Board List Table end -->
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