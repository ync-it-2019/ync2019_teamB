<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>牛모임 :: 모임 메인</title>

<jsp:include page="/WEB-INF/views/front/include/cssLink.jsp" flush="true" />

<meta charset="UTF-8">
</head>
<body>

<jsp:include page="/WEB-INF/views/front/include/meetingMainHead.jsp" flush="true" />

<!-- 소모임 소개 -->
<section class="container">
	<div class="pt-3">
		<div class="info-row">
			<div class="meeting-introduce1">
				<div class="meeting-introduce1-info">
					${getInfo.introduce}
				</div>
			</div>
			<div class="meeting-introduce2">
				<!-- 최근 정모글 들어가는 부분 -->
        		<div class="meeting-info-appointment-css">
          			<div class="meeting-info-appointment-css-title">
            			<h3><a href="./appointment/get" style="color:black">${getAppointment.title}</a></h3>
          			</div>
          			<div class="meeting-info-appointment-css-date">
            			${getAppointment.appointment_Date}
            			${getAppointment.appointment_Place}
          			</div>
        		</div>
        		<!-- //최근 정모글 들어가는 부분 -->
        		<!-- 모임 멤버 들어가는 부분 -->
				<div class="">
	 				<h5>모임멤버 7명</h5>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>이름</th>
								<th>직책</th>
							</tr>
						</thead>						
						<tr>
							<th>이주현</th>
							<th>모임장</th>
						</tr>
						<tr>
							<td>이주현</td>
							<td>일반 멤버</td>
						</tr>
						<tr>
							<td>이주현</td>
							<td>일반 멤버</td>
						</tr>
						<tr>
							<td>이주현</td>
							<td>일반 멤버</td>
						</tr>
						<tr>
							<td>이주현</td>
							<td>일반 멤버</td>
						</tr>
						<tr>
							<td>이주현</td>
							<td>일반 멤버</td>
						</tr>
						<tr>
							<td>이주현</td>
							<td>일반 멤버</td>
						</tr>
					</table>
				</div>
				<!-- //모임 멤버 들어가는 부분 -->
			</div>
		</div>
	</div>
</section>
<!-- //소모임 소개 -->
</body>
</html>