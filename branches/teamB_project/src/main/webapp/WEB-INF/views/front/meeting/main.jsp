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
    
        <link href="/resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->

	<link href="/resources/css/css_slider.css" type="text/css" rel="stylesheet" media="all">

	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //google fonts -->
	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="../include/meetingMainHead.jsp" flush="true" />

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