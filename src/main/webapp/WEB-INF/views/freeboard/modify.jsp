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
					<form action="/freeboard/modifyAction" method="post" id="boardModFrm">
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
						<div class="form-group text-white">
							<fieldset>
								<legend class="text-white">첨부파일 목록</legend>
								<div class="scroll-box-attach">
								<ul class="list-inline">
									<c:forEach items="${boardVO.attachList }" var="attach">
										<li>${attach.fileName } <button type="button" data-fileName='${attach.fileName }' data-boardNo='${attach.boardNo }' class="delAttachBtn btn btn-danger input-sm">X</button></li>
									</c:forEach>
								</ul>
								</div>
							</fieldset>
						</div>
						<div id="imgDisplayStored">
						</div>
						<div class="form-group text-white">
							<fieldset>
								<legend class="text-white">추가 파일</legend>
								<input type="file" class="form-control" id="inputAttachList" multiple>
								<div class="scroll-box-attach">
								<ul class="list-inline" id="attachUL">
								</ul>
								</div>
							</fieldset>
						</div>
						<div id="imgDisplayAdded">
						</div>
						<div class="form-group text-center">
							<textarea class="form-control input-lg" name="boardContent" rows="20"
								>${boardVO.boardContent }</textarea>
						</div>
						<input type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token }">
						<button type="button" class="btn btn-default btn-block" id="modBtn">
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
var token = '${_csrf.token }';
var header = '${_csrf.headerName }';
var uploadForm = new FormData();
$(".delAttachBtn").on("click", function(e){
	var fileName = $(e.target).data("filename");
	var boardNo = $(e.target).data("boardno");
	console.log("fileName : " + fileName + "  boardNo : " +boardNo);
	$.ajax({
		type:"delete",
		url:"/freeboard/deleteAttach",
		contentType : "application/json",
		data : JSON.stringify({
			fileName : fileName,
			boardNo : boardNo
		}),
		beforeSend : function(xhr) {
			xhr.setRequestHeader(header, token);
		},
		success : function(result){
			if(result == 'success'){
				$(e.target).parent("li").hide();
				showImg();
			}
		}
	});
	
	
})
$("#inputAttachList").on("change",function(e){
	uploadForm = new FormData();
	
	var files = $(this)[0].files;
	var attachUL = $("#attachUL");
	var imgDisplayAdded = $("#imgDisplayAdded");
	var str = '';
	imgDisplayAdded.html("");
	console.log(files);
	
	for(var el of files){
		console.log(el.name);
		uploadForm.append("upload", el);
		
		if(el.type.substring(0,5)=='image'){
			str += "<li data-isImg='1'>"+el.name+"</li>";
			var reader = new FileReader();
			reader.readAsDataURL(el);
			console.log(reader);
			reader.onload = function (e){
				var str1 = "<img src='"+e.target.result+"'>";
				imgDisplayAdded.append(str1);
				var previewImg = $("#imgDisplayAdded>img");
		 		previewImg.css({"width":"100%","height":"auto","margin-bottom":"5px"});
			}
		}else{
			str += "<li data-isImg='0'>"+el.name+"</li>";
		}
	}
	attachUL.html(str);
});

var showImg = function(){
	var imgDisplayStored = $("#imgDisplayStored");
	imgDisplayStored.html("");
	str = "";
	$.ajax({
		type:"get",
		url:"/freeboard/getAttachListByJson/"+"${boardVO.boardNo}",
		beforeSend : function(xhr) {
			xhr.setRequestHeader(header, token);
		},
		success : function(result){
			console.log(result);
			for(var attach of result){
				if(attach.isImg == 1){
					str+= "<img src='"
						   +encodeURI("/freeboard/viewImg?filePath="+attach.filePath+"&fileName="+attach.fileName)
						   +"' style='width:100%; height:auto; margin-bottom=5px;'>";
				}
			}
			imgDisplayStored.html(str);
		}
	});
	
	
	
}

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
		
		showImg();
	}
	
	$("#modBtn").on("click", function(e){
		var str = '';
		var boardModFrmObj = $("#boardModFrm");
		
		$.ajax({
			url:'/freeboard/uploadAttach',
			processData: false,
			contentType: false,
			type: "post",
			data: uploadForm,
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success: function(result){
				console.log("upload result : "+result);
				if(result != null){
						var str = '';
						var i=0;
					for(var attach of result){
						
						str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+attach.fileName+"'>";
						str += "<input type='hidden' name='attachList["+i+"].filePath' value='"+attach.filePath+"'>";
						str += "<input type='hidden' name='attachList["+i+"].isImg' value='"+attach.isImg+"'>";
					
						i++;
					}
					
					boardModFrmObj.append(str).submit();
					
				}else{
					alert("오류!!");
					location.reload();
				}
				
			}
		})
	})
</script>


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>