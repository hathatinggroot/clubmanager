<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판-글 상세 보기</title>

<!-- INCLUDE head.jsp -->
<%@ include file="/WEB-INF/views/includes/head.jsp"%>

</head>
<body>
	<div class="bg-image-main"></div>

	<!-- container-fluid start -->
	<div class="container-fluid">

		<!-- INCLUDE nav_top.jsp -->
		<%@ include file="/WEB-INF/views/includes/nav_top.jsp"%>
		<!-- Container Main start-->
		<div class="container-main">
			<!-- Free Board View start-->
			<div class="row">
				<div class="text-center text-white text-nowrap enter-row-4">
					<h1>
						<dfn>자유게시판 - 글 상세 보기</dfn>
					</h1>
				</div>




				<!-- Free Board Content Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12 enter-row-4">
					<div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading input-lg">
							<div class="col-xs-6 col-sm-6 col-md-6">
								${boardVO.boardWriter } <small>${boardVO.boardDate }</small>
							</div>
							<div class="col-xs-2 col-sm-2 col-md-2">
								<span class="glyphicon glyphicon-comment">${boardVO.replyCnt }</span>
							</div>
							<div class="col-xs-2 col-sm-2 col-md-2">
								<span class="glyphicon glyphicon-thumbs-up">${boardVO.boardLike }</span>
							</div>
							<div class="col-xs-2 col-sm-2 col-md-2">
								<span class="glyphicon glyphicon-eye-open">${boardVO.boardHit }</span>
							</div>
						</div>
						<div class="panel-body">
							<div class="col-xs-12 col-sm-12 col-md-12 large-font">
								${boardVO.boardTitle }</div>
							<ul class="list-inline" id="attachListLink">
								<c:forEach items="${boardVO.attachList }" var="attach">
									<li>${attach.fileName }</li>
								</c:forEach>
							</ul>
							
							<div id="imgDisplay">
								<c:forEach items="${boardVO.attachList }" var="attach">
									<c:if test="${attach.isImg == 1 }">
									<c:set var="arr" value="${fn: split(attach.filePath,'\\')}"/>
<%-- 									${fn: join(arr,'/') } --%>
<%-- 										<img src="/freeboard/viewImg?filePath=${fn: join(split(attach.filePath,'\\'),'/') }&fileName=${attach.fileName }" style="width:100%;height:400px;margin-bottom:5px;"> --%>
									</c:if>
								</c:forEach>
							</div>

							<div>
								<p>${boardVO.boardContent }</p>
							</div>


							<div>
								<button type="button" class="btn btn-default pull-left"
									onclick="history.back()">목록</button>

								<c:if test="${principal.member.userId == boardVO.boardWriter }">
									<span class="pull-right">
										<button type="button" class="btn btn-default pull-left"
											onclick="location.href='/freeboard/modify?boardNo=${boardVO.boardNo }'">수정</button>
										<button type="button" class="btn btn-default"
											onclick="$('#deleteFrm').submit()">삭제</button>
									</span>
									<form id="deleteFrm" action="/freeboard/delete" method="post">
										<input type="hidden" name="boardNo"
											value="${boardVO.boardNo }"> <input type="hidden"
											name="clubCode" value="${boardVO.clubCode }"> <input
											type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
									</form>
								</c:if>

							</div>
							<hr>
							<div class="comment-box ">
								<textarea class="col-xs-12 col-sm-11 col-md-11"
									placeholder="댓글을 남겨주세요" id="addReply"></textarea>
								<button type="button"
									class="btn btn-default input-lg col-xs-12 col-sm-1 col-md-1"
									id="addReplyBtn">등록</button>
							</div>
						</div>


						<!-- Table -->
						<div class="table-responsive container-fluid scroll-reply"
							id="replyListDP"></div>
					</div>

				</div>
				<!-- Free Board Content Table end -->
			</div>
			<!-- Free Board View end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->
	<script>
var token = '${_csrf.token }';
var header = '${_csrf.headerName }';

	$("#addReplyBtn").on("click",function(e){
		var replyVO = new Object();
		replyVO.replyWriter = "${principal.member.userId}";
		replyVO.replyContent = $("#addReply").val();
		replyVO.boardNo = '${boardVO.boardNo }';
		
		console.log(replyVO);
		
		$.ajax({
			type:"post",
			url:"/freeboard/writeReply",
			data: JSON.stringify(replyVO),
			contentType : "application/json",
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(result){
				console.log(result);
				location.reload();
			}
		});
	})
	
var showReplyList = function(){
		var boardNo = '${boardVO.boardNo }';
		$.ajax({
			type:"get",
			url:"/freeboard/replyList/"+boardNo,
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(result){
				if(result != null){
					str = "<table class='table table-condensed text-center'>"
						+"<colgroup>"
						+"<col width=10% />"
						+"<col width=80% />"
						+"<col width=10% />"
						+"</colgroup>";
				for(var reply of result){
					str+= "<tr>"
							+"<td>"+reply.replyWriter+"</td>"
							+"<td>"+reply.replyContent+"</td>"
							+"<td>"+reply.replyDate+"</td>"
							+"</tr>";
					}
					str+= "</table>";	
					$("#replyListDP").html(str);
				}
			}
		});
	};
	
		window.onload=function(){
			showReplyList();
		}
	
</script>


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>