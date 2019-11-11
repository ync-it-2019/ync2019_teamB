<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Furnish Interior Category Flat Bootstrap Responsive Web Template | Login Page :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">


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

</head>
<body>
<!-- //header -->
  <header class="py-sm-3 pt-3 pb-2" id="home">
     <div class="container">
        <!-- nav -->
        <div class="top d-md-flex">
           <div id="logo">
              <h1> <a href="/"><span class="fa fa-meetup"></span> 牛모임</a></h1>
           </div>
           <div class="search-form mx-md-auto">
              <div class="n-right-w3ls">
                 <form action="#" method="post" class="newsletter">
                    <input class="search" type="text" placeholder="Search..." required="">
                    <button class="form-control btn" value=""><span class="fa fa-search"></span></button>
                 </form>
              </div>
           </div>
           <div class="forms mt-md-0 mt-2">
              <a href="/login" class="btn"><span class="fa fa-user-circle-o"></span> 로그인</a>
              <a href="/register" class="btn"><span class="fa fa-pencil-square-o"></span> 회원가입</a>
              <a href="/loout" class="btn"><span class="fa fa-user-circle-o"></span> 로그아웃</a>
              <a href="/front/myPage/info" class="btn"><span class="fa fa-pencil-square-o"></span> 마이페이지</a>
           </div>
        </div>
        <nav class="text-center">
           <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
           <input type="checkbox" id="drop" />
           <ul class="menu">
              <li class="mr-lg-4 mr-2"><a href="/">홈</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/notice/list">공지사항</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/event/list">이벤트</a></li>
              <li class="mr-lg-4 mr-2 active"><a href="/front/meetingSearch">모임 찾기</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/myMeeting">내모임</a></li>
              <li class=" "><a href="/front/question/FAQ">고객센터</a></li>
           </ul>
        </nav>
        <!-- //nav -->
     </div>
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
			<li class="breadcrumb-item active" aria-current="page"> Login Page</li>
		</ol>
	</div>
</div>
<!-- //page details -->

<!-- login -->
<section class="login py-5">
	<div class="container">
		<h3 class="heading mb-sm-5 mb-4 text-center">Login</h3>

		<div class="login-form">
			<form action="/login" method="post">
				<div class="row">
					<div class="col-md-4 text-md-right">
						<label>아이디:</label>
					</div>
					<div class="col-md-8">
						<input type="text" name="username" placeholder="enter username or email id" autofocus>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>비밀번호:</label>
					</div>
					<div class="col-md-8">
						<input type="password"  name="password" placeholder="Enter your Password" required="">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label class="checkbox"><input type="checkbox" name="remember-me" checked=""> 자동로그인</label>
					</div>
					<div class="col-md-8">
						<a href="#">Forgot Your Password?</a>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-8 offset-md-4">
						<button class="btn">Submit</button>
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
			</form>
			<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
               <font color="red">
                  <p>
                     Your login attempt was not successful due to <br />
                     ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                  </p> <c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session" />
               </font>
            </c:if>
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

  
<c:if test="${param.logout != null}">
      <script>
      $(document).ready(function(){
      	alert("로그아웃하였습니다.");
      });
      </script>
</c:if> 

</body>
</html>
