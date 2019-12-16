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
	<div class="container-fluid">

		<!-- INCLUDE nav_top.jsp -->
		<%@ include file="/WEB-INF/views/includes/nav_top.jsp"%>

		<!-- Content View start -->
		<div class="row">

			<div class="text-center text-white text-nowrap" id="match">
				<h1>
					<dfn>입단</dfn>
				</h1>
			</div>

			<!-- content start -->
			<div class="col-sm-12 col-md-12">
				<div class="table-responsive container-fluid">
					<table class="table table-condensed text-center text-white">
						<tr>
							<td>경기 유형</td>
							<td>활동 시간대</td>
							<td>지역</td>
							<td>구단명</td>
							<td>수정일</td>
						</tr>
						<tr>
							<td>축구</td>
							<td>토 일</td>
							<td>일산서구</td>
							<td>맨체스터시티</td>
							<td>2019-12-01 16:28</td>
						</tr>
						<tr>
							<td colspan="5">함께 즐겁게 운동하실분 구합니다</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- content end -->

			<!-- inner menu start -->
			<div class="col-sm-12 col-md-12 enter-row-1">
				<a href="/recruit/recruit_transfer_list"><button type="button"
						class="btn btn-default col-md-2 pull-left">목록</button></a>
				<!-- inner menu(writer only) start -->
				<button type="button" id="modifyBtn" data-toggle="modal"
					data-target="#modify" class="btn btn-default col-md-2 pull-right ">수정</button>
				<button type="button" id="deleteBtn" data-toggle="modal"
					data-target="#delete" class="btn btn-default col-md-2 pull-right ">삭제</button>
				<!-- inner menu(writer only) end -->
			</div>
			<!-- inner menu end -->
			<!-- inner menu(viewer only) start -->
			<div class="col-sm-12 col-md-12 enter-row-1">
				<button type="button" data-toggle="modal" data-target="#reqeustJoin"
					class="btn btn-success btn-block ">입단 신청</button>
			</div>
			<!-- inner menu(viewer only) end -->
		</div>
		<!-- Content View end -->

		<!-- Comments start -->
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="table-responsive container-fluid col-sm-12 col-md-12">
					<table class="table table-condensed text-center text-white">
						<tr>
							<td>선수명</td>
							<td>연락처</td>
							<td>메시지</td>
							<td>수정일</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>홍길동</td>
							<td>010-1234-5678</td>
							<td>매너있게 함께운동하고싶어요!</td>
							<td>2019-12-01 16:28</td>
							<!-- Writer only button start -->
							<td><button type="button" data-toggle="modal"
									data-target="#acceptJoin" class="btn btn-default btn-block ">수락하기</button></td>
							<!-- Writer only button end -->
						</tr>
						<tr>
							<td>홍길동</td>
							<td>010-1234-5678</td>
							<td>매너있게 함께운동하고싶어요!~~!!</td>
							<td>2019-12-01 16:28</td>
							<!-- Comment Writer only button start -->
							<td><button type="button" data-toggle="modal"
									data-target="#modifyComment"
									class="btn btn-default col-xs-6 col-sm-6 col-md-6">수정</button>
								<button type="button" data-toggle="modal"
									data-target="#deleteComment"
									class="btn btn-default col-xs-6 col-sm-6 col-md-6">삭제</button>
							</td>
							<!-- Comment Writer only button end -->
						</tr>
					</table>
				</div>
			</div>

		</div>
		<!-- Comments end -->

	</div>
	<!-- container-fluid end -->

	<!-- modify Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="modify">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">수정</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form>
							<div class="form-group">
								<label for="type">경기 유형</label> <select class="form-control"
									id="type" name="type">
									<option value="전체">전체</option>
									<option value="S" selected>축구</option>
									<option value="F">풋살</option>
								</select>
							</div>
							<div class="form-group">
								<label for="area">지역</label> <select class="form-control"
									id="area" name="area">
									<option value="전체">전체</option>
									<option value="일산서구">일산서구</option>
									<option value="일산동구" selected>일산동구</option>
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
									class="dp-none" id="Sat" value="sat" name="date" checked>
								</label> <label for="Sun">일 <input type="checkbox"
									class="dp-none" id="Sun" value="sun" name="date" checked>
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
									rows="3" cols="20" placeholder="공격수 1, 수비수 1 구합니다"></textarea>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doModify">수정완료</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- modify Modal end -->


	<!-- delete Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="delete">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">삭제</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid text-center">
						<h2>정말 삭제하시겠습니까?</h2>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doDelete">삭제하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- delete Modal end -->


	<!-- RequestJoin Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="reqeustJoin">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">입단 신청</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form>
							<div class="form-group">
								<label for="name">이름</label> <input type="text"
									class="form-control" id="name" name="name">
							</div>
							<div class="form-group">
								<label for="phone">전화번호<sup class="text-gray">연락처는
										해당 구단주에게만 보입니다</sup></label> <input type="tel" class="form-control"
									id="phone" name="phone">
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
					<button type="button" class="btn btn-primary" id="doRequestJoin">입단
						신청</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- RequestJoin Modal end -->

	<!-- AcceptJoin Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="acceptJoin">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">입단 요청 수락</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid text-center">
						<h2>정말 수락하시겠습니까?</h2>
						<h4 class="text-gray">사전에 연락하여 조율하는 것을 권장합니다</h4>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doAcceptJoin">수락하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- AcceptJoin Modal end -->

	<!-- Comment Modify Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="modifyComment">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">입단 신청내용 수정</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form>
							<div class="form-group">
								<label for="name">이름</label> <input type="text"
									class="form-control" id="name" name="name" placeholder="홍길동">
							</div>
							<div class="form-group">
								<label for="phone">전화번호<sup class="text-gray">연락처는
										해당 구단주에게만 보입니다</sup></label> <input type="tel" class="form-control"
									id="phone" name="phone" placeholder="010-1234-5678">
							</div>
							<div class="form-group">
								<label for="message">메시지</label>
								<textarea class="form-control" id="message" name="message"
									rows="3" cols="20" placeholder="공격수 가능합니다!!"></textarea>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doModifyComment">수정완료</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Comment Modify Modal end -->


	<!-- Comments delete Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="deleteComment">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">요청 삭제</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid text-center">
						<h2>정말 삭제하시겠습니까?</h2>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doDeleteComment">삭제하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Comments delete Modal end -->



	<script>

		$("#doModify").on("click", function(e) {
			alert("doModify clicked");
		})
		$("#doDelete").on("click", function(e) {
			alert("doDelete clicked");
		})
		$("#doRequestJoin").on("click", function(e) {
			alert("doRequestJoin clicked");
		})
		$("#doAcceptJoin").on("click", function(e) {
			alert("doAcceptJoin clicked");
		})
		$("#doModifyComment").on("click", function(e) {
			alert("doModifyComment clicked");
		})
		$("#doDeleteComment").on("click", function(e) {
			alert("doDeleteComment clicked");
		})
	</script>


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>