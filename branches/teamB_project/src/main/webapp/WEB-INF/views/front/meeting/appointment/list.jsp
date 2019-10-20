<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>牛모임 :: 정모 게시판 리스트</title>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    
        <link href="../../../../../resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="../../../../../resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="../../../../../resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->

	<link href="../../../../../resources/css/css_slider.css" type="text/css" rel="stylesheet" media="all">

	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //google fonts -->
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
           <li class="mr-3 ml-3 mt-3 mb-3"><a href="../main">메인</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="../board/list">게시판</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href="./list">정모</a></li>
        </div>
        <div class="meeting-menu2">
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="#">수정하기</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="#">가입하기</a></li>
        </div>
      </ul>
    </div>
  </div>
</section>
<!-- //소모임 메뉴 -->

<!-- 소모임 게시판 -->
<section>
  <div class="container">
    <div class="container meeting-board-css">
      <table class="table-board table-hover" >
        <thead>
          <tr>
            <th class="board-number-css">글번호</th>
            <th class="board-category-css">분류</th>
            <th class="board-title-css pl-4">제목</th>
            <th class="board-writer-css">작성자</th>
            <th class="board-date-css">날짜</th>
            <th class="board-hits-css">조회수</th>
          </tr>
        </thead>
        <tr>
          <td class="board-number-css">5</td>
          <td class="board-category-css">일반</td>
          <td class="pl-4"><a href="meeting_appointment2.html" style="color:black">대구 어디 소고기 먹으러</a><a style="color:#5C88FD"> 1</a></td>
          <td class="board-writer-css">이주현</td>
          <td class="board-date-css">2019. 10. 01</td>
          <td class="board-hits-css">0</td>
        </tr>
        <tr>
          <td class="board-number-css">4</td>
          <td class="board-category-css">일반</td>
          <td class="pl-4">일반글</td>
          <td class="board-writer-css">이주현</td>
          <td class="board-date-css">2019. 10. 01</td>
          <td class="board-hits-css">0</td>
        </tr>
        <tr>
          <td class="board-number-css">3</td>
          <td class="board-category-css">일반</td>
          <td class="pl-4">일반글</td>
          <td class="board-writer-css">이주현</td>
          <td class="board-date-css">2019. 10. 01</td>
          <td class="board-hits-css">0</td>
        </tr>
        <tr>
          <td class="board-number-css">2</td>
          <td class="board-category-css">일반</td>
          <td class="pl-4">일반글</td>
          <td class="board-writer-css">이주현</td>
          <td class="board-date-css">2019. 10. 01</td>
          <td class="board-hits-css">0</td>
        </tr>
        <tr>
          <td class="board-number-css">1</td>
          <td class="board-category-css">일반</td>
          <td class="pl-4">일반글</td>
          <td class="board-writer-css">이주현</td>
          <td class="board-date-css">2019. 10. 01</td>
          <td class="board-hits-css">0</td>
        </tr>
      </table>

      <hr>

      <!-- Search form -->
      <div class="input-group-css">
        <input type="text" class="form-control" placeholder="검색 키워드를 입력하세요!" style="width:20%">
        <span class="input-group-btn">
          <button class="btn btn-secondary" type="button" >찾기</button>
        </span>
        <div class="input-group-btn" style="position: absolute; right: 0;">
          <button class="btn btn-secondary" type="button" >글쓰기</button>
        </div>
      </div>
      <!-- //Search form -->

      <!--페이지 버튼-->
      <div class="text-center" style="margin-bottom:100px;">
        <ul class="pagination justify-content-center">
          <li class="page-item"><a class="page-link" href="#"> < </a></li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">4</a></li>
          <li class="page-item"><a class="page-link" href="#">5</a></li>
          <li class="page-item"><a class="page-link" href="#"> > </a></li>
        </ul>
      </div>

    </div>
  </div>
</section>
<!-- //소모임 게시판 -->

<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->
</body>
</html>