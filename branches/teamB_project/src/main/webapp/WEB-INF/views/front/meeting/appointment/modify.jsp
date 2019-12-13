<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>牛모임 :: 모임 정모 글쓰기</title>

<jsp:include page="/WEB-INF/views/front/include/cssLink.jsp" flush="true" />

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>

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
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="#" onclick="meetingJoin();">가입하기</a></li>
        </div>
      </ul>
    </div>
  </div>
</section>
<!-- //소모임 메뉴 -->

<!-- 글쓰기 -->
<section>
	<div class="container">
		<form role="form" action="/front/meeting/appointment/modify" method="post" enctype="multipart/form-data">
			<br style="clear: both">
			<h3 style="margin-bottom: 25px;">정모 수정</h3>
			<div class="form-group">
				<h4>제목</h4><input type="text" class="form-control" name="title" value="${getAppointmentRead.title}" required>
			</div>
			
			<div class="form-group">
				<h4>내용</h4><textarea class="form-control" id="summernote" name="contents" maxlength="140" rows="7">${getAppointmentRead.contents}</textarea>
			</div>
			<div class="input-group-css">
				<h4>정모일&nbsp&nbsp</h4><input type="date" class="form-control-appointment" name="appointment_date" value="${getAppointmentRead.appointment_date}" required>
				<h4>&nbsp&nbsp정모 장소&nbsp&nbsp</h4><input type="text" class="form-control-appointment" name="appointment_place" value="${getAppointmentRead.appointment_place}" required>
				<h4>&nbsp&nbsp정모 최대인원&nbsp&nbsp</h4><input type="text" class="form-control-appointment" name="max_people" value="${getAppointmentRead.max_people}" required>
			</div>
			
			<input type="hidden" name="userid" value="<sec:authentication property="principal.username"/>">
			<input type="hidden" name="meeting_num" value="${getInfo.meeting_Num}">
			<input type="hidden" name="appointment_num" value="${getAppointmentRead.appointment_num}">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			
			<button type="submit" class="btn btn-primary pull-right" style="margin:10px"> 등록 </button>
			<button type="reset" class="btn btn-default pull-right" onClick="history.back();" style="margin:10px">취소</button>
		 </form>
	</div>
</section>
<!-- //글쓰기 -->

<!-- 모임 가입 히든 폼 -->
<form id="frm" action="/front/meeting/main?meeting_num=${getInfo.meeting_Num}" method="post" enctype="multipart/form-data">
	<input type="hidden" name="userid" value="<sec:authentication property="principal.username"/>">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="hidden" name="meeting_num" value="${getInfo.meeting_Num}">
</form>
<!-- //모임 가입 히든 폼 -->

</body>
</html>