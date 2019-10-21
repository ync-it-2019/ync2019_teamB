<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>牛모임 :: 정모 게시글 보기</title>
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
	
	    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
</head>
<body>

<jsp:include page="../../include/meetingAppointmentHead.jsp" flush="true" />

<!-- 정모 게시글 제목 -->
<section>
  <div class="container">
    <h2 style="font-weight:bold; text-align:center;" class="my-3">대구 어디 소고기 먹으러</h2>
  </div>
</section>
<!-- //정모 게시글 제목 -->

<!-- 정모 상세 -->
<section class="container">
  <div class="mx-3">
    <div style="display: flex; flex-wrap: wrap;">
      <div style="width: 65%; border-right: 1px solid #eee;" class="">
        <img src="./resources/images/hello.png"><br><br>
        정모를 합니다.<br>
        꼭 참석해주세요.
      </div>
      <div style="width: 33%;" class="ml-3">
        <div class="mb-3">
          <table>
            <tr><td>2019/10/31 오후 3시 0분</td></tr>
            <tr><td>영남이공대학교 정문</td></tr>
            <tr><td>최대인원 30명</td></tr>
          </table>
        </div>
        <div class="table table-striped">
          모임멤버 27명
          <table>
            <tr><td>이주현</td></tr>
            <tr><td>서영준</td></tr>
            <tr><td>장윤석</td></tr>
            <tr><td>조중현</td></tr>
            <tr><td>김상훈</td></tr>
          </table>
        </div>

      </div>
    </div>
  </div>
</section>
<!-- //정모 상세 -->

<!-- 정모 내용 -->
<!-- //정모 내용 -->

<!-- 정모 참석 버튼 -->
<!-- //정모 참석 버튼 -->

<!-- 정모 참석자 명단 -->
<!-- //정모 참석자 명단 -->



<!-- 정모 게시글 -->
<section style="margin-bottom: 80px;">
  <div class="container">
    <div class="container">
      <!-- 정모 정보 -->
      <div class="">
        <h4>2019. 10. 31 10:00&nbsp&nbsp&nbsp&nbsp&nbsp영남이공대학교 정문 앞&nbsp&nbsp&nbsp&nbsp&nbsp최대인원 : 10명</h4>
      </div>


      <!-- //정모 정보 -->

      <!--게시글 목록-->

      <div style="background:#C2CAC7">
        <thead>
          <tr>이주현 &nbsp&nbsp&nbsp&nbsp</tr>
          <tr>2019.10.01 &nbsp&nbsp&nbsp&nbsp</tr>
          <tr>0</tr>
        </thead>
      </div><br>
      <div>
        <img src="./resources/images/hello.png"><br><br>
        정모를 합니다.<br>
        꼭 참석해주세요.
      </div>
      <!--//게시글 목록-->
    </div>
  </div>
</section>
<!-- //정모 게시글 -->

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
          <button class="btn btn-secondary" type="button" ><a href="meeting_appointment3.html" style="color:white">글쓰기</a></button>
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