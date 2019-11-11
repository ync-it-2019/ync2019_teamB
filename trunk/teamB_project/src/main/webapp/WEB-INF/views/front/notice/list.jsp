<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<title>牛모임 :: 공지사항</title>
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
              <a href="/login" class="btn"><span class="fa fa-user-circle-o"></span> 로그인</a>
              <a href="/register" class="btn"><span class="fa fa-pencil-square-o"></span> 회원가입</a>
              <a href="/loout" class="btn"><span class="fa fa-user-circle-o"></span> 로그아웃</a>
              <a href="/front/myPage/info?userid=<sec:authentication property="principal.username"/>"><span class="fa fa-pencil-square-o"></span> 마이페이지</a>
           </div>
        </div>
        <nav class="text-center">
           <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
           <input type="checkbox" id="drop" />
           <ul class="menu">
              <li class="mr-lg-4 mr-2"><a href="/">홈</a></li>
              <li class="mr-lg-4 mr-2 active"><a href="/front/notice/list">공지사항</a></li>
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
		<h3 class="text-center">공지사항</h3>
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
			<li class="breadcrumb-item active" aria-current="page"> 공지사항</li>
		</ol>
	</div>
</div>
<!-- //page details -->

<!-- services -->
<section class="news py-5">
	<div class="container py-lg-3">
    <div class="col-lg-14">
        <h5 style="margin : 20px;">공지사항</h5>
      <table class="table table-hover">
        <thead>
          <tr>
            <th>글번호</th>
            <th><a style="position: relative; left: 250px;">제목</a></th>
            <th><a style="position: relative; left: 25px;">글쓴이</a></th>
            <th><a style="position: relative; left: 10px;">작성일</a></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td><a href="./get" class="over1">공지의 제목이 들어오는 공간입니다1ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ</a></td>
            <td class="over2">작성자1ㅡㅡㅡㅡㅡㅡ</td>
            <td>2019-10-09</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
           <td>2</td>
           <td><a href="./get">공지의 제목이 들어오는 공간입니다2</a></td>
           <td>작성자2</td>
           <td>2019-10-09</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
           <td>2</td>
           <td><a href="./get">공지의 제목이 들어오는 공간입니다2</a></td>
           <td>작성자2</td>
           <td>2019-10-09</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
           <td>2</td>
           <td><a href="./get">공지의 제목이 들어오는 공간입니다2</a></td>
           <td>작성자2</td>
           <td>2019-10-09</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
           <td>2</td>
           <td><a href="./get">공지의 제목이 들어오는 공간입니다2</a></td>
           <td>작성자2</td>
           <td>2019-10-09</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
           <td>2</td>
           <td><a href="./get">공지의 제목이 들어오는 공간입니다2</a></td>
           <td>작성자2</td>
           <td>2019-10-09</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
           <td>2</td>
           <td><a href="./get">공지의 제목이 들어오는 공간입니다2</a></td>
           <td>작성자2</td>
           <td>2019-10-09</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
           <td>2</td>
           <td><a href="./get">공지의 제목이 들어오는 공간입니다2</a></td>
           <td>작성자2</td>
           <td>2019-10-09</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
           <td>2</td>
           <td><a href="./get">공지의 제목이 들어오는 공간입니다2</a></td>
           <td>작성자2</td>
           <td>2019-10-09</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
           <td>2</td>
           <td><a href="./get">공지의 제목이 들어오는 공간입니다2</a></td>
           <td>작성자2</td>
           <td>2019-10-09</td>
          </tr>
        </tbody>
      </table>
	</div>
<div class="ud d-flex justify-content-center">
  <form action="#" method="post" class="newsletter">
    <select name="abc" style="height:30px; position: relative; top: 1px;">
    <option>제목</option>
    <option>내용</option>
  </select>
    <input class="search" type="text" placeholder="Search..." required="">
    <button value=""><span class="fa fa-search"></span></button>
  </form>
</div>
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
</section>
<!-- //services -->


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