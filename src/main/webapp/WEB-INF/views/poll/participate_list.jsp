<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
								<tr data-matchNo="${pp.matchVO.matchNo }" class="ppViewTr">
									<td>${status.count }</td>
									<td>${pp.matchVO.apposingTeam }</td>
									<td><fmt:formatDate value="${pp.matchVO.matchDate }"
											pattern="yyyy-MM-dd E  HH:mm" /></td>
									<td>${pp.matchVO.stadium }</td>
									<td><fmt:formatDate value="${pp.endDate }"
											pattern="yyyy-MM-dd E  HH:mm" /></td>
									
									<c:set var="cnt" value="0"/>
									<c:set var="size" value="${fn:length(pp.psList) }"/>
									
									<c:forEach items="${pp.psList }" var="ps">
										<c:if test="${ps.status ==0 }">
											<c:set var="cnt" value="${cnt+1 }"/>
										</c:if>
									</c:forEach>		
									<fmt:parseNumber var="rate" integerOnly="true" value="${(1-(cnt/size))*100 }"/>
									<c:choose>
										<c:when test="${rate>=80 }">
											<td><span class="badge badge-vote-over-80 voteRate">${rate }%</span></td>
										</c:when>
										<c:when test="${rate>=50 }">
											<td><span class="badge badge-vote-over-50 voteRate">${rate }%</span></td>
										</c:when>
										<c:otherwise>
											<td><span class="badge badge-vote-under-50 voteRate">${rate }%</span></td>
										</c:otherwise>
									</c:choose>
									
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
							<span id="matchDate"> </span><span class="tab-space-1"
								id="stadium"></span>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 enter-row-4">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span class="large-font" id="remainTime"></span>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span>남은 투표 시간</span>&nbsp;
							<c:if
								test="${principal.member.auth == 'ROLE_OWNER' || principal.member.auth == 'ROLE_MANAGER'}">
								<button type="button" class="btn btn-default" data-endTime=""  data-matchNo="" id="endTimeModBtn">시간 조정</button>
							</c:if>
						</div>
					</div>
				</div>
				<!-- poll info end -->

				<!-- Vote Button start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<div class="col-xs-6 col-sm-6 col-md-6 isPart" data-value="true"
						data-matchNo="" id="attendChecked">
						<span class="large-font">참석</span>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 isPart" data-value="false"
						data-matchNo="" id="absenceChecked">
						<span class="large-font">미참석</span>
					</div>
				</div>
				<!-- Vote Button end -->

				<!-- Polls Details table start -->
				<div class="col-xs-12 col-sm-12 col-md-12 text-white text-center">
					<hr class="divider">
					<h1>
						<dfn>투표 현황</dfn>
					</h1>
					<div class="col-xs-12 col-sm-4 col-md-4" >
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

	<!-- Modify endDate Modal start -->
	<div class="modal fade" role="dialog"
		aria-labelledby="gridSystemModalLabel" aria-hidden="true"
		id="modifyEndDate">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">투표 마감 시간 변경</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<form>
							<div class="form-group">
								<label for="registerMatchDate">마감 시간</label>
								<div id="modEndDate">
									<select id="modEndYear">
										<option value="2020">2020</option>
										<option value="2019">2019</option>
									</select> <label for="modEndYear">년 </label> <select
										id="modEndMonth">
										<c:forEach begin="1" end="12" var="mon">
											<option value="${mon }">${mon }</option>
										</c:forEach>
									</select> <label for="modEndMonth">월 </label> <select
										id="modEndDay">
										<c:forEach begin="1" end="31" var="day">
											<option value="${day }">${day }</option>
										</c:forEach>
									</select> <label for="modEndDay">일 </label> <select
										id="modEndHour">
										<c:forEach begin="0" end="24" var="hour">
											<option value="${hour }"><c:if test="${hour < 10}">0</c:if>${hour }</option>
										</c:forEach>
									</select> <label for="modEndHour">: </label> <select
										id="modEndMin">
										<c:forEach begin="00" end="59" var="min">
											<option value="${min }"><c:if test="${min < 10}">0</c:if>${min }</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="doModifyEndTime">등록</button>
					<button type="button" class="btn btn-danger" id="endVote">투표마감</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Modify endDate Modal end -->

	<!-- INCLUDE footer.jsp -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


	<script>
	var token = '${_csrf.token }';
	var header = '${_csrf.headerName }';
	
	
	var myStatus = "";
	
	
	var chColorByStatus = function(status){
		var isPart = $(".isPart");
		switch(status){
		case 0 : alert("투표에 참여하지 않았습니다");$("#attendChecked").css('background-color',"transparent");$("#absenceChecked").css('background-color',"transparent"); break;
		case 1 : alert("이 경기에 참석합니다");$("#attendChecked").off("click");$("#attendChecked").css('background-color',"green");$("#absenceChecked").css('background-color',"transparent"); break;
		case 2 : alert("이 경기에 참석하지 않습니다");$("#absenceChecked").off("click");$("#attendChecked").css('background-color',"transparent");$("#absenceChecked").css('background-color',"green"); break;
		}
	};
	
	var voteEventOn = function(){$(".isPart").off("click").on("click", function(e){
		var psDTO = new Object();
		console.log($(e.currentTarget));
		psDTO.matchNo = $(e.currentTarget)[0].dataset.matchno;
		psDTO.userId = "${principal.member.userId}";
		var voteStatus = $(e.currentTarget).data('value');
		psDTO.status = voteStatus?1:2;
		
		psDTO.pollType = 1;
		
		console.log("psDTO for vote-------" );
		console.log(psDTO);
		
		$.ajax({
			type:"put",
			url:"/poll/vote/",
			data : JSON.stringify(psDTO),
			contentType : "application/json",
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(result){
				console.log("vote Result : " + result);
				showDetail("${principal.member.clubCode}",psDTO.matchNo );
			}
		})
		
	})};		
	
	var voteEventOff = function(){$(".isPart").off("click").on("click", function(e){
			alert("투표가 종료되었습니다");
	})};
	
	console.log(new Date(0));
	var timer = function(endDate){
		var dateIntervalSec = endDate-new Date().getTime();

		var rDate = Math.floor(dateIntervalSec/(1000*60*60*24));
		dateIntervalSec = dateIntervalSec%(1000*60*60*24);
		
		var rHour = Math.floor(dateIntervalSec/(1000*60*60));
		dateIntervalSec = dateIntervalSec%(1000*60*60);
		
		var rMin = Math.floor(dateIntervalSec/(1000*60));
		dateIntervalSec = dateIntervalSec%(1000*60);
		
		var rSec = Math.floor(dateIntervalSec/(1000));
		
		if(rSec<0){
			console.log("running");
			$("#remainTime").html('투표 종료').css("color","red");
			voteEventOff();
			clearInterval(timerInteval);
		}else{
			var remainTimeStr = '';
			remainTimeStr += rDate>0 ? rDate + "일 ":"" ;
			remainTimeStr += rHour>10 ? rHour + ":": rHour>0 ? "0"+rHour+":" : "00:";
			remainTimeStr += rMin>10 ? rMin + ":": rMin>0 ? "0"+rMin+":" : "00:";
			remainTimeStr += rSec>10 ? rSec : "0"+rSec;
			
			$("#remainTime").html(remainTimeStr).css("color","white");
		}
		
		
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
					voteEventOn();
					clearInterval(timerInteval);
					$("#apposingTeam").html(result.matchVO.apposingTeam);
					
					if("${principal.member.auth}" == 'ROLE_OWNER' ||"${principal.member.auth}" == 'ROLE_MANAGER'){
						$("#endTimeModBtn")[0].dataset.endtime = result.endDate;
						$("#endTimeModBtn")[0].dataset.matchno = result.matchNo;
					}
					
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
							myStatus = ps.status;
							chColorByStatus(myStatus);
						}
						
					}
					strAttend += "</table>";
					strAbsence += "</table>";
					strNoVote += "</table>";
					$("#attendList").html(strAttend);
					$("#absenceList").html(strAbsence);
					$("#noVoteList").html(strNoVote);
				}
			
			
			}
		});
		$(".isPart")[0].dataset.matchno = matchNo;
		$(".isPart")[1].dataset.matchno = matchNo;
		
		
	}
	$(".ppViewTr").on("click", function(e){
		var matchNo = $(e.currentTarget).data("matchno");
		console.log(matchNo);
		showDetail('${ppList[0].clubCode}',matchNo );
	})
	
				window.onload=function(){
					showDetail('${ppList[0].clubCode}','${ppList[0].matchNo}' );
				}
				
	$("#endTimeModBtn").on("click",function(e){
		$("#modifyEndDate").modal('show');
	})
	
	$("#modifyEndDate").on("show.bs.modal",function(e){
		var milliSec = parseInt($("#endTimeModBtn")[0].dataset.endtime);
// 		console.log(new Date(milliSec));
// 		console.log(new Date($("#endTimeModBtn").data('endtime')));
		var originEndTime = new Date(milliSec);
		console.log(originEndTime);
		
		$("#modEndYear").val(originEndTime.getYear()+1900);
		$("#modEndMonth").val(originEndTime.getMonth()+1);
		$("#modEndDay").val(originEndTime.getDate());
		$("#modEndHour").val(originEndTime.getHours());
		$("#modEndMin").val(originEndTime.getMinutes());
	})
	
	$("#doModifyEndTime").on("click",function(e){
		
		var matchNo = $("#endTimeModBtn")[0].dataset.matchno;
		console.log(matchNo);
		var modEndYear = $("#modEndYear").val();
		var modEndMonth = $("#modEndMonth").val();
		var modEndDay = $("#modEndDay").val();
		var modEndHour = $("#modEndHour").val();
		var modEndMin = $("#modEndMin").val();
		var modEndD = new Date(modEndYear, modEndMonth - 1, modEndDay,
				modEndHour, modEndMin, 0, 0);
		console.log(modEndD);
		var ppVO = new Object();
		ppVO.matchNo = matchNo;
		ppVO.endDate = modEndD;
		
		$.ajax({
			type:"put",
			url:"/poll/modifyPP/",
			data : JSON.stringify(ppVO),
			contentType : "application/json",
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(result){
				console.log("modifyPP Result : " + result);
				$("#modifyEndDate").modal('hide');
				showDetail("${principal.member.clubCode}",ppVO.matchNo );
			}
		})
		
	})
	$("#endVote").on("click",function(e){
		
		var matchNo = $("#endTimeModBtn").data("matchno");
		console.log(matchNo);
		var ppVO = new Object();
		ppVO.matchNo = matchNo;
		ppVO.endDate = new Date();
		
		$.ajax({
			type:"put",
			url:"/poll/modifyPP/",
			data : JSON.stringify(ppVO),
			contentType : "application/json",
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(result){
				console.log("modifyPP Result : " + result);
				$("#modifyEndDate").modal('hide');
				showDetail("${principal.member.clubCode}",ppVO.matchNo );
			}
		})
		
	})
	
	
	</script>
</body>
</html>