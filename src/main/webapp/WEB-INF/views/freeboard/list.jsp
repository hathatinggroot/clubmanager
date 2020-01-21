<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>

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
			<!-- Free Board List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>자유게시판</dfn>
					</h1>
				</div>

				<!-- Free Board List Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<!-- Search condition start -->
					<div class="col-sm-12 col-md-12 enter-row-1">
						<form class="form-inline pull-right">
							<div class="form-group">
								<input type="text" class="form-control input-lg" id="keyword"
									name="keyword" placeholder="검색어를 입력하세요" value="${paginator.cri.keyword }" autofocus="autofocus" >
							</div>
						</form>
					</div>
					
					<!-- Search condition start -->
					<div class="table-responsive container-fluid" id="boardList">
					</div>
					<button type="button" class="btn btn-default pull-right" onclick="location.href='/freeboard/write';">글쓰기</button>
				</div>
				<!-- Free Board List Table end -->

				<!-- Pagination start -->
				<div class="text-center">
					<nav>
						<ul class="pagination" id="paginator">

						</ul>
					</nav>
				</div>
				<!-- Pagination end -->
			</div>
			<!-- Free Board List end-->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->

<script>
var token = '${_csrf.token }';
var header = '${_csrf.headerName }';
var cri = new Object();

var chDateFormat = function(inputDate){
	var date = new Date(inputDate);
	var dateStr = '';
	console.log((new Date()-date));
	if((new Date()-date) >= (1000*60*60*24)){
		dateStr += (date.getYear()+1900) + "-";
		dateStr += (date.getMonth()+1)>=10? (date.getMonth()+1)+"-" :"0"+(date.getMonth()+1)+"-" ;
		dateStr += date.getDate()>=10? date.getDate()+"  ":"0"+date.getDate()+"  ";
	}else{
		dateStr += date.getHours()>=10? date.getHours() + ":":"0"+date.getHours() + ":";
		dateStr += date.getMinutes()>=10 ? date.getMinutes():"0"+date.getMinutes();
	}
	
	
	return dateStr;
};

var showList = function(cri){
	$.ajax({
		method : "get",
		url : "/freeboard/board/list",
		data : cri,
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
							+"<td>제목</td>"
							+"<td>작성자</td>"
							+"<td>작성일</td>"
							+"<td>댓글</td>"
							+"<td>좋아요</td>"
							+"<td>조회수</td>"
							+"</tr>";
				var str2 = '';
				var str3 = '';
				for(var board of result){
					if(board.boardTop == 1){
						str2 +="<tr class='board-top'>"
							  +  "<td>"+board.boardNo+"</td>"
							  +  "<td><a href='/freeboard/view?boardNo="+board.boardNo+"'>"
							  +board.boardTitle+
							  "</a></td>"
							  +  "<td>"+board.boardWriterName+"</td>"
							  +  "<td>"+chDateFormat(board.boardDate)+"</td>"
							  +  "<td>"+board.replyCnt+"</td>"
							  +  "<td>"+board.boardLike+"</td>"
							  +  "<td>"+board.boardHit+"</td>"
							  +"</tr>";
					}
					
					str3 += "<tr>"
						  +  "<td>"+board.boardNo+"</td>"
						  +  "<td><a href='/freeboard/view?boardNo="+board.boardNo+"'>"
						  +board.boardTitle+
						  "</a></td>"
						  +  "<td>"+board.boardWriterName+"</td>"
						  +  "<td>"+chDateFormat(board.boardDate)+"</td>"
						  +  "<td>"+board.replyCnt+"</td>"
						  +  "<td>"+board.boardLike+"</td>"
						  +  "<td>"+board.boardHit+"</td>"
						  +"</tr>";
				}
				str = str1+str2+str3+"</table>";
				
				$("#boardList").html(str);
			} else {
				alert("error");
			}
		}
	});
};


var getPaginator = function(cri){
	$.ajax({
		method : "get",
		url : "/freeboard/paginator/board",
		data : cri,
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
				
				str += "<a href='/freeboard/list?clubCode=${principal.member.clubCode }&pageNum="+(result.startPage-1)
						+"&keyword="+result.cri.keyword+"' aria-label='Previous'>"
						+"<span	aria-hidden='true'>&laquo;</span></a></li>";
				
				for(var i = result.startPage; i<=result.endPage; i++ ){
					if(i == cri.pageNum){
						str += "<li class='active'>";
					}else{
						str += "<li>";
					}
					str += "<a href='/freeboard/list?clubCode=${principal.member.clubCode }"
							+"&pageNum="+i
							+"&keyword="+result.cri.keyword+"'>"
							+i+"</a></li>";
				}
				if(result.next){
					str += "<li>";
				}else{
					str += "<li class='disabled'>";
				}
			
				str += "<a href='/freeboard/list?clubCode=${principal.member.clubCode }&pageNum="+(result.endPage+1)
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
		var writeResult = "${writeResult}";
		if (writeResult == 'true'){
			alert("글 등록이 완료되었습니다");
			writeResult = '';
		}
		var modifyResult = "${modifyResult}";
		if (modifyResult == 'true'){
			alert("글 수정이 완료되었습니다");
			modifyResult = '';
		}
		
		cri.pageNum = '${cri.pageNum}';
		cri.keyword = '${cri.keyword}';
		cri.clubCode = '${cri.clubCode}';
		cri.amount = '${cri.amount}';
		
		console.log(cri);
		showList(cri);
		getPaginator(cri);
		
		
	}
	
	$("#keyword").on("keyup", function(e){
		var keyword = $(this).val();
		cri.keyword = keyword;
		cri.pageNum = 1;
		showList(cri);
		getPaginator(cri);
	})
</script>


	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>
</html>