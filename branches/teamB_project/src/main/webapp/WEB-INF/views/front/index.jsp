<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<!-- 슬라이드 css1 -->
<link rel="stylesheet" type="text/css" href="/resources/css/set1.css" />


<!-- css files -->
    <link href="/resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style_editors.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->

	<link href="/resources/css/css_slider.css" type="text/css" rel="stylesheet" media="all">

<title>牛모임</title>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

    </script>
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
              <a href="/front/login" class="btn"><span class="fa fa-user-circle-o"></span> 로그인</a>
              <a href="/front/register" class="btn"><span class="fa fa-pencil-square-o"></span> 회원가입</a>
              <a href="/front/loout" class="btn"><span class="fa fa-user-circle-o"></span> 로그아웃</a>
              <a href="/front/myPage/info" class="btn"><span class="fa fa-pencil-square-o"></span> 마이페이지</a>
           </div>
        </div>
        <nav class="text-center">
           <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
           <input type="checkbox" id="drop" />
           <ul class="menu">
              <li class="mr-lg-4 mr-2 active"><a href="/">홈</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/notice/list">공지사항</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/event/list">이벤트</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/meetingSearch">모임 찾기</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/myMeeting">내모임</a></li>
              <li class=""><a href="/front/question/FAQ">고객센터</a></li>
           </ul>
        </nav>
        <!-- //nav -->
     </div>
  </header>
  <!-- //header -->

  <section class="banner_w3lspvt">
  	<div class="csslider infinity" id="slider1">
  		<input type="radio" name="slides" checked="checked" id="slides_1" />
  		<input type="radio" name="slides" id="slides_2" />
  		<input type="radio" name="slides" id="slides_3" />
  		<input type="radio" name="slides" id="slides_4" />
  		<ul>
  			<li>
  				<div class="banner-top">
  					<div class="overlay">
  						<div class="container">
  							<div class="w3layouts-banner-info text-center">
  								<h3 class="text-wh">We Are the best designers of Interior Furniture</h3>
  								<p class="text-li mx-auto mt-2">Ut enim ad minim quis nostrud exerci sed do eiusmod tempor incididunt ut
  									labore et dolore magna aliqua nostrud exerci sed.</p>
  								<a href="about.html" class="button-style mt-4">Explore More</a>
  							</div>
  						</div>
  					</div>
  				</div>
  			</li>
  			<li>
  				<div class="banner-top1">
  					<div class="overlay">
  						<div class="container">
  							<div class="w3layouts-banner-info text-center">
  								<h3 class="text-wh">We Are the best designers of Interior Furniture</h3>
  								<p class="text-li mx-auto mt-2">Ut enim ad minim quis nostrud exerci sed do eiusmod tempor incididunt ut
  									labore et dolore magna aliqua nostrud exerci sed.</p>
  								<a href="about.html" class="button-style mt-4">Explore More</a>
  							</div>
  						</div>
  					</div>
  				</div>
  			</li>
  			<li>
  				<div class="banner-top2">
  					<div class="overlay">
  						<div class="container">
  							<div class="w3layouts-banner-info text-center">
  								<h3 class="text-wh">We Are the best designers of Interior Furniture</h3>
  								<p class="text-li mx-auto mt-2">Ut enim ad minim quis nostrud exerci sed do eiusmod tempor incididunt ut
  									labore et dolore magna aliqua nostrud exerci sed.</p>
  								<a href="about.html" class="button-style mt-4">Explore More</a>
  							</div>
  						</div>
  					</div>
  				</div>
  			</li>
  			<li>
  				<div class="banner-top3">
  					<div class="overlay">
  						<div class="container">
  							<div class="w3layouts-banner-info text-center">
  								<h3 class="text-wh">We Are the best designers of Interior Furniture</h3>
  								<p class="text-li mx-auto mt-2">Ut enim ad minim quis nostrud exerci sed do eiusmod tempor incididunt ut
  									labore et dolore magna aliqua nostrud exerci sed.</p>
  								<a href="about.html" class="button-style mt-4">Explore More</a>
  							</div>
  						</div>
  					</div>
  				</div>
  			</li>
  		</ul>
  		<div class="arrows">
  			<label for="slides_1"></label>
  			<label for="slides_2"></label>
  			<label for="slides_3"></label>
  			<label for="slides_4"></label>
  		</div>
  	</div>
  </section>

