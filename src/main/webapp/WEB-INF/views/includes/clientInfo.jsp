<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!-- Login Modal start -->
<div class="modal fade" role="dialog"
	aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="login">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">로그인</h4>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<form>
						<div class="form-group">
							<label for="userId">아이디</label> <input type="text"
								class="form-control" id="userId" name="userId">
						</div>
						<div class="form-group">
							<label for="userPw">패스워드</label> <input type="password"
								class="form-control" id="userPw" name="userPw">
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" name="remember-me">
								입력을 기억합니다
							</label>
						</div>
					</form>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" id="doLogin">로그인</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- Login Modal end -->

<!-- Join Modal start -->
<div class="modal fade" role="dialog"
	aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="join">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">회원가입</h4>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="col-xs-12 col-sm-6 col-md-6">
						<form>
							<div class="form-group">
								<label for="userId">아이디</label> <input type="text"
									class="form-control" id="userId" name="userId">
							</div>
							<div class="form-group">
								<label for="userPw">패스워드</label> <input type="password"
									class="form-control" id="userPw" name="userPw">
							</div>
							<div class="form-group">
								<label for="userPwCheck">패스워드 재입력</label> <input type="password"
									class="form-control" id="userPwCheck" name="userPwCheck">
							</div>
							<div class="form-group">
								<label for="userName">이름</label> <input type="text"
									class="form-control" id="userName" name="userName">
							</div>
							<div class="form-group">
								<label>포지션<sup class="text-gray">중복선택 가능</sup></label>
								<div class="enter-row-1"></div>
								<label for="GK">GK<input type="checkbox" class="dp-none"
									id="GK" value="GK" name="position"></label> <label for="CB">CB<input
									type="checkbox" class="dp-none" id="CB" value="CB"
									name="position"></label> <label for="LB">LB<input
									type="checkbox" class="dp-none" id="LB" value="LB"
									name="position"></label> <label for="RB">RB<input
									type="checkbox" class="dp-none" id="RB" value="RB"
									name="position"></label> <label for="CDM">CDM<input
									type="checkbox" class="dp-none" id="CDM" value="CDM"
									name="position"></label> <label for="CM">CM<input
									type="checkbox" class="dp-none" id="CM" value="CM"
									name="position"></label> <label for="CAM">CAM<input
									type="checkbox" class="dp-none" id="CAM" value="CAM"
									name="position"></label> <label for="LW">LW<input
									type="checkbox" class="dp-none" id="LW" value="LW"
									name="position"></label> <label for="RW">RW<input
									type="checkbox" class="dp-none" id="RW" value="RW"
									name="position"></label> <label for="CF">CF<input
									type="checkbox" class="dp-none" id="CF" value="CF"
									name="position"></label>
							</div>
							<div class="form-group">
								<label for="userClub">소속 구단</label> <input type="text"
									class="form-control" id="userClub" name="userClub"
									placeholder="없음">
							</div>
						</form>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 text-center">
						<div class="enter-row-4">
							<img src="/resources/img/profile.png">
						</div>
						<input type="file" name="photo">
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" id="doJoin">회원가입</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- Join Modal end -->

<!-- Logout Modal start -->
<div class="modal fade" role="dialog"
	aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="logout">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">로그아웃</h4>
			</div>
			<div class="modal-body">
				<div class="container-fluid text-center">
					<h2>정말 로그아웃하시겠습니까?</h2>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" id="doLogout">로그아웃하기</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- Logout Modal end -->

<!-- Personal Info Modify Modal start -->
<div class="modal fade" role="dialog"
	aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="pInfoMod">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">개인정보수정</h4>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="col-xs-12 col-sm-6 col-md-6">
						<form>
							<div class="form-group">
								<label for="userId">아이디</label> <input type="text"
									class="form-control" id="userId" name="userId" readonly placeholder="userId">
							</div>
							<div class="form-group">
								<label for="userPw">패스워드</label> <input type="password"
									class="form-control" id="userPw" name="userPw" placeholder="password">
							</div>
							<div class="form-group">
								<label for="userPwCheck">패스워드 재입력</label> <input type="password"
									class="form-control" id="userPwCheck" name="userPwCheck" placeholder="password">
							</div>
							<div class="form-group">
								<label for="userPwCurr">현재 패스워드</label> <input type="password"
									class="form-control" id="userPwCurr" name="userPwCurr">
							</div>
							<div class="form-group">
								<label for="userName">이름</label> <input type="text"
									class="form-control" id="userName" name="userName" placeholder="userName">
							</div>
							<div class="form-group">
								<label>포지션<sup class="text-gray">중복선택 가능</sup></label>
								<div class="enter-row-1"></div>
								<label for="GK">GK<input type="checkbox" class="dp-none"
									id="GK" value="GK" name="position"></label> <label for="CB">CB<input
									type="checkbox" class="dp-none" id="CB" value="CB"
									name="position"></label> <label for="LB">LB<input
									type="checkbox" class="dp-none" id="LB" value="LB"
									name="position"></label> <label for="RB">RB<input
									type="checkbox" class="dp-none" id="RB" value="RB"
									name="position"></label> <label for="CDM">CDM<input
									type="checkbox" class="dp-none" id="CDM" value="CDM"
									name="position"></label> <label for="CM">CM<input
									type="checkbox" class="dp-none" id="CM" value="CM"
									name="position"></label> <label for="CAM">CAM<input
									type="checkbox" class="dp-none" id="CAM" value="CAM"
									name="position"></label> <label for="LW">LW<input
									type="checkbox" class="dp-none" id="LW" value="LW"
									name="position" checked></label> <label for="RW">RW<input
									type="checkbox" class="dp-none" id="RW" value="RW"
									name="position" checked></label> <label for="CF">CF<input
									type="checkbox" class="dp-none" id="CF" value="CF"
									name="position" checked></label>
							</div>
							<div class="form-group">
								<label for="userClub">소속 구단</label> <input type="text"
									class="form-control" id="userClub" name="userClub"
									placeholder="느루FC">
							</div>
						</form>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 text-center">
						<div class="enter-row-4">
							<img src="/resources/img/profile.png">
						</div>
						<input type="file" name="photo">
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" id="doPInfoMod">수정완료</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- Personal Info Modify Modal end -->


<script>
	$("#doLogin").on("click", function(e) {
		alert("doLogin clicked");
	})
	$("#doJoin").on("click", function(e) {
		alert("doJoin clicked");
	})
	$("#doLogout").on("click", function(e) {
		alert("doLogout clicked");
	})
	$("#doPInfoMod").on("click", function(e) {
		alert("doPInfoMod clicked");
	})
</script>
