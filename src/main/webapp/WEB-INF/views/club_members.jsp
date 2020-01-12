<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선수단</title>

<!-- INCLUDE head.jsp -->
<%@ include file="/WEB-INF/views/includes/head.jsp"%>

</head>
<body>

<c:if test="${clubVO.clubName == null}">
	<script>
		alert("등록된 구단이 없습니다 홈으로 이동합니다");
		location.href="/intro";
	</script>
</c:if>

	<div class="bg-image-main"></div>

	<!-- container-fluid start -->
	<!-- 	<div class="container-fluid bg-image-main"> -->
	<div class="container-fluid">

		<!-- INCLUDE nav_top.jsp -->
		<%@ include file="/WEB-INF/views/includes/nav_top.jsp"%>
		<!-- Container Main start-->
		<div class="container-main">
			<!-- Club Members List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>
							<ruby>${clubVO.clubName }<rt class="text-gray">since
							<fmt:formatDate value="${clubVO.clubDate }" pattern="yyyy-MM-dd" /></rt>
							</ruby>
						</dfn>
					</h1>
				</div>
				<!-- Club Members List Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="table-responsive container-fluid">
						<table
							class="table table-condensed table-hover text-center text-white">
							<tr>
								<td>No</td>
								<td>이름</td>
								<td>입단일</td>
								<td>권한</td>
								<c:if test="${principal.member.auth == 'ROLE_OWNER' }">
									<td>관리</td>
								</c:if>
							</tr>
							<c:forEach items="${memberList }" var="member" varStatus="status">
								<tr>
									<td>${status.count }</td>
									<td>${member.userName }</td>
									<td><fmt:formatDate value="${member.joinDate }" pattern="yyyy-MM-dd" /></td>
									<c:choose>
										<c:when test="${member.auth == 'ROLE_MEMBER' }">
											<td><span class="badge badge-user">일반</span></td>
										</c:when>
										<c:when test="${member.auth == 'ROLE_MANAGER' }">
											<td><span class="badge badge-manager">관리자</span></td>
										</c:when>
										<c:when test="${member.auth == 'ROLE_OWNER' }">
											<td><span class="badge badge-owner">구단주</span></td>
										</c:when>
									</c:choose>
									<c:if test="${principal.member.auth == 'ROLE_OWNER' }">
										<td>
										<c:if test="${member.auth != 'ROLE_OWNER' }">
											<button type="button"
												class="btn btn-primary col-xs-6 col-sm-6 col-md-6 modAuthBtn"
												data-toggle="modal" data-target="#modAuth" 
												data-auth="${member.auth}" data-userId="${member.userId}"
												data-userName="${member.userName}">권한 조정</button>
											<button type="button"
												class="btn btn-default col-xs-6 col-sm-6 col-md-6 dismissBtn"
												data-toggle="modal" data-target="#dismiss" 
												data-userId="${member.userId}"
												data-userName="${member.userName}">방출</button>
										</c:if>
												</td>
									</c:if>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<!-- Club Members List Table end -->
			</div>
			<!-- Club Members List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->


	<!-- Modify Auth Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="modAuth">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">권한 조정</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form>
							<input type="hidden" id="modUserId" name="userId">
							<div class="form-group">
								<span id="modifiedUserName"></span>의 권한을
							</div>
							<div class="form-group">
								<span id="authOrigin"></span> 에서
							</div>
							<div class="form-group">
								<select class="form-control" id="newAuth" name="auth">
									<option value="ROLE_OWNER">구단주</option>
									<option value="ROLE_MANAGER">매니저</option>
									<option value="ROLE_MEMBER">일반사용자</option>
								</select>
							</div>
							<div class="form-group">(으)로 조정합니다</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doModAuth">권한
						조정</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Modify Auth Modal end -->

	<!-- Dismiss Member Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="dismiss">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">선수 방출</h4>
				</div>
				<div class="modal-body">
					<input type="hidden" id="dismissUserId">
					<div class="container-fluid">
						<span id="dismissUserName"></span>을 정말 방출하시겠습니까?
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doDismiss">방출</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Dismiss Member Modal end -->


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


	<script>
		$("#modAuth").on("show.bs.modal", function(e) {
			$("#modUserId").val($(e.relatedTarget).data("userid"));
			$("#modifiedUserName").html($(e.relatedTarget).data("username"));
			var auth = "";
			
			switch($(e.relatedTarget).data("auth")){
			case "ROLE_MEMBER" : auth="일반"; break;
			case "ROLE_MANAGER" : auth="매니저"; break;
			}
			$("#authOrigin").html(auth);
		})
		
		$("#doModAuth").on("click", function(e) {
			var userId = $("#modUserId").val();
			var auth = $("#newAuth").val();
			var clubCode = "${clubVO.clubCode}";
			if(auth == "ROLE_OWNER"){
				if(!confirm("구단주 자격을 정말 위임하시겠습니까?")) return;
			}
			$.ajax({
				method : "post",
				url : "/modify_auth",
				contentType : "application/json",
				data : JSON.stringify({
					userId : userId,
					auth : auth,
					clubCode : clubCode
				}),
				dataType : "text",
				beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				},
				success : function(result) {
					if (result == "success") {
						alert("권한 수정이 완료되었습니다");
					} else {
						alert("권한 수정에 실패했습니다");
					}
					location.reload();
					$("#modAuth").hide();
				}
			});
		});
		
		
		$("#dismiss").on("show.bs.modal", function(e) {
			$("#dismissUserId").val($(e.relatedTarget).data("userid"));
			$("#dismissUserName").html($(e.relatedTarget).data("username"));
		})
		
		$("#doDismiss").on("click", function(e) {
			var userId = $("#dismissUserId").val();
			$.ajax({
				method : "post",
				url : "/dismiss/"+userId,
				dataType : "text",
				beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				},
				success : function(result) {
					if (result == "success") {
						alert("방출되었습니다");
					} else {
						alert("방출에 실패했습니다");
					}
					location.reload();
					$("#dismiss").hide();
				}
			});
		})
	</script>
</body>
</html>