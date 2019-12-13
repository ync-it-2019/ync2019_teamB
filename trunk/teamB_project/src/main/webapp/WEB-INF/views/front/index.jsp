<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content=" Furnish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- 슬라이드 css1 -->
<link rel="stylesheet" type="text/css" href="/resources/css/set1.css" />


<!-- css files -->
    <link href="/resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style_editors.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->

	<link href="/resources/css/css_slider.css" type="text/css" rel="stylesheet" media="all">

<title>牛모임</title>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

    </script>
</head>
<body>
<!-- //header -->
<jsp:include page="/WEB-INF/views/front/include/header.jsp" flush="true" />
  <section class="banner_w3lspvt">
  	<div class="csslider infinity" id="slider1">
  	<c:forEach items="${event}" var="event" varStatus="status">
  		<c:choose>
  		<c:when test="${status.index eq 0 }">
  		<input type="radio" name="slides" checked="checked" id="slides_1" />
  		</c:when>
  		<c:otherwise>
  		<input type="radio" name="slides" id="slides_<c:out value="${status.index + 1 }"/>" />
  		</c:otherwise>
  		</c:choose>

   	</c:forEach>
  		<ul>
  			<c:forEach items="${event}" var="event" varStatus="status">
			<li>
  				<div class="banner-top" style="background: url(/resources/upload/<c:out value="${event.image }" />) no-repeat center; background-size: cover;">
  					<div class="overlay">
  						<div class="container">
  							<div class="w3layouts-banner-info text-center">
  								<h3 class="text-wh"><c:out value="${event.title}" /></h3>
  								<p class="text-li mx-auto mt-2"><c:out value ="${event.contents}" /></p>
  								<a href="/front/event/get?event_num=<c:out value="${event.event_num}"/>" class="button-style mt-4">이벤트 바로가기</a>
  							</div>
  						</div>
  					</div>
  				</div>
  			</li>
      		</c:forEach>
  			
  		</ul>
  		<div class="arrows">
  		<c:forEach items="${event}" var="label" varStatus="status">
  		
  			<label for="slides_<c:out value="${status.index + 1}"/>"></label>
  		
  		</c:forEach>
  		</div>
  		
  	</div>
  </section>

