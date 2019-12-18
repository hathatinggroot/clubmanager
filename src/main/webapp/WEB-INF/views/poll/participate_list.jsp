<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<tr>
								<td>1</td>
								<td>123FC</td>
								<td>2019-12-16 18:00</td>
								<td>대화구장</td>
								<td>2019-12-15 18:00</td>
								<td><span class="badge badge-vote-over-80">84%</span></td>
							</tr>
							<tr>
								<td>2</td>
								<td>456FC</td>
								<td>2019-12-12 17:00</td>
								<td>백석구장</td>
								<td>2019-12-15 18:00</td>
								<td><span class="badge badge-vote-over-50">64%</span></td>
							</tr>
							<tr>
								<td>3</td>
								<td>789FC</td>
								<td>2019-12-08 17:00</td>
								<td>백석구장</td>
								<td>2019-12-15 18:00</td>
								<td><span class="badge badge-vote-under-50">40%</span></td>
							</tr>
							<tr>
								<td>4</td>
								<td>111FC</td>
								<td>2019-12-08 17:00</td>
								<td>백석구장</td>
								<td>2019-12-15 18:00</td>
								<td><span class="badge badge-vote-end">투표 종료</span></td>
							</tr>
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
							<span>VS&nbsp;</span><span class="large-font">222FC</span>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span>2019-12-11 19:00</span><span class="tab-space-1">백석구장</span>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 enter-row-4">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<span class="large-font">3일 14:33:25</span>
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
						<div class="table-responsive container-fluid">
							<table
								class="table table-condensed table-hover text-center text-white">
								<tr>
									<td>No</td>
									<td>이름</td>
								</tr>
								<tr>
									<td>1</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>2</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>3</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>4</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>6</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>7</td>
									<td>홍길동</td>
								</tr>
							</table>
						</div>
					</div>

					<div class="col-xs-12 col-sm-4 col-md-4">
						<h2>미투표</h2>
						<div class="table-responsive container-fluid">
							<table
								class="table table-condensed table-hover text-center text-white">
								<tr>
									<td>No</td>
									<td>이름</td>
								</tr>
								<tr>
									<td>1</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>2</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>3</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>4</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>6</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>7</td>
									<td>홍길동</td>
								</tr>
							</table>
						</div>
					</div>

					<div class="col-xs-12 col-sm-4 col-md-4">
						<h2>미참석</h2>
						<div class="table-responsive container-fluid">
							<table
								class="table table-condensed table-hover text-center text-white">
								<tr>
									<td>No</td>
									<td>이름</td>
								</tr>
								<tr>
									<td>1</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>2</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>3</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>4</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>5</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>6</td>
									<td>홍길동</td>
								</tr>
								<tr>
									<td>7</td>
									<td>홍길동</td>
								</tr>
							</table>
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
				window.onload=isChecked;
				
	</script>
</body>
</html>