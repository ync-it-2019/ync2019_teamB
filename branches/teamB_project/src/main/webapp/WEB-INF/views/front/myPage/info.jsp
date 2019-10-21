<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="../../../../resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="../../../../resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="../../../../resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->

	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //google fonts -->
<title>牛모임 :: 마이페이지</title>
</head>
<body>
<header class="py-sm-3 pt-3 pb-2" id="home">
	<div class="container">
		<!-- nav -->
		<div class="top d-md-flex">
			<div id="logo">
				<h1> <a href="index.html"><span class="fa fa-meetup"></span> Furnish</a></h1>
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
				<a href="login.html" class="btn"><span class="fa fa-user-circle-o"></span> Sign In</a>
				<a href="register.html" class="btn"><span class="fa fa-pencil-square-o"></span> Create Account</a>
			</div>
		</div>
		<nav class="text-center">
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu">
				<li class="mr-lg-4 mr-2"><a href="index.html">Home</a></li>
				<li class="mr-lg-4 mr-2"><a href="about.html">About Us</a></li>
				<li class="mr-lg-4 mr-2"><a href="services.html">Services</a></li>
				<li class="mr-lg-4 mr-2"><a href="categories.html">Categories</a></li>
				<li class="mr-lg-4 mr-2"><a href="blog.html">Blog</a></li>
				<li class=""><a href="contact.html">Contact</a></li>
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
						김기본
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label><r style="color: #FF0000;">*</r>아이디:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
						idid123
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>비밀번호:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						**********
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label><r style="color: #FF0000;">*</r>닉네임:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						현재닉
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label><r style="color: #FF0000;">*</r>이메일:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						aaa@abc.com
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>전화번호:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						010-1234-5555
					</div>
          <div style="position: relative; bottom: 340px; left: 400px;"><img src="../../../../resources/img/man.png" alt="Card image cap"></div>
				</div>
						<a href="./checkPwd"><button class="btn" style="float: right; position: relative; bottom: 320px; left: 435px;">회원 정보 변경</button></a>
		</div>
	</div>
</section>
<!-- //login -->

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
<div class="push"></div>
<!-- copyright -->
<section class="copy-right py-4">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<p class="">© 2019 Furnish. All rights reserved | Design by
					<a href="http://w3layouts.com"> W3layouts.</a>
				</p>
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