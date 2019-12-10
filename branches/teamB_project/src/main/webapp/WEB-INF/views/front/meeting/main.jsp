<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>牛모임 :: 모임 메인</title>

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
          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href="./main?meeting_num=${getInfo.meeting_Num}">메인</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./board/list?meeting_num=${getInfo.meeting_Num}">게시판</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./appointment/list?meeting_num=${getInfo.meeting_Num}">정모</a></li>
        </div>
        <div class="meeting-menu2">
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./meetingModify?meeting_num=${getInfo.meeting_Num}">수정하기</a>
          </li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="#" onclick="meetingJoin();">가입하기</a></li>
        </div>
      </ul>
    </div>
  </div>
</section>
<!-- //소모임 메뉴 -->

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
          				<fmt:formatDate pattern="yyyy-MM-dd" value="${getAppointment.appointment_Date}" />
            			${getAppointment.appointment_Place}
          			</div>
        		</div>
        		<!-- //최근 정모글 들어가는 부분 -->
        		<!-- 모임 멤버 들어가는 부분 -->
				<div class="">
	 				<h5>모임멤버 ${getCount}명</h5>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>이름</th>
								<th>가입일</th>
							</tr>
						</thead>
						
						<c:forEach items="${getMemberList}" var="memberList" varStatus="status">
							<tr>
								<td><c:out value="${memberList.userid}" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${memberList.join_date}" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!-- //모임 멤버 들어가는 부분 -->
			</div>
		</div>
	</div>
</section>
<!-- //소모임 소개 -->

<!-- 모임 가입 히든 폼 -->
<form id="frm" action="./main?meeting_num=${getInfo.meeting_Num}" method="post" enctype="multipart/form-data">
	<input type="hidden" name="userid" value="<sec:authentication property="principal.username"/>">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="hidden" name="meeting_num" value="${getInfo.meeting_Num}">
</form>
<!-- //모임 가입 히든 폼 -->

</body>
</html>