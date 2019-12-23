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
					<form method="post" action="/loginpro">
						<!-- /login ->Spring Security -->
						<div class="form-group">
							<label for="loginUserId">아이디</label> <input type="text"
								class="form-control" id="loginUserId" name="userId">
						</div>
						<div class="form-group">
							<label for="loginUserPw">패스워드</label> <input type="password"
								class="form-control" id="loginUserPw" name="userPw">
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
	$("#doLogin").on("click", function(e) {
		// 		alert("doLogin clicked");
		$("form[action='/loginpro']").submit();
	})
		var token = '${_csrf.token }';
		var header = '${_csrf.headerName }';
		
//Join module start
	//id duplication & RegEx check on keyup
	var idDuplChk = false;
	var idRegChk = false;
	var idRegEx =  /^[a-z]+[a-z0-9]{5,19}$/g;
	$("#joinUserId").on("keyup",function(e) {
					var inputId = $(this).val();
					$.ajax({
						method : "post",
						url : "/id_dupl_check",
						contentType : "application/json",
						data : JSON.stringify({
							userId : inputId
						}),
						dataType : "text",
						beforeSend : function(xhr) {
							xhr.setRequestHeader(header, token);
						},
						success : function(result) {
							if (result == "possible") {
								if(idRegEx.test(inputId)){
									$("#idChk").attr("class", "possible");
									$("#idChk").html(" 사용가능한 아이디입니다");
									idRegChk = true;
								}else{
									$("#idChk").attr("class", "impossible");
									$("#idChk").html(" 아이디는 소문자로 시작하는 6~15자 영문 또는 숫자이어야 합니다");
									idRegChk = false;
								}
								idDuplChk = true;
							} else {
								$("#idChk").attr("class", "impossible");
								$("#idChk").html(" 이미 존재하는 아이디입니다");
								idDuplChk = false;
							}
						}
					});
				});
	
	//pw RegEx check
	var pwRegChk = false;
	var pwRegEx =  /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,15}$/; // 6~20 영문 대소문자, 최소 1개의 숫자 혹은 특수문자를 포함
	$("#joinUserPw").on("keyup",function(e) {
		var inputPw = $(this).val();
		if(pwRegEx.test(inputPw)){
			$("#pwChk").attr("class", "possible");
			$("#pwChk").html(" 사용가능한 비밀번호 입니다");
			pwRegChk = true;
		}else{
			$("#pwChk").attr("class", "impossible");
			$("#pwChk").html(" 6~15자 영문 대소문자와 최소 1개 이상의 숫자 혹은 특수문자를 포함해야합니다");
			pwRegChk = false;
		}
	});
	
	//pw ReCheck
	var pwReChk = false;
	$("#joinUserPwCheck").on("keyup",function(e) {
		var inputRePw = $(this).val();
		if(inputRePw == $("#joinUserPw").val()){
			$("#pwReChk").attr("class", "possible");
			$("#pwReChk").html(" 일치합니다");
			pwReChk = true;
		}else{
			$("#pwReChk").attr("class", "impossible");
			$("#pwReChk").html(" 일치하지않습니다");
			pwReChk = false;
		}
	});
	
	
	//joinClubCode Auto Generate
	$("#joinClubName").on("blur",function(e){
		var clubCodeGen = "";
		for(var i=1;i<=15;i++){
			clubCodeGen += String.fromCharCode((Math.random() * 26)+65);
		}
		$("#joinClubCode").val(clubCodeGen);
	})
	
	//clubCode Generate
	var isOwnerMember = false;
	var clubCodeChk = false;
	$("#isOwner").on("click",function(e){
		if($(this).is(":checked")){
			$("#joinClubCode").attr("readonly",true);
			isOwnerMember=true;
			clubCodeChk=true;
		}else{
			$("#joinClubCode").attr("readonly",false).val("");
			isOwnerMember=false;
			clubCodeChk=false;
		}
	});
	
	//clubCode Check
		$("#joinClubCode").on("keyup",function(e) {
			var inputClubCode = $(this).val();
			if(!isOwnerMember){
			$.ajax({
				method : "post",
				url : "/club_exist_check",
				contentType : "application/json",
				data : JSON.stringify({
					clubCode : inputClubCode
				}),
				dataType : "json",
				beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				},
				success : function(result) {
					console.log(result);
					if (result.clubName != "") {
						$("#clubChk").attr("class", "possible");
						$("#clubChk").html(" 구단명 : "+result.clubName);
						clubCodeChk=true;
					} else {
						$("#clubChk").attr("class", "impossible");
						$("#clubChk").html(" 존재하지 않는 구단입니다");
						clubCodeChk=false;
					}
				}
			});
			}
		});
	
	
	
	$("#doJoin").on("click", function(e) {
		// 		alert("doJoin clicked");
		var formDataMember = new FormData();
		
		if(!idDuplChk){
			alert("아이디 중복확인 바랍니다");	
			return;
		}else if(!idRegChk){
			alert("아이디 형식이 올바르지 않습니다");
			return;
		}else if(!pwRegChk){
			alert("비밀번호 형식이 올바르지 않습니다");
			return;
		}else if(!pwReChk){
			alert("비밀번호가 일치하지 않습니다");
			return;
		}
		
		formDataMember.append('userId', $('#joinUserId').val());
		formDataMember.append('userPw', $('#joinUserPw').val());
		formDataMember.append('userName', $('#joinUserName').val());
		
		if(isOwnerMember){
			var formDataClub = new FormData();
			formDataClub.append('clubName', $('#joinClubName').val());
			formDataClub.append('clubCode', $('#joinClubCode').val());
			formDataClub.append('ownerId', $('#joinUserId').val());
			
			console.log("formDataClub : ", formDataClub);
			var requestClub = new XMLHttpRequest();
			requestClub.open("POST", "/reg_club");
			requestClub.setRequestHeader(header, token);
			requestClub.send(formDataClub);
			
			formDataMember.append('auth', "ROLE_OWNER");
		}else{
			if(!clubCodeChk){
				alert("구단코드가 올바르지 않습니다");
				return;
			}
			formDataMember.append('clubCode', $('#joinClubCode').val());
			formDataMember.append('auth', "ROLE_MEMBER");
		}
		console.log("formDataMember : ", formDataMember);		
		var requestMember = new XMLHttpRequest();
		requestMember.open("POST", "/join");
		requestMember.setRequestHeader(header, token);
		requestMember.send(formDataMember);
		
	});

	$("#doLogout").on("click", function(e) {
		// 		alert("doLogout clicked");
		$("form[action='/customLogout']").submit();
	})
	$("#doPInfoMod").on("click", function(e) {
		alert("doPInfoMod clicked");
	})

	var isOwner = document.getElementById("isOwner");
	var asOwner = document.getElementById("asOwner");

	var ownerCheck = function() {
		if (isOwner.checked) {
			asOwner.style.display = "block";
		} else {
			asOwner.style.display = "none";
		}
	}
	isOwner.addEventListener("click", ownerCheck);

	//로그인 필요시 로그인 모달 팝업
	var loginModal = "${loginModal}";
	window.onload = function() {
		if (loginModal == "true") {
			$("#login").modal();
			loginModal = "";
		}
	}
</script>
