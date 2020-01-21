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
<title>Man Of The Match</title>

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
			<!--  MoM start-->
			<div class="row">
				<div class="text-center text-white text-nowrap">
					<h1>
						<dfn>Man Of The Match</dfn>
					</h1>
				</div>
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
								<button type="button" class="btn btn-default" data-endTime=""
									data-matchNo="" id="endTimeModBtn">시간 조정</button>
							</c:if>
						</div>
					</div>
				</div>
				<!-- poll info end -->

				<!-- Participated Player list Table start -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="table-responsive container-fluid" id="recordList">
					</div>
				</div>
				<!-- Participated Player list Table start -->
			</div>
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
									</select> <label for="modEndYear">년 </label> <select id="modEndMonth">
										<c:forEach begin="1" end="12" var="mon">
											<option value="${mon }">${mon }</option>
										</c:forEach>
									</select> <label for="modEndMonth">월 </label> <select id="modEndDay">
										<c:forEach begin="1" end="31" var="day">
											<option value="${day }">${day }</option>
										</c:forEach>
									</select> <label for="modEndDay">일 </label> <select id="modEndHour">
										<c:forEach begin="0" end="24" var="hour">
											<option value="${hour }"><c:if test="${hour < 10}">0</c:if>${hour }</option>
										</c:forEach>
									</select> <label for="modEndHour">: </label> <select id="modEndMin">
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
	var matchNo = '';
	$("#doVote").on("click",function(e){
			alert("doVote clicked");
	})
		
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
			console.log("running check");
			$("#remainTime").html('투표 종료').css("color","red");
			clearInterval(timerInteval);
			
			endVote();
			
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
		
	var showDetail = function(clubCode){
		$.ajax({
			type : "get",
			url : "/poll/pollmom/"+clubCode,
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(result) {
				console.log("result..........");
				console.log(result);
				if(result!=null && result != ''){
					matchNo = result.matchNo;
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
					var str="<table class='table table-condensed table-hover text-center text-white'>"
						 + "<tr><td>No</td><td>이름</td><td>득점</td><td>도움</td><td>세이브</td><td>선택</td></tr>";
					var i=1;
					
					var myStatus = '';
					
					for(var ps of result.psList){
						if(ps.userId == "${principal.member.userId}"){
							myStatus = ps.status;
							console.log("myStatus : " +myStatus);
						}
					}
					console.log(myStatus);
					if(myStatus == '1'){
						if("${principal.member.auth}" != 'ROLE_OWNER' && "${principal.member.auth}" != 'ROLE_MANAGER'){
							alert("투표를 완료했습니다. 홈으로 이동합니다")	;
							location.href="/";
						}else{
							alert("이미 투표를 완료했습니다.")	;
						}
					}else if(myStatus != 0 && myStatus ==''){
						alert("경기에 참석하지 않았으므로 투표가 불가합니다. 홈으로 이동합니다.");
						location.href="/";
					}
						for(var pr of result.prList){
							str += 		"<tr>"
									   + "<td>"+(i++)+"</td>"
									   + "<td>"+pr.userName+"</td>"
									   + "<td>"+pr.goals+"</td>"
									   + "<td>"+pr.assists+"</td>"
									   + "<td>"+pr.saves+"</td>";
							if(myStatus == '1'){
								str += "<td>투표 완료</td>";
								continue;
							}
							str		  += "<td><button type='button' class='btn btn-default btn-block'"
									   + "onclick='vote(\""+pr.userId
									   + "\",\""+pr.userName+"\",\""+result.matchVO.matchNo +"\");'>선택</button></td>";
									   
							str		  +="</tr>";
						}
					str += "</table>";
					$("#recordList").html(str);
				}else{
					alert("진행중인 투표가 없습니다");
					location.href="/";
				}
			}
		});
	}
		
		window.onload = function(){
			showDetail('${principal.member.clubCode}');
		}
		
		
		$("#endTimeModBtn").on("click",function(e){
			$("#modifyEndDate").modal('show');
		})
		
		$("#modifyEndDate").on("show.bs.modal",function(e){
			var milliSec = parseInt($("#endTimeModBtn")[0].dataset.endtime);
			var originEndTime = new Date(milliSec);
			console.log(originEndTime);
			
			$("#modEndYear").val(originEndTime.getYear()+1900);
			$("#modEndMonth").val(originEndTime.getMonth()+1);
			$("#modEndDay").val(originEndTime.getDate());
			$("#modEndHour").val(originEndTime.getHours());
			$("#modEndMin").val(originEndTime.getMinutes());
		})
		
		$("#doModifyEndTime").on("click",function(e){
		
		var matchNo = $("#endTimeModBtn").data("matchno");
		console.log(matchNo);
		var modEndYear = $("#modEndYear").val();
		var modEndMonth = $("#modEndMonth").val();
		var modEndDay = $("#modEndDay").val();
		var modEndHour = $("#modEndHour").val();
		var modEndMin = $("#modEndMin").val();
		var modEndD = new Date(modEndYear, modEndMonth - 1, modEndDay,
				modEndHour, modEndMin, 0, 0);
		console.log(modEndD);
		var pmVO = new Object();
		pmVO.matchNo = matchNo;
		pmVO.endDate = modEndD;
		
		$.ajax({
			type:"put",
			url:"/poll/pollmom/",
			data : JSON.stringify(pmVO),
			contentType : "application/json",
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(result){
				console.log("modifyPM Result : " + result);
				$("#modifyEndDate").modal('hide');
				showDetail("${principal.member.clubCode}");
			}
		})
		
	})
	
	$("#endVote").on("click",function(e){
		
		var matchNo = $("#endTimeModBtn").data("matchno");
		console.log(matchNo);
		var pmVO = new Object();
		pmVO.matchNo = matchNo;
		pmVO.endDate = new Date();
		
		$.ajax({
			type:"put",
			url:"/poll/pollmom/",
			data : JSON.stringify(pmVO),
			contentType : "application/json",
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			success : function(result){
				console.log("modifyPP Result : " + result);
				$("#modifyEndDate").modal('hide');
				showDetail("${principal.member.clubCode}");
			}
		})
		
	})	
	
	var vote = function(userId, userName, matchNo){
			if(confirm(userName+"님에게 투표하시겠습니까? 투표 이후엔 재투표가 불가합니다")){
				var voteTo = userId;//picked 득표 ++
				var voter = "${principal.member.userId}";//voter 투표 완료 표시
				
				var psDTO = new Object();
				psDTO.status = 1;
				psDTO.userId = voter;
				psDTO.matchNo = matchNo;
				psDTO.pollType = 2;
				psDTO.voteTo = voteTo;
				console.log(psDTO);
				
				$.ajax({
					type:"put",
					url:"/poll/pollstatus/",
					data : JSON.stringify(psDTO),
					contentType : "application/json",
					beforeSend : function(xhr) {
						xhr.setRequestHeader(header, token);
					},
					success : function(result){
						console.log("vote Result : " + result);
						$("#modifyEndDate").modal('hide');
						showDetail("${principal.member.clubCode}");
					}
				})	
			};
		}	
		
	var endVote = function(){
		location.href="/poll/endMoMVote?clubCode=${principal.member.clubCode}&matchNo="+matchNo;
	}
	</script>
</body>
</html>