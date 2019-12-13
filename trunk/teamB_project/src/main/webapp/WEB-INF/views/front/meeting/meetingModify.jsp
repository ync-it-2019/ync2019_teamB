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
	<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script src="/resources/js/slick.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
	function meetingJoin() {
		
		if(confirm('가입하시겠습니까?')) {
			alert('가입되었습니다.');
			document.getElementById('frm').submit();
		}
	}
</script>
<script type="text/javascript">
   $(document).ready(function() {
      var modifyForm = $("#modifyForm");
     //모임 이름
      var name = document.getElementById("name");
      //모임 소개
      var intro = document.getElementById("intro");
       //모임 활동지역
      var sel = document.getElementById("sel");
      //모임 관심사
      var sel2 = document.getElementById("sel2");
     //모임 대표사진
      var profile = document.getElementById("profile");
      
      $("#modify").on("click", function(e) {
             if(name.value == '' || intro.value == ''){
               alert('모임 정보를 입력해주세요.');
               name.focus();
               return false;
            } 
             else if(sel.value == 1){
               alert('지역을 선택해주세요.');
               return false;
            }
            else if(sel2.value == 1){
               alert('취미를 선택해주세요.');
               return false;
            } 
             else{
               if(profile.value == ''){
                  var tag = "<input type='hidden' name='profile' value='<c:out value="${getInfo.meeting_Profile}"/>' />";
                    modifyForm.append(tag);
               }
               alert('수정이 완료되었습니다.');
               modifyForm.submit();
            } 
      });

      
   });
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
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/appointment/list?meeting_num=${getInfo.meeting_Num}">정모</a></li>
        </div>
        <div class="meeting-menu2">
          </li>
          <!-- 가입버튼 비로그인 시 -->
          <sec:authorize access="isAnonymous()"><a onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');" href="/login">
             <li class="mr-3 ml-3 mt-3 mb-3">가입하기</li></a>
          </sec:authorize>
