<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>牛모임 :: 내 소모임</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script src="js/slick.js" type="text/javascript" charset="utf-8"></script>
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
    <link href="/resources/css/bootstrapJ.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
    <link rel="stylesheet" type="text/css" href="/resources/css/slick.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/slick-theme.css">
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
      margin : 15px 0 0 13px;
    }

  </style>
</head>
<body>
<!-- //header -->
<jsp:include page="/WEB-INF/views/front/include/header.jsp" flush="true" />
  <!-- //header -->

<!-- inner banner -->
<section class="inner-banner">
	<div class="container">
		<h3 class="text-center">내 牛모임</h3>
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
			<li class="breadcrumb-item active" aria-current="page">내 牛모임</li>
		</ol>
	</div>
</div>
<link href="/resources/css/style_J.css" rel='stylesheet' type='text/css' />


<!-- //page details -->


<section class="news py-5" id="news" >

	<div class="container py-lg-3" style="height:750px;">

      <div class="aside">
        <div class="login_area" style="margin-top:40px;">
          <div class="profile">
            <a href="/front/myMeeting"><img src="/resources/upload/<c:out value="${member.profile}" />" alt=""></a>
            <div>
              <ul>
                <li class="mypage"><a href="/front/myPage/info"><c:out value="${member.name}" /> 님</a><span><a href="/front/myPage/info">내정보</a></span></li>
                <li>
                  <ul>
                    <!-- address + hobby = add_ho -->
                    <li class="add_ho">지역 : <c:out value="${member.adress}" /></li>
                    <li class="add_ho"><span  style="width:200px;">취미 : <c:out value="${member.hobby}" /></span>
                        <div class="logout" align="right">
                        <a href="/customLogout">로그아웃</a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>


          <hr>
          <div class="arti1">#<a href="*">나만의 모임</a></div>
          <div class="arti2">#<a href="*">인맥 쌓기</a></div>
          <div class="arti3">#<a href="/front/meetingSearch">취미 생활 크루 찾기</a></div>
          <div class="notice">
            <a href="/front/notice/list" class="plus">+더보기</a>
            <p>공지사항</p>
            <c:forEach items="${list3}" var="notice" begin="0" end="3" step="1" varStatus="status">
            <a href="notice/get?notice_num=<c:out value="${notice.notice_num}" />"><c:out value="${notice.title}" /></a><br>
            </c:forEach>
          </div>
          <c:forEach items="${list2}" var="event" begin="0" end="0" step="1" varStatus="status">
          <a href="/front/event/get?event_num=<c:out value="${event.event_num}" />"><img src="/resources/upload/<c:out value="${event.image}" />" alt="" height="250px"></a>
          </c:forEach>
          <a href="/front/question/FAQ"><img src="/resources/img/FAQ.jpg" alt=""></a>
        </div>
      </div>






  <h5>내 모임</h5>
  <hr align="left" style="width:72%;">

  <div class="row blog-grids">
  	<c:forEach items="${list}" var="meeting" varStatus="status">
  	<div class="col-lg-5 col-md-6 newsgrid1">
  	<c:choose>
  		<c:when test="${status.count % 2 eq 1}">
       		<div class="left-meeting">
    	</c:when>
    	<c:otherwise>
    	<div class="right-meeting">
    	</c:otherwise>
  	</c:choose>
  			<div class="">
  			<a href="#"><img src="/resources/img/th.jpg" alt="news image" class="img-fluid"></a>
        	</div>
        	<div class="introduction">
          		<b class="mt-4"><c:out value="${meeting.meeting_Name}" /></b>
          		<h6><c:out value="${meeting.introduce}" /></h6>
          		<ul class="blog-info mt-1">
          		<li>멤버 
          		<c:set var="memberCount" value="0" />
          		<c:forEach items="${list4}" var="meeting2" varStatus="status">
          		<c:if test="${meeting.meeting_Num eq meeting2.meeting_Num}">
          		<c:set var="memberCount" value="${meeting2.meeting_count}" />
          		</c:if>
          		</c:forEach>
          		<c:out value="${memberCount}" />
            		명</li>
            		<li> · <c:out value="${meeting.meeting_Adress}" /></li>
            		<li> · <c:out value="${meeting.meeting_Hobby}" /></li>
          		</ul>
        	</div>
  		</div>
  	</div>
	  </c:forEach>


    <div style="margin:130px 330px; text-align: center;">
    <ul class="pagination">
    	<c:if test="${pageMaker.prev}">
			<li class="page-item"><a class="page-link" href="${pageMaker.startPage -1}">Previous</a></li>
		</c:if>
		<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
			<li class="page-item"><a class="page-link" href="${num}">${num}</a></li>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<li class="page-item"><a class="page-link" href="${pageMaker.endPage +1 }">Next</a></li>
		</c:if>
    </ul>
    <form id='actionForm' action="/front/myMeeting" method='get'>
		<input type='hidden' name='userid' value='<sec:authentication property="principal.username"/>'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		</form>
    </div>
		</div>
	</div>
  <!--aside -->


   <!-- aside end -->
  </section>
  <!-- main_top end -->

<!-- //Recent News -->

<!-- footer -->
<footer class="footer py-5" >
   
</footer>
<!-- //footer -->

<!-- copyright -->
<section class="copy-right py-4">
   <div class="container">
      <div class="row">
         <div class="col-md-8">
            <p class="">© 2019 Furnish. All rights reserved | Design by Team_B.
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
<script type="text/javascript">
	$(document).ready(function() {
	
		var actionForm = $("#actionForm");

		// 페이지 번호 클릭 이벤트
		$(".page-item a").on("click", function(e) {
			e.preventDefault();
			// console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
	});
</script>
<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->
</body>
</html>