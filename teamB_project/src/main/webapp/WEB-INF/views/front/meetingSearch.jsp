<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>牛모임 :: 소모임 찾기</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script src="/resources/js/slick.js" type="text/javascript" charset="utf-8"></script>
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


    .sliderA a:link,
    .sliderA a:visited,
    .mt-4 a:link,
    .mt-4 a:visited,
    .pagination a:link,
    .pagination a:visited,
    .notice a:link,
    .notice a:visited
     { color: black; text-decoration: none;}
    .sliderA a:hover,
    .mt-4 a:hover,
    .pagination a:hover
     { color: black; text-decoration: underline;}

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
      margin : 10px 0 0 13px;
    }

  </style>
</head>

<!-- //header -->
<jsp:include page="/WEB-INF/views/front/include/header.jsp" flush="true" />
  <!-- //header -->

<!-- inner banner -->
<section class="inner-banner">
	<div class="container">
		<h3 class="text-center">牛모임 찾기</h3>
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
			<li class="breadcrumb-item active" aria-current="page">牛모임 찾기</li>
		</ol>
	</div>
</div>
<link href="/resources/css/style_J.css" rel='stylesheet' type='text/css' />


<!-- //page details -->


<section class="news py-5" id="news">

	<div class="container py-lg-3">
    <div class="container">
    <div class="input-group">
      <h4 style="margin:5px 15px 0 0;">주제별 모임</h4>
      <form id='meetingSearch' action="/front/meetingSearch" method='get'>
      <input type="text" class="form-control" name='keyword' value='' placeholder="모임을 검색해보세요." style="width:400px;">
      <input type='hidden' name='type' value='N' />
		<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' />
		<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
          <span class="input-group-btn">
            <button class="btn btn-search" type="button" style="margin-top:-65px; margin-left:402px;"><i class="fa fa-search fa-fw"></i> 검색</button>
          </span>
      </form>
    </div>
    </div>
    
      <div class="aside">
        <div class="login_area">
        <sec:authorize access="isAnonymous()">
          <div class="login">
            <a class="login_btn" href="/login">로그인</a>
          </div>
          <div class="user_find">
            <a class="btn_join" href="/register">회원가입</a>
          </div>
          <hr>
          <div class="arti1">#<a href="/login" onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');">나만의 모임</a></div>
          <div class="arti2">#<a href="/front/meetingSearch">인맥 쌓기</a></div>
          <div class="arti3">#<a href="/login" onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');">취미 생활 크로 활동</a></div>
       </sec:authorize>
       <sec:authorize access="isAuthenticated()">
       <div class="profile">
       <sec:authentication property="principal.username" var="userId"/>
       <c:forEach items="${member}" var="member" varStatus="status">
       <c:if test="${member.userid eq userId}">
       <c:choose>
          	<c:when test="${member.profile == ' ' }">
          	<a href="/front/myPage/info"><img src="/resources/img/man.png"></a>
          	</c:when>
          	<c:otherwise>
          	<a href="/front/myPage/info"><img src="/resources/upload/<c:out value="${member.profile}" />" alt=""></a>
          	</c:otherwise>
      </c:choose>
            <div>
              <ul>
                <li class="mypage"><a href="/front/myPage/info"><c:out value="${member.name}" />님</a><span><a href="/front/myPage/info">내정보</a></span></li>
                <li>
                  <ul>
                    <!-- address + hobby = add_ho -->
                    <li class="add_ho">지역 : <c:out value="${member.adress}" /></li>
                    <li class="add_ho"><span  style="width:200px;">취미 : <c:out value="${member.hobby}" /></span>
                    </c:if>
      </c:forEach>
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
          <div class="arti1">#<a href="/front/meeting/meetingCreate">나만의 모임</a></div>
          <div class="arti2">#<a href="/front/meetingSearch">인맥 쌓기</a></div>
          <div class="arti3">#<a href="/front/myMeeting">취미 생활 크로 활동</a></div>
          </sec:authorize>
          <div class="notice">
            <a href="/front/notice/list" class="plus">+더보기</a>
            <p>공지사항</p>
            <c:forEach items="${list3}" var="notice" begin="0" end="2" step="1" varStatus="status">
            <a href="notice/get?notice_num=<c:out value="${notice.notice_num}" />"><c:out value="${notice.title}" /></a><br>
            <c:set var="para" value="${notice.title}" scope="session"  />
            </c:forEach>
          </div>
          <c:forEach items="${list4}" var="event" begin="0" end="0" step="1" varStatus="status">
          <a href="/front/event/get?event_num=<c:out value="${event.event_num}" />"><img src="/resources/upload/<c:out value="${event.image}" />" height="250px"></a>
          </c:forEach>
          <a href="/front/question/FAQ"><img src="/resources/img/FAQ.jpg" alt=""></a>
  
        </div>
      </div>
      
    <section class="regular slider">
    <div class="sliderA" hobby="ALL">
	<a href="#">ALL</a>
    </div>
	<div class="sliderA" hobby="게임/오락">
	<a href="#">게임/오락</a>
    </div>
    <div class="sliderA" hobby="운동/스포츠">
      <a href="#">운동/스포츠</a>
    </div>
    <div class="sliderA" hobby="인문학/책/글">
      <a href="#">인문학/책/글</a>
    </div>
    <div class="sliderA" hobby="만화/애니">
      <a href="#">만화/애니</a>
    </div>
    <div class="sliderA" hobby="문화/예술">
      <a href="#">문화/예술</a>
    </div>
    <div class="sliderA" hobby="차/오토바이">
      <a href="#">차/오토바이</a>
    </div>
    <div class="sliderA" hobby="봉사활동">
      <a href="#">봉사활동</a>
    </div>
    <div class="sliderA" hobby="요리/제조">
      <a href="#">요리/제조</a>
    </div>
    <div class="sliderA" hobby="여행">
      <a href="#">여행</a>
    </div>
    <div class="sliderA" hobby="댄스/무용">
      <a href="#">댄스/무용</a>
    </div>
    <div class="sliderA" hobby="외국/언어">
      <a href="#">외국/언어</a>
    </div>
  </section>




  <h5>모임 전체</h5>
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
  			<a href="/front/meeting/main?meeting_num=${meeting.meeting_Num }">
  			<c:choose>
          	<c:when test="${meeting.meeting_Profile == ' ' || meeting.meeting_Profile == null }">
          	<img src="/resources/img/meeting.png" style="height:105px; width:200px;">
          	</c:when>
          	<c:otherwise>
          	<img src="/resources/upload/<c:out value="${meeting.meeting_Profile}" />" alt=""  style="height:105px; width:200px;">
          	</c:otherwise>
      </c:choose>
  			</a>
        	</div>
        	<div class="introduction">
        	<b class="mt-4"><a href="/front/meeting/main?meeting_num=${meeting.meeting_Num }"><c:out value="${meeting.meeting_Name}" /></a></b>
          		<h6><c:out value="${meeting.introduce}" /></h6>
          		<ul class="blog-info mt-1">
          		<li>멤버 
          		<c:set var="memberCount" value="0" />
          		<c:forEach items="${list2}" var="meeting2" varStatus="status">
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
    <form id='actionForm' action="/front/meetingSearch" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
	</form>
    </div>
    <div class="ud d-flex justify-content-center">

