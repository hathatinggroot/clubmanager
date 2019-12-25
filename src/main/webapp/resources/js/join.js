
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
	
	//PW CHECK
	var pwReChk = false;
	//pw RegEx check
	var pwRegChk = false;
	var pwRegEx =  /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,15}$/; // 6~20 영문 대소문자, 최소 1개의 숫자 혹은 특수문자를 포함
	$("#joinUserPw").on("keyup",function(e) {
		var inputPw = $(this).val();
		pwReChk = false;
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
	
	//clubName input if join as owner
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
		var joinMemberInfo = new Object();
		
		
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
		}else if($("#joinUserName").val() == ""){
			alert("이름을 입력해주세요");
			return;
		}
		
		
		joinMemberInfo.userId = $('#joinUserId').val();
		joinMemberInfo.userPw = $('#joinUserPw').val();
		joinMemberInfo.userName = $('#joinUserName').val();
		
		if(isOwnerMember){
			var joinClubInfo = new Object();
			
			
			joinClubInfo.clubName = $('#joinClubName').val();
			joinClubInfo.clubCode = $('#joinClubCode').val();
			joinClubInfo.ownerId = $('#joinUserId').val();
			
			
			
			console.log("joinClubInfo : ", joinClubInfo);
			
			$.ajax({
						method : "post",
						url : "/reg_club",
						contentType : "application/json",
						data : JSON.stringify(joinClubInfo),
						dataType : "text",
						beforeSend : function(xhr) {
							xhr.setRequestHeader(header, token);
						},
						success : function(result) {
							if (result == "success") {
								alert("구단이 등록되었습니다");
							} else {
								alert("구단이 등록에 실패했습니다");
							}
						}
					});
			
			
			
			
			
			
			
			joinMemberInfo.auth = "ROLE_OWNER";
			joinMemberInfo.clubCode = $('#joinClubCode').val();
			
		}else{
			if(!clubCodeChk){
				alert("구단코드가 올바르지 않습니다");
				return;
			}
			
			joinMemberInfo.clubCode = $('#joinClubCode').val();
			
			joinMemberInfo.auth = "ROLE_MEMBER";
			
		}
		console.log("joinMemberInfo : ", joinMemberInfo);
		$.ajax({
			method : "post",
			url : "/join",
			contentType : "application/json",
			data : JSON.stringify(joinMemberInfo),
			dataType : "text",
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(result) {
				if (result == "success") {
					alert("가입이 완료되었습니다");
				} else {
					alert("가입에 실패했습니다");
				}
			}
		});
	});
