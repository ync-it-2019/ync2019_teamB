<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!-- 
 /**
  * @FileName	: MeetingController.java
  * @Date		: 2019. 12. 11.
  * @Author		: 장윤석
  * @프로그램 설명 : 소모임 게시판 작성
  */
 -->
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
  <script type="application/x-javascript">
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
  <script type="text/javascript">
	function meetingJoin() {
		
		if(confirm("가입하시겠습니까?")) {
			alert("가입되었습니다.");
			document.getElementById('frm').submit();
		}
	}
  </script>
  <script src="/resources/js/admin/jquery2.0.3.min.js"></script>
  <!-- //$(document).ready를 사용하려면 필요함 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>牛모임 :: 모임 게시판 글쓰기</title>

<jsp:include page="/WEB-INF/views/front/include/cssLink.jsp" flush="true" />
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
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
          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href="/front/meeting/board/list?meeting_num=${getInfo.meeting_Num}&pageNum=1">게시판</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/appointment/list?meeting_num=${getInfo.meeting_Num}&pageNum=1">정모</a></li>
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

<!-- 글쓰기 -->
<section>
	<div class="container">
		<br style="clear: both">
	<!-- contact -->
	<section class="contact py-5">
	<!-- contact content -->
	<div class="contact-cont pb-3">
		<div class="container">
		<div class="row mail-w3l-w3pvt-">
			<div class="col-lg-14">
			<h3 style="margin-bottom: 25px;">게시글 작성</h3>
            <form role="form" action="/front/meeting/board/write" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<input type="hidden" class="form-control" name = "meeting_num"
                   		   value = '${param.meeting_num}' readonly="readonly">
				</div>
				<div class="form-group">
					아이디 <input type="text" class="form-control" name = "userid"
                        		value = '<sec:authentication property = "principal.username"/>' readonly="readonly">
				</div>
				<div class="form-group">
					제목<input type="text" id="to" class="form-control" name='title' placeholder="제목을 입력해주세요" required>
				</div>
				<div class="form-group">
					 카테고리 &nbsp;
              		<select name="category" id="selectBox">
                		<option>자유</option>
               			<option>정모후기</option>
               			<option>공지사항</option>
             		</select>
				</div>
				<div class="form-group">
					<textarea class="form-control" id="summernote" name="contents" placeholder="내용을 적어주세요" maxlength="140" rows="7"></textarea>
				</div>
                <div class="form-group">
								첨부파일 <input type="file" name="uploadFile" multiple>
								 <input type="hidden" name="files" multiple>
                	<div style="position: relative; bottom: 37px;"></div>
			    </div>
			  
			  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
              <div style="float: right;">
              	<button type="submit" class="btn btn-primary" style="position: relative; right: 70px;">등록</button>
              </div>
              <div style="float: right; margin-right: 10px;">
             	 <button type="button" class="btn sm" style="position: relative; left: 70px;" onclick="history.back()">취소</button>
              </div>
          </form>
		  </div>
		</div>
	  </div>
	</div>
	<!-- //contact content -->
</section>
<!-- //contact -->
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