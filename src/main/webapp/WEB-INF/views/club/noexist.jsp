<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- INCLUDE head.jsp -->
<%@ include file="/WEB-INF/views/includes/head.jsp"%>


<style>
.test {
	
}
</style>
</head>
<body>
	<div class="bg-image-main"></div>

	<!-- container-fluid start -->
	<div class="container-fluid ">

		<!-- INCLUDE nav_top.jsp -->
		<%@ include file="/WEB-INF/views/includes/nav_top.jsp"%>

		<!-- Announcement start-->
		<div class="row vertical-center">
			<div class="text-center text-white text-nowrap test">
				<h1>
					<dfn>소속된 구단이 없습니다</dfn>
				</h1>
					<span class="enter-row-4"></span>
					<button type="button" onclick="location.href='/recruit/recruit_transfer_list';" class="btn btn-primary btn-lg">모집중인
						구단 보기</button>
					<span class="tab-space-1"></span>
					<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#registerClub" >구단
						등록하기</button>
			</div>
		</div>
		<!-- Announcement end-->

	</div>
	<!-- container-fluid end -->

	<!-- Register Club Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="registerClub">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">구단 등록</h4>
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
							<div class="form-group">
								<label for="clubName">구단명</label> <input type="text"
									class="form-control" id="clubName" name="clubName" placeholder="구단명" >
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doRegisterClub">등록</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Register Club Modal end -->



	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>



</body>
</html>