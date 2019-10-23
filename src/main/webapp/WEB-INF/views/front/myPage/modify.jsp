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
    <h4>회원 정보 수정</h4>
    <hr>
		<div class="login-form">
			<form action="#" method="post">
				<div class="row">
					<div class="col-md-4 text-md-right">
						<label>이름:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						김기본
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>아이디:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
						idid123
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>비밀번호:</label>
					</div>
					<div class="col-md-8">
						<input type="password" value="****" required="">
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>비밀번호 확인:</label>
					</div>
					<div class="col-md-8">
						<input type="password" placeholder="Enter your new Password" required="">
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>닉네임:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						현재닉
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>이메일:</label>
					</div>
          <div class="col-md-8" style="position: relative; top: 12px;">
						aaa@abc.com
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>전화번호:</label>
					</div>
					<div class="col-md-8">
						<input type="text" value="01012345555" required="">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>활동지역:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
						<select name="abc">
                <option>서울 특별시</option>
                <option>세종 특별시</option>
                <option>대구 광역시</option>
                <option>부산 광역시</option>
                <option>인천 광역시</option>
                <option>울산 광역시</option>
                <option>광주 광역시</option>
                <option>대전 광역시</option>
                <option>강원도</option>
                <option>경기도</option>
                <option>경상도</option>
                <option>전라도</option>
                <option>충청도</option>
                <option>제주도</option>
              </select>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>취미:</label>
					</div>
					<div class="col-md-8" style="position: relative; top: 12px;">
						<select name="abc">
                <option>게임/오락</option>
                <option>운동/스포츠</option>
                <option>인문학/책/글</option>
                <option>만화/애니</option>
                <option>문화/예술</option>
                <option>차/오토바이</option>
                <option>봉사활동</option>
                <option>야구관람</option>
                <option>요리/제조</option>
                <option>여행</option>
                <option>댄스/무용</option>
                <option>외국어/언어</option>
              </select>
					</div>
				</div>
        <div class="row mt-3">
					<div class="col-md-4 text-md-right">
						<label>프로필 사진:</label>
					</div>
					<div class="col-md-8">
						<input type="password" placeholder="" required=""><button type="button" style="float: right;"> 찾아보기 </button> <button type="button" style="float: right;"> 파일삭제</button>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-8 offset-md-4">
						<button class="btn row mt-3">정보수정</button>
					</div>
				</div>
			</form>
      <a href="./info"><button class="btn" style="position: relative; bottom: 56px; left: 320px;">취소</button></a>
		</div>

	</div>
</section>
<!-- //login -->

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