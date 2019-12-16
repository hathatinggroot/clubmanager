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

		<!-- Transfer List start -->
		<div class="row">

			<div class="text-center text-white text-nowrap" id="match">
				<h1>
					<dfn>입단</dfn>
				</h1>
			</div>

			<div class="col-sm-12 col-md-12 enter-row-1">
				<button type="button" id="searchBtn" data-toggle="modal"
					data-target="#search" class="btn btn-default col-md-2 pull-right ">검색</button>
				<button type="button" class="btn btn-default col-md-2 pull-right"
					data-toggle="modal" data-target="#register">구단 등록</button>
			</div>
			<!-- table start -->
			<div class="col-sm-12 col-md-12">
				<div class="table-responsive container-fluid">
					<table
						class="table table-condensed table-hover text-center text-white">
						<tr>
							<td>경기 유형</td>
							<td>활동 시간대</td>
							<td>지역</td>
							<td>구단명</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
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
							<td>토</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
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
							<td>토</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
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
							<td>토</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
						</tr>
					</table>
				</div>
			</div>
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
		</div>
		<!-- Transfer List end -->


	</div>
	<!-- container-fluid end -->

	<!-- Search Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="search">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">검색</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form>
							<div class="form-group">
								<label for="type">경기 유형</label> <select class="form-control"
									id="type" name="type">
									<option value="전체">전체</option>
									<option value="S">축구</option>
									<option value="F">풋살</option>
								</select>
							</div>
							<div class="form-group">
								<label for="area">지역</label> <select class="form-control"
									id="area" name="area">
									<option value="전체">전체</option>
									<option value="일산서구">일산서구</option>
									<option value="일산동구">일산동구</option>
								</select>
							</div>
							<div class="form-group">
								<label>활동 시간대</label>
								<div class="enter-row-1"></div>
								<label for="mon">월<input type="checkbox" class="dp-none"
									id="mon" value="mon" name="date">
								</label> <label for="tue">화 <input type="checkbox"
									class="dp-none" id="tue" value="tue" name="date">
								</label> <label for="wed">수 <input type="checkbox"
									class="dp-none" id="wed" value="wed" name="date">
								</label> <label for="thu">목 <input type="checkbox"
									class="dp-none" id="thu" value="thu" name="date">
								</label> <label for="fri">금 <input type="checkbox"
									class="dp-none" id="fri" value="fri" name="date">
								</label> <label for="sat">토 <input type="checkbox"
									class="dp-none" id="sat" value="sat" name="date">
								</label> <label for="sun">일 <input type="checkbox"
									class="dp-none" id="sun" value="sun" name="date">
								</label>
							</div>
						</form>
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doSearch">검색</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Search Modal end -->

	<!-- Register Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="register">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">등록</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form>
							<div class="form-group">
								<label for="type">경기 유형</label> <select class="form-control"
									id="type" name="type">
									<option value="전체">전체</option>
									<option value="S">축구</option>
									<option value="F">풋살</option>
								</select>
							</div>
							<div class="form-group">
								<label for="area">지역</label> <select class="form-control"
									id="area" name="area">
									<option value="전체">전체</option>
									<option value="일산서구">일산서구</option>
									<option value="일산동구">일산동구</option>
								</select>
							</div>
							<div class="form-group">
								<label>활동 시간대</label>
								<div class="enter-row-1"></div>
								<label for="Mon">월<input type="checkbox" class="dp-none"
									id="Mon" value="mon" name="date">
								</label> <label for="Tue">화 <input type="checkbox"
									class="dp-none" id="Tue" value="tue" name="date">
								</label> <label for="Wed">수 <input type="checkbox"
									class="dp-none" id="Wed" value="wed" name="date">
								</label> <label for="Thu">목 <input type="checkbox"
									class="dp-none" id="Thu" value="thu" name="date">
								</label> <label for="Fri">금 <input type="checkbox"
									class="dp-none" id="Fri" value="fri" name="date">
								</label> <label for="Sat">토 <input type="checkbox"
									class="dp-none" id="Sat" value="sat" name="date">
								</label> <label for="Sun">일 <input type="checkbox"
									class="dp-none" id="Sun" value="sun" name="date">
								</label>
							</div>
							<div class="form-group">
								<label for="clubName">구단명</label> <input type="text"
									class="form-control" id="clubName" name="clubName"
									placeholder="느루FC" readonly>
							</div>
							<div class="form-group">
								<label for="message">메시지</label>
								<textarea class="form-control" id="message" name="message"
									rows="3" cols="20"></textarea>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doRegister">등록</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Register Modal end -->



	<script>

		$("#doSearch").on("click", function(e) {
			alert("doSearch clicked");
		})

		$("#doRegister").on("click", function(e) {
			alert("doRegister clicked");
		})
	</script>


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>