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
	<!-- //google fonts -->
<title>牛모임 :: 마이페이지</title>
</head>
<body>
<!-- //header -->
<jsp:include page="/WEB-INF/views/front/include/header.jsp" flush="true" />
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
    <h4>회원 정보</h4>
    <div style="float: right; position: relative; bottom: 18px; right: 20px;"><r style="color: #FF0000;">*</r>수정불가 항목</div>
    <hr>
		<div class="login-form" style="position: relative; right: 100px;">
				<div class="row" style="margin-top: 50px;">
					<div class="col-md-4 text-md-right">
						<label><r style="color: #FF0000;">*</r>이름:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						<c:out value="${member.name}"/>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label><r style="color: #FF0000;">*</r>아이디:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
						<c:out value="${member.userid}"/>
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>비밀번호:</label>
					</div>
          <div id="password" class="col-md-8" style="position: relative; top: 12px;">
						*******
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label><r style="color: #FF0000;">*</r>이메일:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						<c:out value="${member.email}"/>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>전화번호:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						<c:out value="${member.phone}"/>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>활동지역:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						<c:out value="${member.adress}"/>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>취미:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						<c:out value="${member.hobby}"/>
					</div>
				</div>
          <div style="position: relative; bottom: 370px; left: 380px;">
          <c:choose>
          	<c:when test="${member.profile == ' ' }">
          	<img src="/resources/img/man.png">
          	</c:when>
          	<c:otherwise>
          	<img src="/resources/upload/<c:out value="${member.profile}" />" alt="" style="height:353px; width:256px;">
          	</c:otherwise>
          </c:choose>
          	
          </div>
			<a href="/front/myPage/modify?userid=<sec:authentication property="principal.username"/>">
          			<button class="btn" style="float: right; position: relative; bottom: 360px; left: 484px;">
          				회원 정보 변경
          			</button>
          		</a>
		</div>
	</div>
</section>
<!-- //login -->

<!-- footer -->
<footer class="footer py-5">

	<!-- //footer bottom -->
</footer>
<!-- //footer -->
<div class="push"></div>
<!-- copyright -->
<section class="copy-right py-4">
   <div class="container">
      <div class="row">
         <div class="col-md-8">
            <p class="">© YNC Japan employment class.  Team_B Project | Design by JO Junghyeon.
            </p>
         </div>
         <div class="col-md-4 mt-md-0 mt-4">
            <div class="subscribe-form">
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