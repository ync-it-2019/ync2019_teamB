<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>牛모임 :: 모임 정모 글쓰기</title>
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

<!-- 글쓰기 -->
<section>
  <div class="container">
    <form id="articleForm" role="form" action="/article" method="post">
      <br style="clear: both">
      <h3 style="margin-bottom: 25px;">게시글 작성</h3>
      <div class="form-group">
        <input type="text" class="form-control" id="subject" name="subject" placeholder="제목을 입력해주세요" required>
      </div>
      <div class="form-group">
        <textarea class="form-control" id="summernote" name="content" placeholder="content" maxlength="140" rows="7"></textarea>
      </div>
      <script>
        $('#summernote').summernote({
          placeholder: '내용을 작성해주세요',
          tabsize: 2,
          height: 100
        });
      </script>
      <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right" style="margin:10px"> 등록 </button>
      <button type="reset" class="btn btn-default pull-right" onClick="history.back();" style="margin:10px">취소</button>
    </form>
  </div>
</section>
<!-- //글쓰기 -->

<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->
</body>
</html>