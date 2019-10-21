<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>牛모임 :: 소모임 찾기</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script src="../../../resources/js/slick.js" type="text/javascript" charset="utf-8"></script>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

        $(document).on('ready', function() {
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 6,
        slidesToScroll: 6
      });

    });
    </script>

	<!-- css files -->
    <link href="/resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
    <link rel="stylesheet" type="text/css" href="../../../resources/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/css/slick-theme.css">
	<!-- //css files -->

	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //google fonts -->
  <style type="text/css">

    .slider {
        width: 65%;
        margin: 40px;
    }

    .slick-slide {
      margin: 1px 10px 5px;
    }


    .slick-prev:before,
    .slick-next:before {
      color: black;
    }


    .sliderA a:link,
    .sliderA a:visited,
    .mt-4 a:link,
    .mt-4 a:visited,
    .pagination a:link,
    .pagination a:visited,
    .notice a:link,
    .notice a:visited
     { color: black; text-decoration: none;}
    .sliderA a:hover,
    .mt-4 a:hover,
    .pagination a:hover
     { color: black; text-decoration: underline;}

    .left-meeting,
    .right-meeting {
      width:470px;
      display: grid;
      grid-template-columns: 30% 70%;
      margin-bottom : 15px;
    }
    .right-meeting {
      margin-left:70px;
    }
    .introduction {
      margin : 10px 0 0 13px;
    }

  </style>
</head>

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
		<h3 class="text-center">牛모임 찾기</h3>
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
			<li class="breadcrumb-item active" aria-current="page">牛모임 찾기</li>
		</ol>
	</div>
</div>
<link href="../../../resources/css/style_editors.css" rel='stylesheet' type='text/css' />


<!-- //page details -->


