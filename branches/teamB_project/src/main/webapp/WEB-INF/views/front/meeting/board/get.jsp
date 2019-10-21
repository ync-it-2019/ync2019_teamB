<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>牛모임 :: 모임 게시글 보기</title>
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
          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href="./list">게시판</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="../appointment/list">정모</a></li>
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

  <!-- 소모임 게시글 -->
  <section style="margin-bottom: 80px;">
    <div class="container">
      <div class="container">
        <!--게시글 내용-->
        <tr>
          <h2 style="font-weight:bold">자유 게시글입니다</h2><br>
        </tr>
        <div style="background:#C2CAC7">
          <thead>
            <tr>이주현 &nbsp&nbsp&nbsp&nbsp</tr>
            <tr>2019.10.01 &nbsp&nbsp&nbsp&nbsp</tr>
            <tr>0</tr>
          </thead>
        </div><br>
        <div>
          <img src="./resources/images/hello.png"><br><br>
          모두가 자유롭게 쓰는 자유게시판입니다.<br>
          열심히 활동해주세요!
        </div><br>
        <!--//게시글 내용-->
        <!--댓글창-->
        <div style="background:#C6D0C7; padding:2px">
          <tr>장윤석</tr>
          <!--class="btn btn-danger" 때문에 버튼이 빨간색-->
          <tr><button type="button" class="btn btn-danger btn-sm" style="float:right; font-size:8px; margin-left:5px; margin-right:3px">x</button></tr>
          <tr><a style="float:right; color:gray">5분전</a></tr>
        </div>
        <div style="margin:15px 5px">
          <tr>알겠습니다 조장</tr>
        </div>
        <div style="background:#C6D0C7; padding:2px">
          <tr>장윤석</tr>
          <!--class="btn btn-danger" 때문에 버튼이 빨간색-->
          <tr><button type="button" class="btn btn-danger btn-sm" style="float:right; font-size:8px; margin-left:5px; margin-right:3px">x</button></tr>
          <tr><a style="float:right; color:gray">5분전</a></tr>
        </div>
        <div style="margin:15px 5px">
          <tr>알겠습니다 조장</tr>
        </div>
        <!-- //댓글창-->
        <!--댓글쓰기-->
        <div>
          <div class="form-group" style="border:5px solid #C6D0C7; padding-bottom:40px">
            <textarea class="form-control pull-left" id="summernote" name="content" maxlength="140" rows="7"></textarea>
            <br>
            <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">댓글쓰기</button>
          </div>
          <script>
            $('#summernote').summernote({
              placeholder: '댓글을 입력해주세요',
              tabsize: 2,
              height: 60
            });
          </script>
          <!-- //댓글쓰기-->

          <!--수정과 삭제버튼-->
          <button type="submit" id="submit" name="submit" class="btn btn-secondary pull-left" style="margin-bottom:10px"><a href="/.list" style="color:white">전체글</a></button>
          <button type="submit" id="submit" name="submit" class="btn btn-danger pull-right" style="margin-bottom:10px">삭제하기</button>
          <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right" style="margin-bottom:10px">수정하기</button>
        </div>
      </div>
  </section>
  <!-- //소모임 게시글 -->

<!-- 소모임 게시판 리스트 -->
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
          <td class="board-number-css">10</td>
          <td class="board-category-css">일반</td>
          <td class="pl-4"><a href="./get.html" style="color:black">자유 게시글입니다 </a><a style="color:#5C88FD">2</a></td>
          <td class="board-writer-css">이주현</td>
          <td class="board-date-css">2019. 10. 01</td>
          <td class="board-hits-css">0</td>
        </tr>
        <tr>
          <td class="board-number-css">9</td>
          <td class="board-category-css">공지사항</td>
          <td class="pl-4">일반글</td>
          <td class="board-writer-css">이주현</td>
          <td class="board-date-css">2019. 10. 01</td>
          <td class="board-hits-css">0</td>
        </tr>
        <tr>
          <td class="board-number-css">8</td>
          <td class="board-category-css">일반</td>
          <td class="pl-4">일반글</td>
          <td class="board-writer-css">이주현</td>
          <td class="board-date-css">2019. 10. 01</td>
          <td class="board-hits-css">0</td>
        </tr>
        <tr>
          <td class="board-number-css">7</td>
          <td class="board-category-css">일반</td>
          <td class="pl-4">일반글</td>
          <td class="board-writer-css">이주현</td>
          <td class="board-date-css">2019. 10. 01</td>
          <td class="board-hits-css">0</td>
        </tr>
        <tr>
          <td class="board-number-css">6</td>
          <td class="board-category-css">일반</td>
          <td class="pl-4">일반글</td>
          <td class="board-writer-css">이주현</td>
          <td class="board-date-css">2019. 10. 01</td>
          <td class="board-hits-css">0</td>
        </tr>
        <tr>
          <td class="board-number-css">5</td>
          <td class="board-category-css">일반</td>
          <td class="pl-4">일반글</td>
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
          <button class="btn btn-secondary" type="button" ><a href="./write" style="color:white">글쓰기</a></button>
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
<!-- //소모임 게시판 리스트 -->

<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->
</body>
</html>