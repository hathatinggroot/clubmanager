<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선수단</title>

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
			<!-- Club Members List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn><ruby>느루 FC<rt class="text-gray">since 19-11-23</rt></ruby></dfn>
					</h1>
				</div>

				<!-- Club Members List Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="table-responsive container-fluid">
						<table
							class="table table-condensed table-hover text-center text-white">
							<tr>
								<td>No</td>
								<td>이름</td>
								<td>입단일</td>
								<td>권한</td>
								<td>관리</td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>2019-12-11</td>
								<td><span class="badge badge-owner">관리자</span></td>
								<td></td>
							</tr>
							<tr>
								<td>2</td>
								<td>김길동</td>
								<td>2019-12-11</td>
								<td><span class="badge badge-manager">매니저</span></td>
								<td><button type="button"
										class="btn btn-primary col-xs-6 col-sm-6 col-md-6" data-toggle="modal" data-target="#modAuth">권한 조정</button>
									<button type="button"
										class="btn btn-default col-xs-6 col-sm-6 col-md-6" data-toggle="modal" data-target="#dismiss">방출</button></td>
							</tr>
							<tr>
								<td>3</td>
								<td>고길동</td>
								<td>2019-12-11</td>
								<td><span class="badge badge-user">일반</span></td>
								<td><button type="button"
										class="btn btn-primary col-xs-6 col-sm-6 col-md-6" data-toggle="modal" data-target="#modAuth">권한 조정</button>
									<button type="button"
										class="btn btn-default col-xs-6 col-sm-6 col-md-6" data-toggle="modal" data-target="#dismiss">방출</button></td>
							</tr>
							<tr>
								<td>4</td>
								<td>고길동</td>
								<td>2019-12-11</td>
								<td><span class="badge badge-user">일반</span></td>
								<td><button type="button"
										class="btn btn-primary col-xs-6 col-sm-6 col-md-6" data-toggle="modal" data-target="#modAuth">권한 조정</button>
									<button type="button"
										class="btn btn-default col-xs-6 col-sm-6 col-md-6" data-toggle="modal" data-target="#dismiss">방출</button></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- Club Members List Table end -->

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
			<!-- Club Members List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->


<!-- Modify Auth Modal start -->
<div class="modal fade" role="dialog"
	aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="modAuth">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">권한 조정</h4>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<form>
						<div class="form-group">
							<span>김길동의 권한을</span>
						</div>
						<div class="form-group">
							<span>매니저</span> 에서
						</div>
						<div class="form-group">
							<select	class="form-control" id="newAuth" name="newAuth">
								<option value="owner">구단주</option>
								<option value="manager">매니저</option>
								<option value="user">일반사용자</option>
							</select>
						</div>
						<div class="form-group">
							(으)로 조정합니다
						</div>
					</form>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" id="doModAuth">권한 조정</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- Modify Auth Modal end -->

<!-- Dismiss Member Modal start -->
<div class="modal fade" role="dialog"
	aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="dismiss">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">선수 방출</h4>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<span>김길동을</span> 정말 방출하시겠습니까?
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" id="doDismiss">방출</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- Dismiss Member Modal end -->


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


<script>
	$("#doModAuth").on("click",function(e){
		alert("doModAuth clicked");
	})
	$("#doDismiss").on("click",function(e){
		alert("doDismiss clicked");
	})
</script>
</body>
</html>