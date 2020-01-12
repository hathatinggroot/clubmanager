<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<sec:authentication property="principal" var="principal" />

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
							<label> <input type="checkbox" id="remember-me"
								name="rememberMe"> 로그인 유지
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
									id="modUserName" name="userName">
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


<!-- announcement popup Modal start -->
<div class="modal fade" role="dialog"
	aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="annPopup">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="gridSystemModalLabel">공지사항</h4>
			</div>
			<div class="modal-body">
				<div class="container-fluid text-center" id="annDP">
					<c:if test="${popupList !=null }">
						<c:forEach items="${popupList}" var="pop">
							<div>
								<h3>${pop.annTitle }<sup>${pop.annDate }</sup>
								</h3>
								<p>${pop.annContent }</p>
								<hr class="divider">
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" id="noPop">하루동안
					보지 않기</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- announcement popup Modal end -->

<script>
	if ('${popupList}' != '' && '${popupList}' != '[]') {
		if (document.cookie.indexOf('noPop') == -1) {
			$("#annPopup").modal();
			console.log('${popupList}');

			console.log(document.cookie.indexOf('noPop'));
		}
	}

	$("#noPop").on(
			"click",
			function(e) {
				var expire = new Date();
				expire.setDate(expire.getDate() + 1);
				console.log(expire);
				document.cookie = "noPop=true;path=/;expires="
						+ expire.toGMTString() + ";";
				$("#annPopup").hide();
			})
</script>




<script>
	var token = '${_csrf.token }';
	var header = '${_csrf.headerName }';

	function include(file) {
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

	//로그인 필요시 로그인 모달 팝업
	var loginModal = "${loginModal}";
	window.onload = function() {
		if (loginModal == "true") {
			$("#login").modal();
			loginModal = "";
		}
	}
</script>

<sec:authorize access="isAuthenticated()">
	<script>
	$("#doLogout").on("click", function(e) {
		// 		alert("doLogout clicked");
		$("form[action='/customLogout']").submit();
	})

	
		//MODIFY PINFO MODULE
		var clubExistCheck = function() {
			$.ajax({
				method : "get",
				url : "/club_exist_check/"+"${principal.member.clubCode }",
				contentType : "application/json",
				dataType : "json",
				beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				},
				success : function(result) {
					$("#modUserName").val("${principal.member.userName }");
					console.log(result);
					console.log(result.ownerId);
					if (result.clubName != "") {
						if ("${principal.member.userId }" == result.ownerId) {
							$("#modClubName").attr("readonly", false);
						}
						$("#modClubName").val(result.clubName);
					} else {
						$("#modClubName").val("소속된 구단이 없습니다");
					}
				}
			});
		}
		$("#pInfoMod").on("show.bs.modal", function(e) {
			clubExistCheck();
		})

		$("#doPInfoMod").on("click", function(e) {
			var modUserId = "${principal.member.userId }";
			var modName = $("#modUserName").val();
			var modClubName = $("#modClubName").val();

			$.ajax({
				method : "post",
				url : "/modifyPInfo",
				contentType : "application/json",
				data : JSON.stringify({
					userId : "${principal.member.userId }",
					userName : modName,
					clubCode : "${principal.member.clubCode }",
					clubName : modClubName
				}),
				dataType : "text",
				beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				},
				success : function(result) {
					console.log("result : " + result);
					if (result == "success") {
						alert("회원 정보가 수정되었습니다");
						$("#pInfoMod").hide();
					}
				}
			});

		})
	</script>

</sec:authorize>
