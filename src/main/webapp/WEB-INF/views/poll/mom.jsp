<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Man Of The Match</title>

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
			<!--  MoM start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>Man Of The Match</dfn>
					</h1>
				</div>

				<!-- poll info start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<div class="col-xs-12 col-sm-6 col-md-6 enter-row-1">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span>VS&nbsp;</span><span class="large-font">222FC</span>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span>2019-12-11 19:00</span><span class="tab-space-1">백석구장</span>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 enter-row-4">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span class="large-font">3일 14:33:25</span>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span>남은 투표 시간</span>&nbsp;
							<button type="button" class="btn btn-default">시간 조정</button>
						</div>
					</div>
				</div>
				<!-- poll info end -->

				<!-- Participated Player list Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="table-responsive container-fluid">
						<table
							class="table table-condensed table-hover text-center text-white">
							<tr>
								<td>No</td>
								<td>이름</td>
								<td>득점</td>
								<td>도움</td>
								<td>세이브</td>
								<td>선택</td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>3</td>
								<td>2</td>
								<td>0</td>
								<td><button type="button" class="btn btn-default btn-block"  data-toggle="modal" data-target="#vote">선택</button></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>3</td>
								<td>2</td>
								<td>0</td>
								<td><button type="button" class="btn btn-default btn-block"  data-toggle="modal" data-target="#vote">선택</button></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>3</td>
								<td>2</td>
								<td>0</td>
								<td><button type="button" class="btn btn-default btn-block"  data-toggle="modal" data-target="#vote">선택</button></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>3</td>
								<td>2</td>
								<td>0</td>
								<td><button type="button" class="btn btn-default btn-block"  data-toggle="modal" data-target="#vote">선택</button></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>3</td>
								<td>2</td>
								<td>0</td>
								<td><button type="button" class="btn btn-default btn-block"  data-toggle="modal" data-target="#vote">선택</button></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>3</td>
								<td>2</td>
								<td>0</td>
								<td><button type="button" class="btn btn-default btn-block"  data-toggle="modal" data-target="#vote">선택</button></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>3</td>
								<td>2</td>
								<td>0</td>
								<td><button type="button" class="btn btn-default btn-block"  data-toggle="modal" data-target="#vote">선택</button></td>
							</tr>
							<tr>
								<td>1</td>
								<td>홍길동</td>
								<td>3</td>
								<td>2</td>
								<td>0</td>
								<td><button type="button" class="btn btn-default btn-block"  data-toggle="modal" data-target="#vote">선택</button></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- Participated Player list Table end -->
			</div>
			<!--  MoM end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->
	
	<!-- Vote Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="vote">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">MoM 투표</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid text-center">
						<h2><span class="large-font">홍길동</span>님에게 투표합니다</h2>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doVote">투표하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Vote Modal end -->
	
	
	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


	<script>
		$("#doVote").on("click",function(e){
			alert("doVote clicked");
		})
	</script>
</body>
</html>