<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
 <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
        
        
    </script>

	<!-- css files -->
    <link href="/resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->

	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  	<script src="/resources/js/slick.js" type="text/javascript" charset="utf-8"></script>
 
<title>牛모임 :: 마이페이지</title>
</head>
<body>
<!-- //header -->
  <header class="py-sm-3 pt-3 pb-2" id="home">
<jsp:include page="/WEB-INF/views/front/include/header.jsp" flush="true" />
  </header>
  <!-- //header -->

<!-- inner banner -->
<section class="inner-banner">
	<div class="container">
	</div>
</section>
<!-- //inner banner -->

<!-- page details -->
<div class="breadcrumb-agile mt-4">
	<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="index.html">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page"> 마이페이지</li>
		</ol>
	</div>
</div>
<!-- //page details -->

<!-- login -->
<section class="login py-5">
	<div class="container">
		<h3 class="heading mb-sm-5 mb-4 text-center">마이페이지</h3>
    <h4>회원 정보 수정</h4>
    <hr>
		<div class="login-form">
			<form action="/front/myPage/modify" id="modifyForm" method="post" enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-4 text-md-right">
						<label>이름:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						<c:out value="${member.name}"/>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>아이디:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
						<c:out value="${member.userid}"/>
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>비밀번호:</label>
					</div>
					<div class="col-md-8">
						<input name='userpw' id="pw" type="password" placeholder="Enter your new Password">
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>비밀번호 확인:</label>
					</div>
					<div class="col-md-8">
						<input name='userpwCheck' id="checkPw" type="password" placeholder="Enter your new Password">
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>이메일:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						<c:out value="${member.email}"/>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>전화번호:</label>
					</div>
					<div class="col-md-8">
						<input type="text" id="phone" name='phone' value="<c:out value="${member.phone}"/>">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>활동지역:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
					<c:set var="adress" value="${member.adress }"/>
					<select name="adress" id="sel">
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
				<select name="hobby" id ="sel2">
						<c:set var="hobby" value="${member.hobby }"/>
				<option value="1">취미</option>
                <option <c:if test="${hobby eq '게임오락'}">selected="selected"
				</c:if>>게임/오락</option>
                <option <c:if test="${hobby eq '운동/스포츠'}">selected="selected"
				</c:if>>운동/스포츠</option>
                <option <c:if test="${hobby eq '인문학/책/글'}">selected="selected"
				</c:if>>인문학/책/글</option>
                <option <c:if test="${hobby eq '만화/애니'}">selected="selected"
				</c:if>>만화/애니</option>
                <option <c:if test="${hobby eq '문화/예술'}">selected="selected"
				</c:if>>문화/예술</option>
                <option <c:if test="${hobby eq '차/오토바이'}">selected="selected"
				</c:if>>차/오토바이</option>
                <option <c:if test="${hobby eq '봉사활동'}">selected="selected"
				</c:if>>봉사활동</option>
                <option <c:if test="${hobby eq '야구관람'}">selected="selected"
				</c:if>>야구관람</option>
                <option <c:if test="${hobby eq '요리/제조'}">selected="selected"
				</c:if>>요리/제조</option>
                <option <c:if test="${hobby eq '여행'}">selected="selected"
				</c:if>>여행</option>
                <option <c:if test="${hobby eq '댄스/무용'}">selected="selected"
				</c:if>>댄스/무용</option>
                <option <c:if test="${hobby eq '외국어/언어'}">selected="selected"
				</c:if>>외국어/언어</option>
              </select>
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>프로필 사진:</label>
					</div>
					<div class="compose-editor">
                          <input type="file" class="default" name='uploadFile' id='files'>
                        </div>
				</div>
				<div class="row mt-3">
					<div class="col-md-8 offset-md-4">
						<button class="btn row mt-3" type="button" id="modify">정보수정</button>
					</div>
				</div>
				<input type="hidden" name="userid" value="${member.userid}">
				<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
			</form>
      <a href="/front/myPage/info"><button class="btn" style="position: relative; bottom: 56px; left: 320px;">취소</button></a>
		</div>

	</div>
</section>
<!-- //login -->

<!-- footer -->
<footer class="footer py-5">
	<!-- //footer bottom -->
</footer>
<!-- //footer -->

<!-- copyright -->
<section class="copy-right py-4">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<p class="">© YNC Japan employment class.  Team_B Project | Design by JO Junghyeon.
				</p>
			</div>
			<div class="col-md-4 mt-md-0 mt-4">
			</div>
		</div>
	</div>
</section>

<a href="#home" class="move-top text-center"></a>

</body>

<script type="text/javascript">
	$(document).ready(function() {
		var modifyForm = $("#modifyForm");
		
		//비밀번호
		var pw = document.getElementById("pw");
		//비밀번호 확인
		var checkPw = document.getElementById("checkPw");
		//전화번호
		var phone = document.getElementById("phone");
		//주소
		var sel = document.getElementById("sel");
		//취미
		var sel2 = document.getElementById("sel2");
		
		var file = document.getElementById("files");
		$("#modify").on("click", function(e) {
				if(pw.value != checkPw.value || pw.value == '' || pw.value == null){
					alert('입력하신 비밀번호와 비밀번호확인을 맞게 입력해주세요.');
					checkPw.value = "";
					checkPw.focus();
					return false;
				}
				else if(phone.value == '' || phone.value == null){
					alert('전화번호를 입력해주세요.');
					phone.focus();
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
					if(file.value == ''){
						var tag = "<input type='hidden' name='profile' value='<c:out value="${member.profile}"/>' />";
				        modifyForm.append(tag);
					}
					alert('수정이 완료되었습니다.');
					modifyForm.submit();
				}
		});

		
	});
</script>
</html>