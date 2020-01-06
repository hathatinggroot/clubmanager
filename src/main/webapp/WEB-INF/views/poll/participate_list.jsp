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
<title>투표-참석여부</title>

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
			<!--  All Polls List start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>투표 - 참석 여부</dfn>
					</h1>
				</div>
				<!-- All Polls list Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="table-responsive container-fluid">
						<table
							class="table table-condensed table-hover text-center text-white">
							<tr>
								<td>No</td>
								<td>상대팀</td>
								<td>경기 날짜</td>
								<td>구장</td>
								<td>마감 시간</td>
								<td>투표율</td>
							</tr>
							<c:forEach items="${ppList }" var="pp" varStatus="status">
								<c:choose>
									<c:when
										test="${principal.member.auth == 'ROLE_OWNER' ||principal.member.auth == 'ROLE_MANAGER' }">
										<tr data-matchNo="${pp.matchVO.matchNo }" class="ppViewTr">
									</c:when>
									<c:otherwise>
										<tr>
									</c:otherwise>
								</c:choose>
									<td>${status.count }</td>
									<td>${pp.matchVO.apposingTeam }</td>
									<td><fmt:formatDate value="${pp.matchVO.matchDate }"
											pattern="yyyy-MM-dd E  HH:mm" /></td>
									<td>${pp.matchVO.stadium }</td>
									<td><fmt:formatDate value="${pp.endDate }"
											pattern="yyyy-MM-dd E  HH:mm" /></td>
									<td><span class="badge badge-vote-over-80 voteRate">84%</span></td>
								</tr>
							</c:forEach>

						</table>
					</div>
				</div>
				<!-- All Polls list Table end -->
			</div>
			<!--  All Polls List end-->



			<!--  Poll Details start-->
			<div class="row">
				<hr>
				<!-- poll info start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<div class="col-xs-12 col-sm-6 col-md-6 enter-row-1">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span>VS&nbsp;</span><span class="large-font" id="apposingTeam"></span>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span id="matchDate">
							</span><span class="tab-space-1"  id="stadium"></span>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 enter-row-4">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span class="large-font"  id="remainTime"></span>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span>남은 투표 시간</span>&nbsp;
							<button type="button" class="btn btn-default">시간 조정</button>
						</div>
					</div>
				</div>
				<!-- poll info end -->

				<!-- Vote Button start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<div>
						<div>
							<input type="radio" class="dp-none" value="" name="isParticipate"
								checked>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<label class="large-font">참석<input type="radio"
							class="dp-none" value="true" name="isParticipate"></label>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<label class="large-font">미참석<input type="radio"
							class="dp-none" value="false" name="isParticipate"></label>

					</div>
				</div>
				<!-- Vote Button end -->

				<!-- Polls Details table start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<hr class="divider">
					<h1>
						<dfn>투표 현황</dfn>
					</h1>
					<div class="col-xs-12 col-sm-4 col-md-4">
						<h2>참석</h2>
						<div class="table-responsive container-fluid" id="attendList">
						</div>
					</div>

					<div class="col-xs-12 col-sm-4 col-md-4">
						<h2>미투표</h2>
						<div class="table-responsive container-fluid" id="noVoteList">
						</div>
					</div>

					<div class="col-xs-12 col-sm-4 col-md-4">
						<h2>미참석</h2>
						<div class="table-responsive container-fluid" id="absenceList">
						</div>
					</div>
				</div>
				<!-- Polls Details table end -->
			</div>
			<!-- Polls Details end -->
		</div>
		<!-- Container Main end-->
	</div>
	<!-- container-fluid end -->

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


	<script>
	var token = '${_csrf.token }';
	var header = '${_csrf.headerName }';
	
	var timer = function(endDate){
		var dateInterval = new Date(new Date(endDate)-new Date());
		var remainTimeStr = '';
		remainTimeStr += dateInterval.getDate() + "일 " +
		dateInterval.getHours() + "시간 "+
		dateInterval.getMinutes() + "분 "+
		dateInterval.getSeconds() + "초 전";
		$("#remainTime").html(remainTimeStr);
	};
	var timerInteval ;
		
	var showDetail = function(clubCode, matchNo){
		$.ajax({
			type : "get",
			url : "/poll/getPP/"+clubCode+"/"+matchNo,
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(result) {
				console.log(result);
				if(result!=null){
					clearInterval(timerInteval);
					$("#apposingTeam").html(result.matchVO.apposingTeam);
					
					var date = new Date(result.matchVO.matchDate);
					dateStr = (date.getYear()+1900) + "-";
					dateStr += (date.getMonth()+1)>10? (date.getMonth()+1)+"-" :"0"+(date.getMonth()+1)+"-" ;
					dateStr += date.getDate()>10? date.getDate()+"  ":"0"+date.getDate()+"  ";
					dateStr += date.getHours()>10? date.getHours() + ":":"0"+date.getHours() + ":";
					dateStr += date.getMinutes()>10 ? date.getMinutes():"0"+date.getMinutes();
					$("#matchDate").html(dateStr);
					
					$("#stadium").html(result.matchVO.stadium);
					timerInteval = setInterval(timer,1000,result.endDate);
					
					
					console.log(result.psList);
					var strAttend="<table class='table table-condensed table-hover text-center text-white'>"
								  + "<tr><td>No</td><td>이름</td></tr>";
					var strAbsence="<table class='table table-condensed table-hover text-center text-white'>"
						  + "<tr><td>No</td><td>이름</td></tr>";
					var strNoVote="<table class='table table-condensed table-hover text-center text-white'>"
						  + "<tr><td>No</td><td>이름</td></tr>";	
					var i=1;
					var j=1;
					var k=1;
					for(var ps of result.psList){
						if(ps.status==0){
							strNoVote += "<tr>"
									   + "<td>"+(k++)+"</td>"
									   + "<td>"+ps.userName+"</td>"
									   +"</tr>";
						}else if(ps.status ==1){
							strAttend += "<tr>"
								   + "<td>"+(i++)+"</td>"
								   + "<td>"+ps.userName+"</td>"
								   +"</tr>";
						}else{
							strAbsence += "<tr>"
								   + "<td>"+(j++)+"</td>"
								   + "<td>"+ps.userName+"</td>"
								   +"</tr>";
						}
						if(ps.userId == "${principal.member.userId}"){
							var status = ps.status;
							
						}
						
					}
					strAttend += "</table>";
					strAbsence += "</table>";
					strNoVote += "</table>";
					$("#attendList").html(strAttend);
					$("#asenceList").html(strAbsence);
					$("#noVoteList").html(strNoVote);
				}
			
			
			}
		});
		
		
		
	}
	$(".ppViewTr").on("click", function(e){
		var matchNo = $(e.currentTarget).data("matchno");
		console.log(matchNo);
		showDetail('${ppList[0].clubCode}',matchNo );
	})
	
	
	
	
				var isParticipate = document.getElementsByName("isParticipate");
				var isChecked = function(){
					for(var el of isParticipate){
						if(el.checked) {
							var status = el.value;
							if(status == 'true') status = '참석합';
							else if(status == "false") status = '미참석합';
							else status = '투표하지 않았습';
							alert("이 경기에 "+status+"니다");
							el.parentElement.parentElement.style.backgroundColor="green";
						}
						else {
							el.parentElement.parentElement.style.backgroundColor="transparent";
						}
					};
				}
				for(var el of isParticipate){
					el.addEventListener("click",isChecked);
				};
				window.onload=function(){
// 					isChecked;
					showDetail('${ppList[0].clubCode}','${ppList[0].matchNo}' );
				}
				
	</script>
</body>
</html>