<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    
        <link href="../../../../resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="../../../../resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="../../../../resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->

	<link href="../../../../resources/css/css_slider.css" type="text/css" rel="stylesheet" media="all">

	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //google fonts -->
	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 소모임 페이지 상단 이미지 / 이름 -->
<Header class="meeting-page-name-space">
	<div class="meeting-overlay py-5">
		<div class="container py-lg-5">
			<div class="text-center py-5">
        <div class="meeting-name-style">
					흑우들의 모임
				</div>
			</div>
		</div>
	</div>
</Header>
<!-- //소모임 페이지 상단 이미지 / 이름 -->

<!-- 소모임 메뉴 -->
<section>
  <div class="container">
    <div id="meeting-menu">
      <ul class="menu info-row">
        <div class="meeting-menu1">
          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href="./main">메인</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./board/list">게시판</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./appointment/list">정모</a></li>
        </div>
        <div class="meeting-menu2">
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="#">수정하기</a>
            <!-- <ul>
              <li>정모 이름 수정</li>
              <li>정모 소개 수정</li>
            </ul> -->
          </li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="#">가입하기</a></li>
        </div>
      </ul>
    </div>
  </div>
</section>
<!-- //소모임 메뉴 -->

<!-- 소모임 소개 -->
<section class="container">
	<div class="pt-3">
		<div class="info-row">
			<div class="meeting-introduce1">
        <div class="meeting-introduce1-info">
          대충 어떤 모임인지 소개하는 글대충 어떤 모임인지 소개하는 글대충 어떤 모임인지 소개하는 글대충 어떤 모임인지 소개하는 글대충 어떤 모임인지 소개하는 글
        </div>
        <div class="">
          <button type="button" name="button">수정</button>
        </div>
			</div>
			<div class="meeting-introduce2">
        <div class="meeting-info-appointment-css">
          <div class="meeting-info-appointment-css-title">
            <h3><a href="meeting_appointment2.html" style="color:black">대구 어디 소고기 먹으러</a></h3>
          </div>
          <div class="meeting-info-appointment-css-date">
            2019/10/15 오후 5시 0분
          </div>
        </div>
        <div class="">
          모임멤버 27명
          <table class="table table-striped">
            <tr>
              <th>이주현</th>
              <th>모임장</th>
            </tr>
            <tr>
              <th>이주현</th>
              <th></th>
            </tr>
            <tr>
              <th>이주현</th>
              <th></th>
            </tr>
            <tr>
              <th>이주현</th>
              <th></th>
            </tr>
          </table>
        </div>
			</div>
		</div>
	</div>
</section>
<!-- //소모임 소개 -->

<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->

</body>

</html>