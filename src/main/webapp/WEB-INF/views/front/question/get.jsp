<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<title>牛모임 :: 나의 문의 게시글</title>
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
    <style media="screen">
      a:link { color: black; text-decoration: none;}
   a:visited { color: black; text-decoration: none;}
   a:hover { color: black; text-decoration: underline;}
    </style>

	<!-- css files -->
    <link href="/resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->

	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //google fonts -->
</head>
<body>
<!-- //header -->
<jsp:include page="/WEB-INF/views/front/include/header.jsp" flush="true" />
  <!-- //header -->

<!-- inner banner -->
<section class="inner-banner">
	<div class="container">
		<h3 class="text-center">고객센터</h3>
	</div>
</section>
<!-- //inner banner -->

<!-- page details -->
<div class="breadcrumb-agile">
	<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="/">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page"> 고객센터</li>
		</ol>
	</div>
</div>
<!-- //page details -->

<!-- single page  -->
<section class="news py-5">
	<div class="container py-lg-3">
    <h5 style="margin : 20px;">1대1 문의</h5>
    <hr>
			<div class="blog-sec">
				<div class="row mt-lg-3">
          <div class="col-lg-14" style="border: 1px solid black; border-color: #E6E6E6">
          <div class="col-lg-13">
						<h6 class="card-title"><b>${question.title}</b></h6>
						<ul class="blog-info my-2">
							<li class="mr-sm-4 mr-2">등록일자: <fmt:formatDate pattern="yyyy-MM-dd" value="${question.write_date}" /> </li>
							<li class="mr-sm-4 mr-2"> 처리상태: ${question.yn}</li><br>
						</ul>
						<hr>
							<div class="mt-4">
								<p class="card-text">${question.contents}</p>
							</div>
				<c:if test="${question.yn == '처리완료'}">
            	<div>
              <hr>
              <b>답변</b>
              <div style="float: right; margin-right: 30px">${question.answer_date}</div>
              <br><br>
              안녕하십니까 답변자 <b>${question.answer_writer}</b>입니다.<br>
              ${question.answer}
            </div>
            </c:if>
						<div class="comment-top" style="position: relative; top: 60px;">
							<a href="/front/question/myQuestion"><button type="button" class="btn btn-primary" style="float: right;">목록</button></a>
              <c:if test="${question.yn == '처리중'}">
              	<a href="/front/question/modify?question_num=<c:out value="${question.question_num}" />"><button type="button" class="btn btn-primary" style="float: right; margin-right: 5px;">수정</button></a>
              </c:if>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

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
				<p class="">© 2019 Furnish. All rights reserved | Design by
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