<!-- main_top -->
<section class="main_top">
  <div class="home_editor's">
    <!--content -->
    <div class="content">
      <div class="home_editor">
        <div class="common_title">
          <h3 class="title">이런 모임 어때요?</h3>
        </div>
        <div class="containers"></div>
        <section class="news editor_list" id="news">
        <c:forEach items="${list}" var="meeting" begin="0" end="2" step="1" varStatus="status">
        <div class="grid">
            <figure class="effect-lily">
              <img src="/resources/upload/<c:out value="${meeting.meeting_Profile }"/>" />
              <figcaption>
                <div>
                  <span><c:out value="${meeting.meeting_Name }" /></span>
                  <p><c:out value="${meeting.introduce }" /></p>
                </div>
                <a href="/front/meeting/main?meeting_num=${meeting.meeting_Num }">View more</a>
              </figcaption>
            </figure>
          </div>
        </c:forEach>
        </section>
      </div>
    </div>
    <!-- content end -->
  </div>

  <!--aside -->
  <sec:authorize access="isAnonymous()">
  <div class="aside">
    <div class="login_area">
      <div class="letter">
      <p>"오늘도 당신의 즐거운 하루가 되길 응원합니다."</p>
      </div>
        <div class="login">
          <button class="login_btn" onclick="location.href='/login' ">
            	로그인
          </button>
        </div>
      <div class="user_find">
        <a class="btn_join" href="/register">회원가입</a>
      </div>
      <div class="arti1">#<a href="/login" onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');">나만의 모임</a></div>
          <div class="arti2">#<a href="/front/meetingSearch">인맥 쌓기</a></div>
          <div class="arti3">#<a href="/login" onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');">취미 생활 크로 활동</a></div>
    </div>
  </div>
  </sec:authorize>
  
  <sec:authorize access="isAuthenticated()">
	<div class="aside">
    <div class="login_area" style="margin-top:15px;">
    <div class="letter">
      	<p>"모임을 개설해 자신만의 모임을 만들어 보세요!"</p>
      </div>
    <div style="border: 1px solid #ccc; width: 290px; height: 120px; margin-top:10px;" class="login_box">
    <div style="display:black; width: 290px; height: 80px;">
    <sec:authentication property="principal.username" var="userId"/>
    <c:forEach items="${member}" var="member" varStatus="status">
    <c:if test="${member.userid eq userId}">
    <c:choose>
    <c:when test="${member.profile == ' ' }">
    <img style="border-radius: 50%; border:1px solid; float:left; width: 70px; height: 70px; display: inline-block; color:#ccc; margin:10px 10px 10px 10px;" src="/resources/img/man.png">
    </c:when>
    <c:otherwise>
    <img style="border-radius: 50%; border:1px solid; float:left; width: 70px; height: 70px; display: inline-block; color:#ccc; margin:10px 10px 10px 10px;" src="/resources/upload/<c:out value="${member.profile}" />">
    </c:otherwise>
    </c:choose>
    <div style="display: inline-block; float:left; padding-top:13px; width:85px;"><c:out value="${member.name}" /> 님</div>
    <div style="float:left; width:300px;">
    	<div style="margin-left:90px; margin-top:-50px;">지역 : <c:out value="${member.adress}" /></div>
    	<div style="margin-left:90px;">취미 : <c:out value="${member.hobby}" /></div>
    </div>
    </div>
    <div class="logout" align="right" style="font-size:12px; margin-right:25px; margin-top:10px;">
      <a style="color:black;" href="/front/myPage/info">내정보</a>
    </c:if>
    </c:forEach>
       <a style="margin-left:5px; color:black;" href="/customLogout">로그아웃</a>
        </div>
        </div>
        <div class="login">
          <button class="login_btn" style="background-color:#708041;" onclick="location.href='/front/meeting/meetingCreate' ">
            	모임 개설
          </button>
        </div>
    </div>
  </div>
  </sec:authorize>
  <!-- aside end -->
</section>
<!-- main_top end -->

<!-- main_bottom  -->
<section class="main_bottom">
  <div class="news_area">
    <div class="notice">
      <p><a href="/front/notice/list">+더보기</a></p>
      <h3>공지사항</h3>
      <div class="notice_list">
      <c:forEach items="${list3}" var="notice" begin="0" end="4" step="1" varStatus="status">
        <ul>
          <li class="n_li_title" style ="width:250px;">&middot;<a href="/front/notice/get?notice_num=<c:out value="${notice.notice_num}"/>"><c:out value="${notice.title}" /></a></li>
          <li class="n_li_date"><c:out value="${notice.write_date}" /><li>
        </ul>
      </c:forEach>
    </div>
  </div>
    <div class="faq">
      <div class="faq_i"><a href="/front/question/FAQ"><img class="faq_img" src="/resources/img/faq.png"><p class="faq_font">FAQ</p></a></div>
      <div class="answer_i"><a href="/front/question/myQuestion"><img class="answer_img" src="/resources/img/answer.png"><p class="answer_font">1:1 문의</p></a></div>
      <div class="faq_i"><img class="tell_img" src="/resources/img/tell.png"></div>
    </div>
  </div>
</section>
<!-- main_bottom end -->

<!-- footer -->
<footer class="footer py-5">
	<div class="container py-md-3">
		<div class="footer-grid_section text-center">
			<div class="footer-title mb-3">
				<h2> <a href="index.html"> 환영합니다!</a></h2>
			</div>
			<div class="footer-text">
				<p>모임에 참여해 활동을 시작하세요!</p>
			</div>
		</div>
	</div>
</footer>
<section class="copy-right py-4">
   <div class="container">
      <div class="row">
         <div class="col-md-8">
            <p class="">© YNC Japan employment class.  Team_B Project | Design by Seo Yeongjyun.
            </p>
         </div>
         <div class="col-md-4 mt-md-0 mt-4">
            <div class="subscribe-form">
            </div>
         </div>
      </div>
   </div>
</section>
	<!-- //footer bottom -->


<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->


</body>
</html>