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
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./main?meeting_num=${getInfo.meeting_Num}">메인</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./board/list?meeting_num=${getInfo.meeting_Num}">게시판</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./appointment/list?meeting_num=${getInfo.meeting_Num}">정모</a></li>
        </div>
        <div class="meeting-menu2">
          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href=".">수정하기</a>
          </li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="#" onclick="meetingJoin();">가입하기</a></li>
        </div>
      </ul>
    </div>
  </div>
</section>
<!-- //소모임 메뉴 -->

<!-- 모임 수정 -->
<section class="login py-5">
	<div class="container">
		<h3 class="heading mb-sm-5 mb-4 text-center">modify Meeting</h3>

		<div class="login-form">
			<form action="./meetingModify?meeting_num=${getInfo.meeting_Num}" method="post" enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-4 text-md-right">
						<label>모임 이름:</label>
					</div>
					<div class="col-md-8">
						<input type="text" name="meeting_Name" placeholder="enter your name">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>모임소개:</label>
					</div>
					<div class="col-md-8">
						<input type="text"  name="introduce" placeholder="enter your id">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>지역:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
						<select name="meeting_Adress">
							<option>서울 특별시</option>
							<option>세종 특별시</option>
							<option>대구 광역시</option>
							<option>부산 광역시</option>
							<option>인천 광역시</option>
							<option>울산 광역시</option>
							<option>광주 광역시</option>
							<option>대전 광역시</option>
							<option>강원도</option>
							<option>경기도</option>
							<option>경상도</option>
							<option>전라도</option>
							<option>충청도</option>
							<option>제주도</option>
						</select>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>취미:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
						<select name="meeting_Hobby">
							<option>게임/오락</option>
							<option>운동/스포츠</option>
							<option>인문학/책/글</option>
							<option>만화/애니</option>
							<option>문화/예술</option>
							<option>차/오토바이</option>
							<option>봉사활동</option>
							<option>야구관람</option>
							<option>요리/제조</option>
							<option>여행</option>
							<option>댄스/무용</option>
							<option>외국어/언어</option>
						</select>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>프로필사진:</label>
					</div>
					<div class="compose-editor">
						<input type="file" class="default" name='uploadFile'>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-8 offset-md-4">
						<button class="btn">모임 수정</button>
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />	
				<input type="hidden" name='meeting_Profile' value=" ">			
				<input type="hidden" name="meeting_Num" value="${getInfo.meeting_Num}">
				
			</form>
		</div>

	</div>
</section>
<!-- //모임 수정 -->

<!-- 모임 가입 히든 폼 -->
<form id="frm" action="./main?meeting_num=${getInfo.meeting_Num}" method="post" enctype="multipart/form-data">
	<input type="hidden" name="userid" value="<sec:authentication property="principal.username"/>">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="hidden" name="meeting_num" value="${getInfo.meeting_Num}">
</form>
<!-- //모임 가입 히든 폼 -->

</body>
</html>