<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<title>牛모임 :: 이벤트 리스트</title>
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
    

    <link href="/resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->

	<link href="/resources/css/css_slider.css" type="text/css" rel="stylesheet" media="all">

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
		<h3 class="text-center">이벤트</h3>
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
			<li class="breadcrumb-item active" aria-current="page"> 이벤트</li>
		</ol>
	</div>
</div>
<!-- //page details -->

<!-- Recent News -->
<section class="news py-5">
	<div class="container py-lg-3">
    <h5 style="margin : 20px;"><a href="#" style="color : #007bff">진행중인 이벤트</a> | <a href="./endList">종료된 이벤트</a></h5>
    <hr>
    <h4 style="margin-top : 50px; margin-bottom : 20px"><b>진행중인 이벤트</b></h4>
		<div class="row blog-grids">
		<c:forEach items="${eventList}" var="event">
      <div class="col-lg-4 col-md-6 newsgrid1" style="margin-top:30px;">
        <div onClick="location.href='/front/event/get?event_num=<c:out value="${event.event_num}" />'"><img src="/resources/img/1.jpg" alt="news image" class="img-fluid2"></div>
		<h4 class="mt-4" onClick="location.href='/front/event/get?event_num=<c:out value="${event.event_num}" />'"><c:out value="${event.title}" /></h4>
		<ul class="blog-info mt-2">
		 <li class="mr-4" style="margin : 50"><fmt:formatDate pattern="yyyy-MM-dd" value="${event.event_start_date}" /> ~ <fmt:formatDate pattern="yyyy-MM-dd" value="${event.event_end_date}" /></li>
		</ul>
	  </div>
	  </c:forEach>

      <div class="container">
      <div style="margin : 20px;">
       <ul class="pagination justify-content-center">
               <li class="page-item"><a class="page-link" href="#">Previous</a></li>
               <li class="page-item"><a class="page-link" href="#">1</a></li>
               <li class="page-item"><a class="page-link" href="#">2</a></li>
               <li class="page-item"><a class="page-link" href="#">3</a></li>
               <li class="page-item"><a class="page-link" href="#">4</a></li>
               <li class="page-item"><a class="page-link" href="#">5</a></li>
               <li class="page-item"><a class="page-link" href="#">Next</a></li>
       </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- //Recent News -->

<!-- footer -->
<footer class="footer py-5">
	
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