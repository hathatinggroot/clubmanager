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
								로그인 유지
							</label>
						</div>
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
									<form>
										<div class="form-group">
											<label for="userId">아이디</label><span class="possible"><small>사용
													가능한 아이디입니다</small></span> <input type="text" class="form-control"
												id="userId" name="userId">
										</div>
										<div class="form-group">
											<label for="userPw">패스워드</label><span class="impossible"><small>형식이
													올바르지 않습니다</small></span> <input type="password" class="form-control"
												id="userPw" name="userPw">
										</div>
										<div class="form-group">
											<label for="userPwCheck">패스워드 재입력</label><span
												class="possible"><small>일치합니다</small></span> <input
												type="password" class="form-control" id="userPwCheck"
												name="userPwCheck">
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
								<label> <input type="checkbox"  id="isOwner" name="auth" value="true">
									구단주로 가입하기
								</label>
							</div>
							<div class="form-group">
								<label for="userName">이름</label><small>*모든 기록은 해당 이름으로
									유지됩니다</small><input type="text" class="form-control" id="userName"
									name="userName">
							</div>
							<div id="asOwner" class="dp-none">
								<div class="form-group">
									<label for="clubName">구단명</label><input type="text"
										class="form-control" id="clubName" name="clubName">
								</div>
							</div>
							<div class="form-group">
								<label for="clubCode">구단코드</label><small>*구단주로 가입시 자동
									생성됩니다</small><input type="text" class="form-control" id="clubCode"
									name="clubCode">
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
								<label for="userName">이름</label><small>*모든 기록은 해당 이름으로
									유지됩니다</small><input type="text" class="form-control" id="userName"
									name="userName" placeholder="홍길동">
							</div>
							<div class="form-group">
								<label for="clubName">구단명</label><input type="text"
									class="form-control" id="clubName" name="clubName"
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
	
	var isOwner = document.getElementById("isOwner");
	var asOwner = document.getElementById("asOwner");
	
	var ownerCheck = function(){
		if(isOwner.checked){
			asOwner.style.display="block";
		}else{
			asOwner.style.display="none";
		}
	}
	isOwner.addEventListener("click",ownerCheck);
</script>