<section class="news py-5" id="news">

	<div class="container py-lg-3">
    <div class="container">
    <div class="input-group">
      <h4 style="margin:5px 15px 0 0;">주제별 모임</h4>
      <input type="text" class="form-control" placeholder="모임을 검색해보세요.">
          <span class="input-group-btn">
            <button class="btn btn-search" type="button"><i class="fa fa-search fa-fw"></i> 검색</button>
          </span>
    </div>
    </div>
      <div class="aside">
        <div class="login_area">
          <div class="login">
            <a class="login_btn" href="#">로그인</a>
          </div>
          <div class="user_find">
            <a class="btn_join" href="*">회원가입</a>
          </div>
          <hr>
          <div class="arti1">#<a href="*">나만의 모임</a></div>
          <div class="arti2">#<a href="*">인맥 쌓기</a></div>
          <div class="arti3">#<a href="*">취미 생활 크루 찾기</a></div>
          <div class="notice">
            <a href="#" class="plus">+더보기</a>
            <p>공지사항</p>
            <a href="#">[안내] 소모임 개설시 주의사항</a><br>
            <a href="#">[안내] 牛모임 사이트가 개설되었습니다.</a><br>
            <a href="#">[점검] 정기점검 안내</a>
          </div>
          <a href="#"><img src="../../../resources/img/event2.jpg" alt="" height="250px"></a>
          <a href="#"><img src="../../../resources/img/FAQ.jpg" alt=""></a>

        </div>

      </div>
    <section class="regular slider">
    <div class="sliderA">
      <a href="#">게임/오락</a>
    </div>
    <div class="sliderA">
      <a href="#">운동/스포츠</a>
    </div>
    <div class="sliderA">
      <a href="#">인문학/책/글</a>
    </div>
    <div class="sliderA">
      <a href="#">만화/애니</a>
    </div>
    <div class="sliderA">
      <a href="#">문화/예술</a>
    </div>
    <div class="sliderA">
      <a href="#">차/오토바이</a>
    </div>
    <div class="sliderA">
      <a href="#">봉사활동</a>
    </div>
    <div class="sliderA">
      <a href="#">야구관람</a>
    </div>
    <div class="sliderA">
      <a href="#">요리/제조</a>
    </div>
    <div class="sliderA">
      <a href="#">여행</a>
    </div>
    <div class="sliderA">
      <a href="#">댄스/무용</a>
    </div>
    <div class="sliderA">
      <a href="#">외국/언어</a>
    </div>
  </section>





  <h5>모임 전체</h5>
  <hr align="left" style="width:72%;">

  <div class="row blog-grids">
    <div class="col-lg-5 col-md-6 newsgrid1">
      <div class="left-meeting">
        <div class="">
          <a href="#"><img src="../../../resources/img/6.jpg" alt="news image" class="img-fluid"></a>
        </div>
        <div class="introduction">
          <b class="mt-4"><a href="#">ㅌㅏㄷㅏ 산을타다</a></b>
          <h6>등산,,, 초보,,, 중급,, 모두 대환영,,!</h6>
          <ul class="blog-info mt-1">
            <li>주제 ·  </li>
            <li>지역 · </li>
            <li>멤버 10명</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="col-lg-5 col-md-6 mt-md-0 mt-5 newsgrid2">
      <div class="right-meeting">
        <div class="meetingA">
          <a href="#"><img src="../../../resources/img/blog1.jpg" alt="news image" class="img-fluid"></a>
        </div>
        <div class="introduction">
          <b class=" mt-4"><a href="single.html">Meeting Name2</a></b>
          <h6>Meeting introduction</h6>
          <ul class="blog-info mt-1">
            <li>주제 ·  </li>
            <li>지역 · </li>
            <li>멤버 10명</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="col-lg-5 col-md-6 mt-md-0 mt-5 newsgrid2">
      <div class="left-meeting">
        <div class="meetingA">
          <a href="#"><img src="../../../resources/img/blog1.jpg" alt="news image" class="img-fluid"></a>
        </div>
        <div class="introduction">
          <b class=" mt-4"><a href="single.html">Meeting Name2</a></b>
          <h6>Meeting introduction</h6>
          <ul class="blog-info mt-1">
            <li>주제 ·  </li>
            <li>지역 · </li>
            <li>멤버 10명</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="col-lg-5 col-md-6 mt-md-0 mt-5 newsgrid2">
      <div class="right-meeting">
        <div class="meetingA">
          <a href="#"><img src="../../../resources/img/blog1.jpg" alt="news image" class="img-fluid"></a>
        </div>
        <div class="introduction">
          <b class=" mt-4"><a href="single.html">Meeting Name2</a></b>
          <h6>Meeting introduction</h6>
          <ul class="blog-info mt-1">
            <li>주제 ·  </li>
            <li>지역 · </li>
            <li>멤버 10명</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="col-lg-5 col-md-6 mt-md-0 mt-5 newsgrid2">
      <div class="left-meeting">
        <div class="meetingA">
          <a href="#"><img src="../../../resources/img/blog1.jpg" alt="news image" class="img-fluid"></a>
        </div>
        <div class="introduction">
          <b class=" mt-4"><a href="single.html">Meeting Name2</a></b>
          <h6>Meeting introduction</h6>
          <ul class="blog-info mt-1">
            <li>주제 ·  </li>
            <li>지역 · </li>
            <li>멤버 10명</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="col-lg-5 col-md-6 mt-md-0 mt-5 newsgrid2">
      <div class="right-meeting">
        <div class="meetingA">
          <a href="#"><img src="../../../resources/img/blog1.jpg" alt="news image" class="img-fluid"></a>
        </div>
        <div class="introduction">
          <b class=" mt-4"><a href="single.html">Meeting Name2</a></b>
          <h6>Meeting introduction</h6>
          <ul class="blog-info mt-1">
            <li>주제 ·  </li>
            <li>지역 · </li>
            <li>멤버 10명</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="col-lg-5 col-md-6 mt-md-0 mt-5 newsgrid2">
      <div class="left-meeting">
        <div class="meetingA">
          <a href="#"><img src="../../../resources/img/blog1.jpg" alt="news image" class="img-fluid"></a>
        </div>
        <div class="introduction">
          <b class=" mt-4"><a href="single.html">Meeting Name2</a></b>
          <h6>Meeting introduction</h6>
          <ul class="blog-info mt-1">
            <li>주제 ·  </li>
            <li>지역 · </li>
            <li>멤버 10명</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="col-lg-5 col-md-6 mt-md-0 mt-5 newsgrid2">
      <div class="right-meeting">
        <div class="meetingA">
          <a href="#"><img src="../../../resources/img/blog1.jpg" alt="news image" class="img-fluid"></a>
        </div>
        <div class="introduction">
          <b class=" mt-4"><a href="single.html">Meeting Name2</a></b>
          <h6>Meeting introduction</h6>
          <ul class="blog-info mt-1">
            <li>주제 ·  </li>
            <li>지역 · </li>
            <li>멤버 10명</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-lg-5 col-md-6 mt-md-0 mt-5 newsgrid2">
      <div class="left-meeting">
        <div class="meetingA">
          <a href="#"><img src="../../../resources/img/blog1.jpg" alt="news image" class="img-fluid"></a>
        </div>
        <div class="introduction">
          <b class=" mt-4"><a href="single.html">Meeting Name2</a></b>
          <h6>Meeting introduction</h6>
          <ul class="blog-info mt-1">
            <li>주제 ·  </li>
            <li>지역 · </li>
            <li>멤버 10명</li>
          </ul>
        </div>
      </div>
    </div>

    <div class="col-lg-5 col-md-6 mt-md-0 mt-5 newsgrid2">
      <div class="right-meeting">
        <div class="meetingA">
          <a href="#"><img src="../../../resources/img/blog1.jpg" alt="news image" class="img-fluid"></a>
        </div>
        <div class="introduction">
          <b class=" mt-4"><a href="single.html">Meeting Name2</a></b>
          <h6>Meeting introduction</h6>
          <ul class="blog-info mt-1">
            <li>주제 ·  </li>
            <li>지역 · </li>
            <li>멤버 10명</li>
          </ul>
        </div>
      </div>
    </div>

    <div style="margin:30px 240px;">
    <ul class="pagination">
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
  <!--aside -->


   <!-- aside end -->
  </section>
  <!-- main_top end -->

<!-- //Recent News -->

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
</body>
</html>
