<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
              <a href="login.html" class="btn"><span class="fa fa-user-circle-o"></span> 로그인</a>
              <a href="register.html" class="btn"><span class="fa fa-pencil-square-o"></span> 회원가입</a>
              <a href="loout.html" class="btn"><span class="fa fa-user-circle-o"></span> 로그아웃</a>
              <a href="../front/myPage/info" class="btn"><span class="fa fa-pencil-square-o"></span> 마이페이지</a>
           </div>
        </div>
        <nav class="text-center">
           <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
           <input type="checkbox" id="drop" />
           <ul class="menu">
              <li class="mr-lg-4 mr-2 active"><a href="/">홈</a></li>
              <li class="mr-lg-4 mr-2"><a href="../front/notice/list">공지사항</a></li>
              <li class="mr-lg-4 mr-2"><a href="../front/event/list">이벤트</a></li>
              <li class="mr-lg-4 mr-2"><a href="../front/meetingSearch">모임 찾기</a></li>
              <li class="mr-lg-4 mr-2"><a href="../front/myMeeting">내모임</a></li>
              <li class=""><a href="../front/question/FAQ">고객센터</a></li>
           </ul>
        </nav>
        <!-- //nav -->
     </div>
  </header>
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
						<h6 class="card-title"><b>[계정]아이디를 까먹었어요</b></h6>
						<ul class="blog-info my-2">
							<li class="mr-sm-4 mr-2">등록일자: 2019-10-14 </li>
							<li class="mr-sm-4 mr-2"> 처리상태: 처리완료</li><br>
						</ul>
						<hr>
						<div class="">
							<img class="card-img-top" src="../../../../resources/img/1.jpg" alt="Card image cap">
							<div class="mt-4">
								<p class="card-text">질문 내용이 들어오는 공간입니다.</p>

								<p class="card-text mt-3">도와주세요.</p>
							</div>
						</div>
            <div>
              <hr>
              <b>답변:</b><br>
              해당 질문에 대한 답변이 들어오는 공간입니다.
            </div>
						<div class="comment-top" style="position: relative; top: 60px;">
							<a href="./myQuestion"><button type="button" class="btn btn-primary" style="float: right;">목록</button></a>
              <a href="./write"><button type="button" class="btn btn-primary" style="float: right; margin-right: 5px;">수정</button></a>
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