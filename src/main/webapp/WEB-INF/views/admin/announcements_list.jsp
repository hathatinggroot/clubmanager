<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항</title>

<!-- INCLUDE head.jsp -->
<%@ include file="/WEB-INF/views/includes/head.jsp"%>


</head>
<body>
	<div class="bg-image-main"></div>

	<!-- container-fluid start -->
	<!-- 	<div class="container-fluid bg-image-main"> -->
	<div class="container-fluid">

		<!-- INCLUDE nav_top.jsp -->
		<%@ include file="/WEB-INF/views/includes/nav_top.jsp"%>
		<!-- Container Main start-->
		<div class="container-main">
			<!-- Announcement List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>공지 사항</dfn>
					</h1>
				</div>

				<!-- Announcement list Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<!-- Search condition start -->
					<div class="col-sm-12 col-md-12 enter-row-1">
						<form class="form-inline pull-right">
							<div class="form-group">
								<input type="text" class="form-control" id="keyword"
									placeholder="검색어를 입력하세요">
							</div>
						</form>
					</div>
					<!-- Search condition end -->
					<div class="table-responsive container-fluid" id="annList">
					</div>
					<button type="button" class="btn btn-default pull-right" data-toggle="modal" data-target="#write">글쓰기</button>
				</div>
				<!-- Announcement list Table end -->

				<!-- Pagination start -->
				<div class="text-center">
					<nav>
						<ul class="pagination" id="paginator">
						</ul>
					</nav>
				</div>
				<!-- Pagination end -->

			</div>
			<!-- Announcement List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->



	<!-- Write Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="write">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">공지사항 작성</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form id="writeActionFrm">
							<div class="form-group">
								<label for="annTitle">제목</label> <input type="text"
									class="form-control" id="annTitle" name="annTitle">
							</div>
							<div class="form-group">
								<label for="annContent">내용</label>
								<textarea class="form-control" id="annContent" name="annContent"></textarea>
							</div>
							<div class="checkbox">
								<span>팝업</span>
								<div class="text-center center-block">
									<input type="checkbox" class="on-off-ckbox" id="regAnnPopup" value="1"
										checked> <label for="regAnnPopup" class="on-off-label"><span></span></label>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doWrite">등록</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- write Modal end -->

	<!-- Modify Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true" id="modify">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">공지사항 수정</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form id="modFrm" action="/admin/modify" method="post">
							<input type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token }">
							<input type="hidden" name="annNo" id="modAnnNo">
							<div class="form-group">
								<label for="modAnnTitle">제목</label> <input type="text"
									class="form-control" id="modAnnTitle" name="annTitle" autofocus="autofocus">
							</div>
							<div class="form-group">
								<label for="modAnnContent">내용</label>
								<textarea class="form-control" id="modAnnContent" name="annContent" ></textarea>
							</div>
							<div class="checkbox">
								<span>팝업</span>
								<div class="text-center center-block">
									<input type="checkbox" class="on-off-ckbox" id="modAnnPopup" name="annPopup" value="1"
										> <label for="modAnnPopup" class="on-off-label"><span></span></label>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doModify" >수정</button>
					<button type="button" class="btn btn-warning" id="doDelete" onclick="confirm('정말 삭제하시겠습니까?')?$('#delFrm').submit():''">삭제</button>
					<form id="delFrm" action="/admin/deleteAnn" method="post">
						<input type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token }">
							<input type="hidden" name="annNo" id="delAnnNo">
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Modify Modal end -->


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>

<script>
var token = '${_csrf.token }';
var header = '${_csrf.headerName }';

$("#doWrite").on("click", function(e){
	var annVO = new Object();
	annVO.annTitle = $("#annTitle").val();
	annVO.annContent = $("#annContent").val();
	annVO.annPopup = $("#regAnnPopup").prop("checked")?1:0;
	console.log(annVO);
	
	$.ajax({
		method : "post",
		url : "/admin/writeAction",
		contentType : "application/json",
		data : JSON.stringify(annVO),
		beforeSend : function(xhr) {
			xhr.setRequestHeader(header, token);
		},
		success : function(result) {
			console.log("writeAction.....");
			console.log(result);
			if(result =="success"){
				alert("공지사항이 등록되었습니다");
			}else{
				alert("공지사항 등록에 실패했습니다");
			}
			location.reload();
		}
	})
	
	
	
})

$("#doModify").on("click", function(e){
	console.log($("#modFrm"));
	var annVO = new Object();
	annVO.annNo = $("#modAnnNo").val();
	annVO.annTitle = $("#modAnnTitle").val();
	annVO.annContent = $("#modAnnContent").val();
	annVO.annPopup = $("#modAnnPopup").prop("checked")?1:0;
	console.log(annVO);
	$.ajax({
		method : "put",
		url : "/admin/ann",
		contentType : "application/json",
		data : JSON.stringify(annVO),
		beforeSend : function(xhr) {
			xhr.setRequestHeader(header, token);
		},
		success : function(result) {
			console.log("modify.....");
			console.log(result);
			if(result =="success"){
				alert("수정이 완료되었습니다");
			}else{
				alert("수정에 실패했습니다");
			}
			location.reload();
		}
	})
})



var cri = new Object();

