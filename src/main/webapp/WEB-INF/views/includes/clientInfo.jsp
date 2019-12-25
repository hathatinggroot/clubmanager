<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
					<form method="post" action="/loginprocess">
						<!-- /login ->Spring Security -->
						<div class="form-group">
							<label for="loginUserId">아이디</label> <input type="text"
								class="form-control" id="loginUserId" name="username">
						</div>
						<div class="form-group">
							<label for="loginUserPw">패스워드</label> <input type="password"
								class="form-control" id="loginUserPw" name="password">
							<!-- 								class="form-control" id="userPw" name="userPw"> -->
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" name="remember-me">
								로그인 유지
							</label>
						</div>
						<!-- CSRF 공격 방지 -->
						<input type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token }">
					</form>

					<!-- social login start -->
					<div class="col-xs-4 col-sm-4 col-md-4 text-center">
						<img class="social-logo" src=/resources/img/naverlogo.png>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 text-center">
						<img class="social-logo" src=/resources/img/kakaologo.png>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 text-center">
						<img class="social-logo" src=/resources/img/googlelogo.png>
					</div>
					<!-- social login end -->
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
					<div class="col-xs-12 col-sm-12 col-md-12 enter-row-4">
						<div role="tabpanel">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#general"
									role="tab" data-toggle="tab">일반</a></li>
								<li role="presentation"><a href="#social" role="tab"
									data-toggle="tab">소셜계정으로 가입하기</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active"
									id="general">
									<form action="/join" method="post">
										<div class="form-group">
											<label for="joinUserId">아이디</label><span id="idChk"></span> <input
												type="text" class="form-control" id="joinUserId"
												name="userId" required>
										</div>
										<div class="form-group">
											<label for="joinUserPw">패스워드</label><span id="pwChk"></span>
											<input type="password" class="form-control" id="joinUserPw"
												name="userPw" required>
										</div>
										<div class="form-group">
											<label for="joinUserPwCheck">패스워드 재입력</label><span
												id="pwReChk"></span> <input type="password"
												class="form-control" id="joinUserPwCheck" name="userPwCheck"
												required>
										</div>
									</form>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="social">
									<!-- social join start -->
									<div class="col-xs-4 col-sm-4 col-md-4 text-center">
										<img class="social-logo" src=/resources/img/naverlogo.png>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-4 text-center">
										<img class="social-logo" src=/resources/img/kakaologo.png>
									</div>
									<div class="col-xs-4 col-sm-4 col-md-4 text-center">
										<img class="social-logo" src=/resources/img/googlelogo.png>
									</div>
									<!-- social join end -->
								</div>
							</div>
						</div>
					</div>
					<hr class="divider">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<form>
							<div class="checkbox">
								<label> <input type="checkbox" id="isOwner" name="auth"
									value="ROLE_OWNER"> 구단주로 가입하기
								</label>
							</div>
							<div class="form-group">
								<label for="joinUserName">이름</label><small>*모든 기록은 해당
									이름으로 유지됩니다</small><input type="text" class="form-control"
									id="joinUserName" name="userName" required>
							</div>
							<div id="asOwner" class="dp-none">
								<div class="form-group">
									<label for="joinClubName">구단명</label><input type="text"
										class="form-control" id="joinClubName" name="clubName">
								</div>
							</div>
							<div class="form-group">
								<label for="joinClubCode">구단코드</label><small>*구단주로 가입시
									자동 생성됩니다</small><span id="clubChk"></span><input type="text"
									class="form-control" id="joinClubCode" name="clubCode" required>
							</div>
						</form>
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

				<form method="post" action="/customLogout">
					<!-- /login ->Spring Security -->
					<!-- CSRF 공격 방지 -->
					<input type="hidden" name="${_csrf.parameterName }"
						value="${_csrf.token }">
				</form>
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
				<h4 class="modal-title" id="gridSystemModalLabel">개인 정보 수정</h4>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<form>
							<div class="form-group">
								<label for="modUserName">이름</label><small>*모든 기록은 해당
									이름으로 유지됩니다</small><input type="text" class="form-control"
									id="modUserName" name="userName" placeholder="홍길동">
							</div>
							<div class="form-group">
								<label for="modClubName">구단명</label><input type="text"
									class="form-control" id="modClubName" name="clubName"
									readonly="readonly">
							</div>
						</form>
					</div>

				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" id="doPInfoMod">수정</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- Personal Info Modify Modal end -->


<script>
	var token = '${_csrf.token }';
	var header = '${_csrf.headerName }';
	
	function include(file){
		var includeJS = document.createElement("script");
		includeJS.type = "text/javascript";
		includeJS.src = file;
		document.body.appendChild(includeJS);
	}
	
	
	include("/resources/js/join.js"); //JOIN MODULE
	
	
	
	$("#doLogin").on("click", function(e) {
		// 		alert("doLogin clicked");
		$("form[action='/loginprocess']").submit();
	})

	$("#doLogout").on("click", function(e) {
		// 		alert("doLogout clicked");
		$("form[action='/customLogout']").submit();
	})
	$("#doPInfoMod").on("click", function(e) {
		alert("doPInfoMod clicked");
	})

	

	//로그인 필요시 로그인 모달 팝업
	var loginModal = "${loginModal}";
	window.onload = function() {
		if (loginModal == "true") {
			$("#login").modal();
			loginModal = "";
		}
	}
</script>