<!-- 가입버튼 로그인 시 -->   
        <sec:authorize access="isAuthenticated()">
        <sec:authentication var="user" property="principal" />
          <c:set var="username" value="${user.username }"/>
          <c:set var="member_userid" value="${getInfo.userid }"/>
        <c:choose>
           <c:when test="${member_userid eq username}">
           <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/meetingModify?meeting_num=${getInfo.meeting_Num}">수정하기</a></li>
           </c:when>
           <c:otherwise>
           <c:set var="count" value="0"/>
           <c:forEach items="${getMemberList}" var="memberList" varStatus="status">
           <c:set var="userid" value="${memberList.userid }"/>
                 <c:if test="${userid eq username}">
                 <li class="mr-3 ml-3 mt-3 mb-3"><a href="#" onclick="outMeeting();">탈퇴하기</a></li>
                 <c:set var="count" value="1"/>
                 </c:if>
         </c:forEach>
         <c:if test="${count eq 0}">
           <li class="mr-3 ml-3 mt-3 mb-3"><a href="#" onclick="meetingJoin();">가입하기</a></li>
           </c:if>
           </c:otherwise>
        </c:choose>
        </sec:authorize> 
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
			<form action="/front/meeting/meetingModify?meeting_num=${getInfo.meeting_Num}" id="modifyForm" method="post" enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-4 text-md-right">
						<label>모임 이름:</label>
					</div>
					<div class="col-md-8">
						<input type="text" name="meeting_Name" id="name" value="${getInfo.meeting_Name}">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>모임소개:</label>
					</div>
					<div class="col-md-8">
						<input type="text"  name="introduce" id="intro" value="${getInfo.introduce}">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>지역:</label>
					</div>
				<div class="col-md-8" style="position: relative; top: 12px;">
				<c:set var="adress" value="${getInfo.meeting_Adress}"/>
               		<select name="meeting_Adress" id="sel">
            			<option value="1">지역</option>
            			<option <c:if test="${adress eq '경산시'}">selected="selected"
            				</c:if>>경산시</option>
               			<option <c:if test="${adress eq '서울 특별시'}">selected="selected"
           				 	</c:if>>서울 특별시</option>
                		<option <c:if test="${adress eq '세종 특별시'}">selected="selected"
           					 </c:if>>세종 특별시</option>
               	 		<option <c:if test="${adress eq '대구 광역시'}">selected="selected"
            			 	</c:if>>대구 광역시</option>
               			<option <c:if test="${adress eq '부산 광역시'}">selected="selected"
            				 </c:if>>부산 광역시</option>
             	   		<option <c:if test="${adress eq '인천 광역시'}">selected="selected"
            			 	 </c:if>>인천 광역시</option>
               	    	<option <c:if test="${adress eq '울산 광역시'}">selected="selected"
          				 	 </c:if>>울산 광역시</option>
              	    	<option <c:if test="${adress eq '광주 광역시'}">selected="selected"
           				 	 </c:if>>광주 광역시</option>
                    	<option <c:if test="${adress eq '대전 광역시'}">selected="selected"
            			 	 </c:if>>대전 광역시</option>
                   		<option <c:if test="${adress eq '강원도'}">selected="selected"
            			 	 </c:if>>강원도</option>
               	    	<option <c:if test="${adress eq '경기도'}">selected="selected"
         				 	 </c:if>>경기도</option>
                    	<option <c:if test="${adress eq '경상도'}">selected="selected"
            			 	 </c:if>>경상도</option>
                    	<option <c:if test="${adress eq '전라도'}">selected="selected"
           				 	 </c:if>>전라도</option>
                    	<option <c:if test="${adress eq '충청도'}">selected="selected"
            			 	 </c:if>>충청도</option>
                    	<option <c:if test="${adress eq '제주도'}">selected="selected"
            			 	 </c:if>>제주도</option>
                   </select>
				</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>취미:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
					<c:set var="meeting_Hobby" value="${getInfo.meeting_Hobby}"/>
						<select name="meeting_Hobby" id="sel2">
						<option value="1">카테고리</option>
							<option <c:if test="${meeting_Hobby eq '게임/오락'}">selected="selected"
            					</c:if>>게임/오락</option>	
            				<option <c:if test="${meeting_Hobby eq '운동/스포츠'}">selected="selected"	
            					</c:if>>운동/스포츠</option>			
            				<option <c:if test="${meeting_Hobby eq '인문학/책/글'}">selected="selected"		
								</c:if>>인문학/책/글</option>
							<option <c:if test="${meeting_Hobby eq '만화/애니'}">selected="selected"
								</c:if>>만화/애니</option>
							<option <c:if test="${meeting_Hobby eq '문화/예술'}">selected="selected"
								</c:if>>문화/예술</option>
							<option <c:if test="${meeting_Hobby eq '차/오토바이'}">selected="selected"
							</c:if>>차/오토바이</option>
							<option <c:if test="${meeting_Hobby eq '봉사활동'}">selected="selected"
								</c:if>>봉사활동</option>
							<option <c:if test="${meeting_Hobby eq '야구관람'}">selected="selected"
								</c:if>>야구관람</option>
							<option <c:if test="${meeting_Hobby eq '요리/제조'}">selected="selected"
								</c:if>>요리/제조</option>
							<option <c:if test="${meeting_Hobby eq '여행'}">selected="selected"
								</c:if>>여행</option>
							<option <c:if test="${meeting_Hobby eq '댄스/무용'}">selected="selected"
								</c:if>>댄스/무용</option>
							<option <c:if test="${meeting_Hobby eq '외국어/언어'}">selected="selected"
								</c:if>>외국어/언어</option>
						</select>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>프로필사진:</label>
					</div>
					<div class="compose-editor">
						<input type="file" class="default" name='uploadFile' id="profile">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-8 offset-md-4">
						<button type="button" class="btn" id="modify">모임 수정</button>
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />	
				<input type="hidden" name='meeting_Profile' value="${getInfo.meeting_Profile}">			
				<input type="hidden" name="meeting_Num" value="${getInfo.meeting_Num}">
				
			</form>
		</div>

	</div>
</section>
<!-- //모임 수정 -->

<!-- 모임 가입 히든 폼 -->
<form id="frm" action="/front/meeting/main?meeting_num=${getInfo.meeting_Num}" method="post" enctype="multipart/form-data">
	<input type="hidden" name="userid" value="<sec:authentication property="principal.username"/>">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="hidden" name="meeting_num" value="${getInfo.meeting_Num}">
</form>
<!-- //모임 가입 히든 폼 -->

</body>
</html>