<!-- main_top -->
<section class="main_top">
  <div class="home_editor's">
    <!--content -->
    <div class="content">
      <div class="home_editor">
        <div class="common_title">
          <h3 class="title">Editor's Pick</h3>
        </div>
        <div class="containers"></div>
        <section class="news editor_list" id="news">
          <div class="grid">
            <figure class="effect-lily">
              <img src="/resources/img/1.jpg" alt="/resources/img12"/>
              <figcaption>
                <div>
                  <h2>Nice <span>Lily</span></h2>
                  <p>Lily likes to play with crayons and pencils</p>
                </div>
                <a href="#">View more</a>
              </figcaption>
            </figure>
            <figure class="effect-lily">
              <img src="/resources/img/2.jpg" alt="/resources/img1"/>
              <figcaption>
                <div>
                  <h2>Nice <span>Lily</span></h2>
                  <p>Lily likes to play with crayons and pencils</p>
                </div>
                <a href="#">View more</a>
              </figcaption>
            </figure>
            <figure class="effect-lily">
  						<img src="/resources/img/3.jpg" alt="/resources/img02"/>
  						<figcaption>
  							<h2>Holy <span>Sadie</span></h2>
  							<p>Sadie never took her eyes off me. <br>She had a dark soul.</p>
  							<a href="#">View more</a>
  						</figcaption>
  					</figure>
          </div>
        </section>
      </div>
    </div>
    <!-- content end -->
  </div>

  <!--aside -->
  <div class="aside">
    <div class="login_area">
      <div class="letter">
      <p>"오늘도 당신의 즐거운 하루가 되길 응원합니다."</p>
      </div>
        <div class="login">
          <button class="login_btn">
            로그인
          </button>
        </div>
      <div class="user_find">
        <a class="btn_join" href="/front/register">회원가입</a>
      </div>
      <div class="arti1">#<a href="*">나만의 모임</a></div>
      <div class="arti2">#<a href="*">인맥 쌓기</a></div>
      <div class="arti3">#<a href="*">취미 생활 크루 찾기</a></div>
    </div>
  </div>
  <!-- aside end -->
</section>
<!-- main_top end -->

<!-- main_bottom  -->
<section class="main_bottom">
  <div class="news_area">
    <div class="notice">
      <p><a href="*">+더보기</a></p>
      <h3>Notice</h3>
      <div class="notice_list">
        <ul>
          <li class="n_li_title">&middot;<a href="*">소모임 서비스를 새롭게 시작합니다.</a></li>
          <li class="n_li_date">2019-10-15<li>
        </ul>
        <ul>
          <li class="n_li_title">&middot;<a href="*">소모임 서비스를 새롭게 시작합니다.</a></li>
          <li class="n_li_date">2019-10-15<li>
        </ul>
        <ul>
          <li class="n_li_title">&middot;<a href="*">소모임 서비스를 새롭게 시작합니다.</a></li>
          <li class="n_li_date">2019-10-15<li>
        </ul>
        <ul>
          <li class="n_li_title">&middot;<a href="*">소모임 서비스를 새롭게 시작합니다.</a></li>
          <li class="n_li_date">2019-10-15<li>
        </ul>
    </div>
  </div>
    <div class="faq">
      <div class="faq_i"><a href="#"><img class="faq_img" src="/resources/img/faq.png"><p class="faq_font">FAQ</p></a></div>
      <div class="answer_i"><a href="#"><img class="answer_img" src="/resources/img/answer.png"><p class="answer_font">1:1 문의</p></a></div>
      <div class="faq_i"></div>
    </div>
  </div>
</section>
<!-- main_bottom end -->

<!-- footer -->
<footer class="footer py-5">
	<div class="container py-md-3">
		<div class="footer-grid_section text-center">
			<div class="footer-title mb-3">
				<h2> <a href="index.html"> Furnish</a></h2>
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