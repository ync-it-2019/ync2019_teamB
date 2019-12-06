<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<title>牛모임 :: FAQ</title>
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
	
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
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
				<a href="index.html">Home</a>
			</li>
      <li class="breadcrumb-item">
				<a href="FAQ.html">고객센터</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page"> 1:1문의</li>
		</ol>
	</div>
</div>
<!-- //page details -->

<!-- contact -->
<section class="contact py-5">
	<!-- contact content -->
	<div class="contact-cont pb-3">
		<div class="container">
			<div class="row mail-w3l-w3pvt-">
				<div class="col-lg-14">
            <h4>1:1문의</h4>
            <hr>
            <form role="form" action="/front/question/write" method="post" enctype="multipart/form-data">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="hidden" name='files' value=" ">
							<div class="form-group">
                문의 분류 &nbsp;
                <select name="abc">
                <option>계정</option>
                <option>모임</option>
                <option>기타</option>
              </select>
							</div>
              <hr>
							<div class="form-group">
								아이디: <input type="text" class="form-control" name = "userid"
                        value = '<sec:authentication property = "principal.username"/>' readonly="readonly">
							</div>
							<div class="form-group">
								제목<input type="text" id="to" class="form-control" name='title'>
							</div>
							<div class="form-group">
								내용<textarea name='contents' rows="10" class="form-control"></textarea>
							</div>
              <div class="form-group">
								첨부파일: 
                <input type="file" name="uploadFile" multiple>
                <div style="position: relative; bottom: 37px;">
              </div>
							</div>
              <div style="float: right;">
                <a href="/front/question/myQuestion"><button type="submit" class="btn btn-primary" style="position: relative; right: 70px;">문의하기</button></a>
              </div>
              <input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
              </form>
              <div style="float: right; margin-right: 10px;">
              <a href="/front/question/FAQ"><button type="button" class="btn btn-primary" style="position: relative; left: 100px;">취소</button></a>
              </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //contact content -->
</section>
<!-- //contact -->

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