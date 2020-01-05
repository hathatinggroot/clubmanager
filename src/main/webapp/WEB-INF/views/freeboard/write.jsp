<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판-글쓰기</title>

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
			<!-- Free Board Write start-->
			<div class="row">
				<div class="text-center text-white text-nowrap enter-row-4">
					<h1>
						<dfn>자유게시판 - 글쓰기</dfn>
					</h1>
				</div>

				<!-- Free Board List Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<form id="boardFrm" action="/freeboard/writeAction" method="post" enctype="text/plain;charset=utf-8" >
						<input type="hidden" name="boardWriter" value="${principal.member.userId}">
						<input type="hidden" name="clubCode" value="${principal.member.clubCode}">
						<div class="form-group">
							<input type="text" class="form-control input-lg" name="boardTitle"
								autofocus placeholder="제목을 입력하세요">
						</div>
						<div class="form-group text-white" id="boardTop">
							<label class="checkbox-inline"> <input type="checkbox"
								 value="1" name="boardTop" >
								상단 고정
							</label>
						</div>
						<div class="form-group">
							<input type="file" class="form-control" id="inputAttachList" multiple>
						</div>
						<div class="form-group text-white">
							<fieldset>
								<legend class="text-white">첨부파일 목록</legend>
								<div class="scroll-box-attach">
								<ul class="list-inline" id="attachUL">
								</ul>
								</div>
							</fieldset>
						</div>
						<div class="form-group text-center">
							<div id="preview"></div>
							<textarea class="form-control input-lg" name="boardContent" rows="20"
								placeholder="내용을 입력하세요">
								</textarea>
						</div>
						<input type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token }">
						<button type="button" class="btn btn-default btn-block" id="writeActionBtn">
							<h2>등록</h2>
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
	window.onload=function(){
		var userAuth = "${principal.member.auth}";
		if(userAuth == "ROLE_OWNER" | userAuth == "ROLE_ADMIN"){
			$("#boardTop").show();
		}else{
			$("#boardTop").hide();
		}
		
	}
	
	$("#inputAttachList").on("change",function(e){
		uploadForm = new FormData();
		
		var files = $(this)[0].files;
		var attachUL = $("#attachUL");
		var preview = $("#preview");
		var str = '';
		preview.html("");
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
					preview.append(str1);
					var previewImg = $("#preview>img");
			 		previewImg.css({"width":"100%","height":"auto","margin-bottom":"5px"});
				}
			}else{
				str += "<li data-isImg='0'>"+el.name+"</li>";
			}
			
			
			
		}
		attachUL.html(str);
	});
	
	$("#writeActionBtn").on("click", function(e){
		var str = '';
		var boardFrmObj = $("#boardFrm");
		
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
					
					boardFrmObj.append(str).submit();
					
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