<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판-글쓰기(수정)</title>

<!-- INCLUDE head.jsp -->
<%@ include file="/WEB-INF/views/includes/head.jsp"%>

</head>
<body>
	<c:if test="${principal.member.userId != boardVO.boardWriter}">
		<script>
			alert("올바르지 않은 접근입니다");
			location.href="/freeboard/list?clubCode=${principal.member.clubCode}";
		</script>
	</c:if>


	<div class="bg-image-main"></div>

	<!-- container-fluid start -->
	<div class="container-fluid">

		<!-- INCLUDE nav_top.jsp -->
		<%@ include file="/WEB-INF/views/includes/nav_top.jsp"%>
		<!-- Container Main start-->
		<div class="container-main">
			<!-- Free Board Write start-->
			<div class="row">
				<div class="text-center text-white text-nowrap enter-row-4">
					<h1>
						<dfn>자유게시판 - 수정</dfn>
					</h1>
				</div>
				
				<!-- Free Board List Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<form action="/freeboard/modifyAction" method="post">
						<input type="hidden" name="boardNo" value="${boardVO.boardNo}">
						<input type="hidden" name="clubCode" value="${principal.member.clubCode}">
						<div class="form-group">
							<input type="text" class="form-control input-lg" name="boardTitle"
								autofocus value = "${boardVO.boardTitle }">
						</div>
						<div class="form-group text-white" id="boardTop">
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox1" value="1" name="boardTop" >
								상단 고정
							</label>
						</div>
						<div class="form-group">
							<input type="file" class="form-control" name="attach" multiple>
						</div>
						<div class="form-group text-white">
							<fieldset>
								<legend class="text-white">첨부파일 목록</legend>
								<div class="scroll-box-attach">test.txt</div>
							</fieldset>
						</div>
						<div class="form-group text-center">
							<textarea class="form-control input-lg" name="boardContent" rows="20"
								>${boardVO.boardContent }</textarea>
						</div>
						<input type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token }">
						<button class="btn btn-default btn-block">
							<h2>수정 완료</h2>
						</button>

					</form>
				</div>
				<!-- Free Board List Table end -->
			</div>
			<!-- Free Board List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->

<script>
	window.onload=function(){
		var userAuth = "${principal.member.auth}";
		if(userAuth == "ROLE_OWNER" | userAuth == "ROLE_ADMIN"){
			$("#boardTop").show();
			if('${boardVO.boardTop }' == '1'){
				$("input[type='checkbox']").attr("checked",true);
			}else{
				$("input[type='checkbox']").attr("checked",false);
			}
		}else{
			$("#boardTop").hide();
		}
	}
</script>


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>