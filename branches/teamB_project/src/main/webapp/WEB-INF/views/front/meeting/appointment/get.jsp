<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>牛모임 :: 정모 게시글 보기</title>

<jsp:include page="/WEB-INF/views/front/include/cssLink.jsp" flush="true" />

<script type="text/javascript">
	function meetingJoin() {
		
		if(confirm("가입하시겠습니까?")) {
			alert("가입되었습니다.");
			document.getElementById('frm').submit();
		}
	}
</script>

<meta charset="UTF-8">
</head>
<body>

<!-- 소모임 페이지 상단 이미지 / 이름 -->
<Header class="meeting-page-name-space" style="background: url(/resources/upload/<c:out value="${getInfo.meeting_Profile}" />) no-repeat center; background-size: cover;">
	<div class="meeting-overlay py-5">
		<div class="container py-lg-5">
			<div class="text-center py-5">
        <div class="meeting-name-style">
					${getInfo.meeting_Name}
				</div>
			</div>
		</div>
	</div>
</Header>
<!-- //소모임 페이지 상단 이미지 / 이름 -->

<!-- 소모임 메뉴 -->
<section>
  <div class="container">
    <div id="meeting-menu">
      <ul class="menu info-row">
        <div class="meeting-menu1">
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/main?meeting_num=${getInfo.meeting_Num}">메인</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/board/list?meeting_num=${getInfo.meeting_Num}">게시판</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href="/front/meeting/appointment/list?meeting_num=${getInfo.meeting_Num}">정모</a></li>
        </div>
        <div class="meeting-menu2">
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/meetingModify?meeting_num=${getInfo.meeting_Num}">수정하기</a>
          </li>
          <sec:authorize access="isAnonymous()"><a onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');" href="/login"><li class="mr-3 ml-3 mt-3 mb-3">가입하기</li></a></sec:authorize>
		  <sec:authorize access="isAuthenticated()"><li class="mr-3 ml-3 mt-3 mb-3"><a href="#" onclick="meetingJoin();">탈퇴하기</a></li></sec:authorize></h5>
        </div>
      </ul>
    </div>
  </div>
</section>
<!-- //소모임 메뉴 -->

<!-- 정모 게시글 제목 -->
<section>
  <div class="container">
    <h2 style="font-weight:bold; text-align:center;" class="my-3">${getAppointmentRead.title}</h2>
  </div>
</section>
<!-- //정모 게시글 제목 -->

<!-- 정모 게시글 -->
<section class="container">
	<div class="mx-3">
		<div style="display: flex; flex-wrap: wrap;">
			<div style="width: 25%;" class="ml-3">
				<!-- 정모 상세 -->
				<div class="mb-3">
					<table>
						<tr><td>${getAppointmentRead.appointment_date}</td></tr>
						<tr><td>${getAppointmentRead.appointment_place}</td></tr>
						<tr><td>최대인원 ${getAppointmentRead.max_people}명</td></tr>
					</table>
				</div>
				<!-- //정모 상세 -->
				
				<!-- 정모 참여 인원 -->
				<div>
					참여 인원 : ${getParticipantsCount}명
					<table class="table table-striped">
						<c:forEach items="${getParticipantsInfo}" var="participantsInfo" varStatus="status">
							<tr style="text-align: center;">
								<td><c:out value="${participantsInfo.userid}" />
							</tr>
						</c:forEach>
					</table>
					
					
				</div>
				<!-- //정모 참여 인원 -->
			</div>
			<!-- 정모 안내글 -->
			<div style="width: 65%; border-left: 1px solid #eee;" class="mx-3">
				<div class="mx-3">
					${getAppointmentRead.contents}
				</div>
			</div>
      		<!-- //정모 안내글 -->
		</div>
	</div>
</section>
<!-- //정모 게시글 -->

<!-- 정모 참석 / 수정 / 삭제 버튼 -->
<section>
	<div class="container" style="text-align: center;">
		<a href="#" onclick="appoParticipation()"><button type="button" name="participation" class="btn btn-secondary mb-3" style="margin-left:100px;">정모 참가 신청하기</button></a>
		<a href="#" onclick="appointmentDelete()"><button type="button" name="delete" class="btn btn-danger pull-right">삭제</button></a>
		<a href="./modify?meeting_num=${getInfo.meeting_Num}&appointment_num=${getAppointmentRead.appointment_num}"><button type="button" name="modify" class="btn btn-primary pull-right mr-2">수정</button></a>
	</div>
</section>
<!-- //정모 참석 버튼 -->

<!-- 정모 삭제 히든 폼 -->
<form id="frmDelete" action="/front/meeting/appointment/get" method="post" enctype="multipart/form-data">
	<input type="hidden" name="meeting_num" value="${getInfo.meeting_Num}">
	<input type="hidden" name="appointment_num" value="${getAppointmentRead.appointment_num}">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<!-- //정모 삭제 히든 폼 -->

<!-- 정모 참여 히든 폼 -->
<form id="frmParticipation" action="/front/meeting/appointment/participation" method="post" enctype="multipart/form-data">
	<input type="hidden" name="appointment_num" value="${getAppointmentRead.appointment_num}">
	<input type="hidden" name="userid" value="<sec:authentication property="principal.username"/>">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="hidden" name="meeting_num" value="${getInfo.meeting_Num}">
	<input type="hidden" name="participants_num" value="${getParticipantsNum.participants_num + 1}">
</form>
<!-- //모임 가입 히든 폼 -->

<!-- 모임 가입 히든 폼 -->
<sec:authorize access="isAuthenticated()">
<form id="frm" action="/front/meeting/main?meeting_num=${getInfo.meeting_Num}" method="post" enctype="multipart/form-data">
	<input type="hidden" name="userid" value="<sec:authentication property="principal.username"/>">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="hidden" name="meeting_num" value="${getInfo.meeting_Num}">
</form>
<!-- //모임 가입 히든 폼 -->
</sec:authorize>
</body>

<script type="text/javascript">
	function appointmentDelete() {
		
		if(confirm("삭제하시겠습니까?")) {
			alert("삭제되었습니다.");
			document.getElementById('frmDelete').submit();
		}
	}
	
	function appoParticipation() {
		
		if(confirm("정모에 참가하시겠습니까?")) {
			alert("참가하였습니다.");
			document.getElementById('frmParticipation').submit();
		}
	}
</script>
</html>