var chDateFormat = function(inputDate){
	var date = new Date(inputDate);
	dateStr = (date.getYear()+1900) + "-";
	dateStr += (date.getMonth()+1)>=10? (date.getMonth()+1)+"-" :"0"+(date.getMonth()+1)+"-" ;
	dateStr += date.getDate()>=10? date.getDate()+"  ":"0"+date.getDate()+"  ";
	dateStr += date.getHours()>=10? date.getHours() + ":":"0"+date.getHours() + ":";
	dateStr += date.getMinutes()>=10 ? date.getMinutes():"0"+date.getMinutes();
	
	return dateStr;
};

var showList = function(cri){
	$.ajax({
		method : "post",
		url : "/admin/annList",
		contentType : "application/json",
		data : JSON.stringify(cri),
		dataType : "json",
		beforeSend : function(xhr) {
			xhr.setRequestHeader(header, token);
		},
		success : function(result) {
			if (result != null) {
				console.log(result);
				var str = "";
				
				var str1 = "<table class='table table-condensed table-hover text-center text-white'>"
							+"<tr>"
							+"<td>No</td>"
							+"<td>팝업</td>"
							+"<td>글제목</td>"
							+"<td>작성일</td>"
							+"</tr>";
				var str2 = '';
				var str3 = '';
				for(var ann of result){
					if(ann.annPopup == 1){
						str2 +="<tr>"
							  +  "<td>"+ann.annNo+"</td>"
							  +  "<td><span class='badge badge-pop-on'>ON</span></td>"
							  +  "<td><a href='#' data-toggle='modal' data-target='#modify' data-annNo='"+ann.annNo
							  +	 "' data-annTitle='"+ann.annTitle
							  +  "' data-annContent='"+ann.annContent
							  +  "' data-annPopup=true>"+ann.annTitle+"</a></td>"
							  +  "<td>"+chDateFormat(ann.annDate)+"</td>"
							  +"</tr>";
					} else{
						str3 +="<tr>"
							  +  "<td>"+ann.annNo+"</td>"
							  +  "<td><span class='badge badge-pop-off'>OFF</span></td>"
							  +  "<td><a href='#' data-toggle='modal' data-target='#modify' data-annNo='"+ann.annNo
							  +	 "' data-annTitle='"+ann.annTitle
							  +  "' data-annContent='"+ann.annContent
							  +  "' data-annPopup=false>"+ann.annTitle+"</a></td>"
							  +  "<td>"+chDateFormat(ann.annDate)+"</td>"
							  +"</tr>";
					}
				}
				str = str1+str2+str3+"</table>";
				
				$("#annList").html(str);
				getPaginator(cri);
			} else {
				alert("error");
			}
		}
	});
};


var getPaginator = function(cri){
	$.ajax({
		method : "post",
		url : "/admin/getPaginator",
		contentType : "application/json",
		data : JSON.stringify(cri),
		dataType : "json",
		beforeSend : function(xhr) {
			xhr.setRequestHeader(header, token);
		},
		success : function(result) {
			if (result != null) {
				console.log(result);
				var str = "";
				if(result.prev){
					str += "<li>";
				}else{
					str += "<li class='disabled'>";
				}
				
				str += "<a href='/admin/announcements_list?pageNum="+(result.startPage-1)
						+"&keyword="+result.cri.keyword+"' aria-label='Previous'>"
						+"<span	aria-hidden='true'>&laquo;</span></a></li>";
				
				for(var i = result.startPage; i<=result.endPage; i++ ){
					if(i == cri.pageNum){
						str += "<li class='active'>";
					}else{
						str += "<li>";
					}
					str += "<a href='/admin/announcements_list?pageNum="+i
							+"&keyword="+result.cri.keyword+"'>"
							+i+"</a></li>";
				}
				if(result.next){
					str += "<li>";
				}else{
					str += "<li class='disabled'>";
				}
			
				str += "<a href='/admin/announcements_list?pageNum="+(result.endPage+1)
				+"&keyword="+result.cri.keyword+"' aria-label='Previous'>"
				+"<span	aria-hidden='true'>&raquo;</span></a></li>";
				
				
				$("#paginator").html(str);
			} else {
				alert("error");
			}
		}
	});
	
}

	window.onload=function(){
		cri.pageNum = '${cri.pageNum}';
		cri.keyword = '${cri.keyword}';
		cri.annPopup = '${cri.annPopup}';
		cri.amount = '${cri.amount}';
		
		console.log(cri);
		showList(cri);
		
	}
	
	$("#keyword").on("keyup", function(e){
		var keyword = $(this).val();
		cri.keyword = keyword;
		cri.pageNum = 1;
		showList(cri);
		getPaginator(cri);
	})
	
	$("#modify").on("show.bs.modal", function(e) {
			
		console.log($(e.relatedTarget).data());
			
		$("#modAnnNo").val($(e.relatedTarget).data("annno"));
		$("#modAnnTitle").val($(e.relatedTarget).data("anntitle"));
		$("#modAnnContent").html($(e.relatedTarget).data("anncontent"));
		$("#delAnnNo").val($(e.relatedTarget).data("annno"));
		if($(e.relatedTarget).data("annpopup")){
			$("#modAnnPopup").attr("checked",true);
		}else{
			$("#modAnnPopup").attr("checked",false);
		}
		
		
	})
</script>
</body>
</html>