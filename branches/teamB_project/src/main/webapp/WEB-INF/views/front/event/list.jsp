<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>牛모임 :: 이벤트 리스트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
              <li class="mr-lg-4 mr-2 active"><a href="/front/event/list">이벤트</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/meetingSearch">모임 찾기</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/myMeeting">내모임</a></li>
              <li class=""><a href="/front/question/FAQ">고객센터</a></li>
           </ul>
        </nav>
        <!-- //nav -->
     </div>
  </header>
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
      <div class="col-lg-4 col-md-6 newsgrid1" style="margin-top:30px;">
				<a href="./get"><img src="/resources/img/1.jpg" alt="news image" class="img-fluid2"></a>
				<h4 class="mt-4"><a href="./get"> 牛 모임 이벤트1</a></h4>
				<ul class="blog-info mt-2">
					<li class="mr-4" style="margin : 50"> 2019-10-12 ~ 2019-11-01</li>
				</ul>
			</div><div class="col-lg-4 col-md-6 newsgrid1" style="margin-top:30px;">
				<a href="./get"><img src="/resources/img/1.jpg" alt="news image" class="img-fluid2"></a>
				<h4 class="mt-4"><a href="./get"> 牛 모임 이벤트1</a></h4>
				<ul class="blog-info mt-2">
					<li class="mr-4" style="margin : 50"> 2019-10-12 ~ 2019-11-01</li>
				</ul>
			</div><div class="col-lg-4 col-md-6 newsgrid1" style="margin-top:30px;">
				<a href="./get"><img src="/resources/img/a1.jpg" alt="news image" class="img-fluid2"></a>
				<h4 class="mt-4"><a href="./get"> 牛 모임 이벤트1</a></h4>
				<ul class="blog-info mt-2">
					<li class="mr-4" style="margin : 50"> 2019-10-12 ~ 2019-11-01</li>
				</ul>
			</div><div class="col-lg-4 col-md-6 newsgrid1" style="margin-top:30px;">
				<a href="./get"><img src="/resources/img/a1.jpg" alt="news image" class="img-fluid2"></a>
				<h4 class="mt-4"><a href="./get"> 牛 모임 이벤트1</a></h4>
				<ul class="blog-info mt-2">
					<li class="mr-4" style="margin : 50"> 2019-10-12 ~ 2019-11-01</li>
				</ul>
			</div><div class="col-lg-4 col-md-6 newsgrid1" style="margin-top:30px;">
				<a href="./get"><img src="/resources/img/a1.jpg" alt="news image" class="img-fluid2"></a>
				<h4 class="mt-4"><a href="./get"> 牛 모임 이벤트1</a></h4>
				<ul class="blog-info mt-2">
					<li class="mr-4" style="margin : 50"> 2019-10-12 ~ 2019-11-01</li>
				</ul>
			</div>

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
	<div class="container py-md-3">
		<div class="footer-grid_section text-center">
			<div class="footer-title mb-3">
				<h2> <a href="index.html"><span class="fa fa-meetup"></span> Furnish</a></h2>
			</div>
			<div class="footer-text">
				<p>Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ipnut libero malesuada feugiat.
				 Lorem ipsum dolor sit amet elit.</p>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-lg-4 mb-lg-0 mb-4 footer-top">
				<h4 class="mb-4 w3f_title text-uppercase">Contact Info</h4>
				<div class="footer-style-w3ls my-2">
					<p> 1127 Block, 2nd cross, 4th floor, London.</p>
				</div>
				<div class="footer-style-w3ls my-2">
					<p> (+121)-098-8907-9987</p>
				</div>
				<div class="footer-style-w3ls">
					<p> <a href="mailto:info@examplemail.com">info@examplemail.com</a></p>
				</div>
			</div>
			<div class="col-lg-2 col-md-3 col-6 footv3-left">
				<h4 class="mb-md-4 mb-3 w3f_title text-uppercase">Company</h4>
				<ul class="list-agileits">
					<li class="my-2">
						<a href="about.html">
							About Us
						</a>
					</li>
					<li class="mb-2">
						<a href="#">
							Terms of use
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Faq's
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Privacy Ploicy
						</a>
					</li>
					<li>
						<a href="contact.html">
							Get In Touch
						</a>
					</li>
				</ul>
			</div>
			<div class="col-lg-2 col-md-3 col-6">
				<h4 class="mb-md-4 mb-3 w3f_title text-uppercase">Categories</h4>
				<ul class="list-agileits">
					<li class="my-2">
						<a href="#">
							Furniture Chairs
						</a>
					</li>
					<li class="mb-2">
						<a href="#">
							Three Seater Sofas
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Dining Tables
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Office Chairs
						</a>
					</li>
					<li>
						<a href="#">
							Kitchen Cabinets
						</a>
					</li>
				</ul>
			</div>

			<div class="col-lg-2 col-md-3 col-6 mt-md-0 mt-sm-5 mt-4">
				<h4 class="mb-md-4 mb-3 w3f_title text-uppercase">Resources</h4>
				<ul class="list-agileits">
					<li class="my-2">
						<a href="#">
							Getting Started
						</a>
					</li>
					<li class="mb-2">
						<a href="#">
							Best Collections
						</a>
					</li>
					<li class="my-2">
						<a href="categories.html">
							All Categories
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							24/7 Support
						</a>
					</li>
					<li>
						<a href="#">
							Contact for Help
						</a>
					</li>
				</ul>
			</div>

			<div class="col-lg-2 col-md-3 col-6 mt-md-0 mt-sm-5 mt-4">
				<h4 class="mb-md-4 mb-3 w3f_title text-uppercase">Account</h4>
				<ul class="list-agileits">
					<li class="my-2">
						<a href="login.html">
							Sign In
						</a>
					</li>
					<li class="">
						<a href="register.html">
							Create Account
						</a>
					</li>
				</ul>
			</div>

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