</div>
	</div>
  <!--aside -->


   <!-- aside end -->
  </section>
  <!-- main_top end -->

<!-- //Recent News -->

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
				<p class="">© YNC Japan employment class.  Team_B Project | Design by JO Junghyeon.
				</p>
			</div>
			<div class="col-md-4 mt-md-0 mt-4">
			</div>
		</div>
	</div>
</section>
<!-- copyright -->
<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->
<script type="text/javascript">
	$(document).ready(function() {
	
		var actionForm = $("#actionForm");
		var keyword = '<c:out value="${pageMaker.cri.keyword}"/>';
		// 페이지 번호 클릭 이벤트
		$(".page-item a").on("click", function(e) {
			e.preventDefault();
			if(keyword != ''){
				actionForm.append("<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>' />");
				actionForm.append("<input type='hidden' name='keyword' value='"+ keyword+"' />");
			}
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
			
		});
		
		var searchForm = $("#meetingSearch");
		$("#meetingSearch button").on("click",	function(e) {
			if (!searchForm.find("option:selected").val()) {
				searchForm.find("input[name='pageNum']").val("1");
				e.preventDefault();
				searchForm.submit();
			}
		});
		var $form = $('<form></form>');
		$(".sliderA").on("click", function(e) {
			
		    $form.attr('action', '/front/meetingSearch');
	        $form.attr('method', 'get');
	        $form.appendTo('body');
	        var keyword = $(this).attr("hobby");
	        if(keyword == 'ALL'){
	        	location.href = "/front/meetingSearch";
	        }
	        else{
	        	var tag = "<input type='hidden' name='keyword' value='" + keyword + "'>";
		        var tag2 = "<input type='hidden' name='type' value='H' />";
		        var tag3 = "<input type='hidden' name='pageNum' value='<c:out value="1"/>' />";
		        var tag4 = "<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />";
		        $form.append(tag + tag2 + tag3 + tag4);
		        $form.submit();
	        }
		})
		
	});
</script>
</body>
</html>
