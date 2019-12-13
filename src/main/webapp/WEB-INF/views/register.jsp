<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>牛모임 :: 회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content=" Furnish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

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
	<!-- //google fonts -->
	<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  	<script src="/resources/js/slick.js" type="text/javascript" charset="utf-8"></script>

</head>
<body>
<!-- //header -->
<jsp:include page="/WEB-INF/views/front/include/header.jsp" flush="true" />

 <script type="text/javascript">
	$(document).ready(function() {
		
		
		
		var submitForm = $("#submitForm");
		//이름
		var name = document.getElementById("name");
		//아이디
		var id = document.getElementById("id");
		//비밀번호
		var pw = document.getElementById("pw");
		//비밀번호 확인
		var checkPw = document.getElementById("checkPw");
		//이메일
		var email = document.getElementById("email");
		//전화번호
		var phone = document.getElementById("phone");
		//주소
		var sel = document.getElementById("sel");
		//취미
		var sel2 = document.getElementById("sel2");
		
		var file = document.getElementById("files");
		$("#checkId").on("click", function(e) {
			
		});
		
		$("#submitBtn").on("click", function(e) {
		    if(name.value == '' || name.value == null){
		    	alert('이름을 입력해주세요.');
				name.focus();
				return false;
		    }
		    else if(id.value == '' || id.value == null){
				alert('아이디를 입력해주세요.');
				id.focus();
				return false;
			}
			else if(pw.value != checkPw.value || pw.value == '' || pw.value == null){
				alert('입력하신 비밀번호와 비밀번호확인을 정확히 입력해주세요.');
				checkPw.value = "";
				checkPw.focus();
				return false;
			}
			else if(email.value == '' || email.value == null){
				alert('이메일을 입력해주세요.');
				email.focus();
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
					var tag = "<input type='hidden' name='profile' value=' ' />";
			        submitForm.append(tag);
				}
				alert('가입이 완료되었습니다.');
				submitForm.submit();
			}
	});
		
});
</script>
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
				<a href="/">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page">회원가입</li>
		</ol>
	</div>
</div>
<!-- //page details -->

<!-- login -->
<section class="login py-5">
	<div class="container">
		<h3 class="heading mb-sm-5 mb-4 text-center">Create An Account</h3>

		<div class="login-form">
			<form action="/register" id="submitForm" method="post" enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-4 text-md-right">
						<label>이름:</label>
					</div>
					<div class="col-md-8">
						<input type="text" id="name" name="name" placeholder="enter your name">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>아이디:</label>
					</div>
					<div class="col-md-8">
						<input type="text"  id="id" name="userid" placeholder="enter your id">
						<button type="button" id="checkId">중복확인</button>
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>비밀번호:</label>
					</div>
					<div class="col-md-8">
						<input type="password" id="pw" name="userpw" placeholder="Enter your Password">
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>비밀번호 확인:</label>
					</div>
					<div class="col-md-8">
						<input type="password" id="checkPw" placeholder="Enter your Password">
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>이메일:</label>
					</div>
					<div class="col-md-8">
						<input type="email" name="email"  id="email" placeholder="enter your email address">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>전화번호:</label>
					</div>
					<div class="col-md-8">
						<input type="text" name="phone" id="phone" placeholder="enter your phone number">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>지역:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
						<select name="adress" id="sel">
				<option value="1">지역</option>
				<option>경산시</option>
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
						<select name="hobby" id="sel2">
				<option value="1">취미</option>
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
                          <input id="files" type="file" class="default" name='uploadFile'>
                        </div>
				</div>
				<div class="row mt-3">
					<div class="col-md-8 offset-md-4">
						<button type="button" class="btn" id="submitBtn">회원가입</button>
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
			</form>
		</div>

	</div>
</section>
<!-- //login -->

<!-- footer -->
<footer class="footer py-5">
	<div class="container py-md-3">

		<div class="row mt-5">


		

		</div>
	</div>
	<!-- //footer bottom -->
</footer>
<!-- //footer -->

<!-- copyright -->
<section class="copy-right py-4">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<p class="">ÃÂ© 2019 Furnish. All rights reserved | Design by
					<a href="http://w3layouts.com"> W3layouts.</a>
				</p>
			</div>
			<div class="col-md-4 mt-md-0 mt-4">
				<div class="subscribe-form">
					<form action="#" method="post" class="newsletter">
						<input class="subscribe" type="text" placeholder="Subscribe..." required="">
						<button class="form-control btn" value=""><span class="fa fa-long-arrow-right"></span></button>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- copyright -->

<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->

</body>
</html>
