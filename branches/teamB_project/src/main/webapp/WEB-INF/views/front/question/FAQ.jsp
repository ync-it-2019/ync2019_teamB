<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<title>牛모임 :: FAQ</title>
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
<jsp:include page="/WEB-INF/views/front/include/header.jsp" flush="true" />
  <!-- //header -->

<!-- inner banner -->
<section class="inner-banner">
	<div class="container">
		<h3 class="text-center">고객센터</h3>
	</div>
</section>
<!-- //inner banner -->

<!-- page details -->
<div class="breadcrumb-agile">
	<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="/">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page"> 고객센터</li>
		</ol>
	</div>
</div>
<!-- //page details -->

<!-- services -->
<section class="news py-5">
	<div class="container py-lg-3">
      				<h5 style="margin : 20px;"><a href="#" style="color : #007bff">FAQ</a> | <a href="/front/question/myQuestion">나의 문의</a></h5>
            <hr>
            <div class="col-lg-14">
              <div style="margin: 50px 0px;"><h4><b>자주 찾는 질문</b></h4></div>
               <table class="table table-hover">
                 <tbody>
                   <tr>
                     <td><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
[계정]휴대폰 번호가 변경되었습니다. 시스템에서 어떻게 변경해야 하나요? &nbsp; <i class="fa fa-angle-down"></i>
</a><div style="DISPLAY: block"><br>
상단에 있는 마이페이지에서 '회원 정보 변경'을 통해 변경할 수 있습니다.<br>
충분한 답변을 얻지 못하셨다면 옆의 1대1 문의를 통해 답변해드리겠습니다.<br>
	<sec:authorize access="isAnonymous()">
		<div onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');"><a href="/login"><button type="button">문의하기</button></a></div>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<a href="/front/question/write"><button type="button" style="cursor:pointer">문의하기</button></a>
	</sec:authorize>
</div></td>
                   </tr>
                </tbody>
                <tbody>
                  <tr>
                    <td><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
  [모임]정모 참가가 안되요. &nbsp; <i class="fa fa-angle-down"></i>
  </a><div style="DISPLAY: none"><br>
  해당 정모의 최대인원이 이미 다 채워진 상태라면 더 이상의 참가가 불가능합니다.<br>
  현재 해당 정모의 참가인원을 확인해주시기 바랍니다.<br>
  충분한 답변을 얻지 못하셨다면 옆의 1대1 문의를 통해 답변해드리겠습니다.<br>
  <sec:authorize access="isAnonymous()">
		<div onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');"><a href="/login"><button type="button">문의하기</button></a></div>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<a href="/front/question/write"><button type="button" style="cursor:pointer">문의하기</button></a>
	</sec:authorize>
  </div></td>
                  </tr>
                </tbody>
                <tbody>
                  <tr>
                    <td><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
[계정]가입시 아이디를 잘못 기재했습니다. 변경할 수 있나요? &nbsp; <i class="fa fa-angle-down"></i>
</a><div style="DISPLAY: none"><br>
  단순 변경은 불가하며, 탈퇴 후 재가입으로 가능합니다.<br>
  충분한 답변을 얻지 못하셨다면 옆의 1대1 문의를 통해 답변해드리겠습니다.<br>
<sec:authorize access="isAnonymous()">
		<div onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');"><a href="/login"><button type="button">문의하기</button></a></div>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<a href="/front/question/write"><button type="button" style="cursor:pointer">문의하기</button></a>
	</sec:authorize>
</div></td>
                  </tr>
              </tbody>
              <tbody>
                <tr>
                  <td><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
[모임]정모 참가를 위한 최소 연령이 어떻게 되나요? &nbsp; <i class="fa fa-angle-down"></i>
</a><div style="DISPLAY: none"><br>
최소 만15세 이상부터 모임참가가 가능합니다.<br>
충분한 답변을 얻지 못하셨다면 옆의 1대1 문의를 통해 답변해드리겠습니다.<br>
<sec:authorize access="isAnonymous()">
		<div onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');"><a href="/login"><button type="button">문의하기</button></a></div>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<a href="/front/question/write"><button type="button" style="cursor:pointer">문의하기</button></a>
	</sec:authorize>
</div></td>
                </tr>
              </tbody>
              <tbody>
                <tr>
                  <td><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
[기타]홈페이지 이용 중 에러가 발생합니다. &nbsp; <i class="fa fa-angle-down"></i>
</a><div style="DISPLAY: none"><br>
홈페이지 이용 중 '오류 안내' 메세지가 보이시는 경우, 다음 조치를 취해보시기 바랍니다.<br>
1. 인터넷 익스플로러 사용자의 경우<br>
Internet Explorer>인터넷 옵션>일반>검색기록>삭제에서 '쿠키 및 웹사이트 데이터' 삭제<br>
2. 크롬 사용자의 경우<br>
Chrome>설정>왼편 상단 카테고리 클릭>고급>개인정보 및 보안>인터넷 사용 기록 삭제에서 '쿠키 및 기타 사이트 데이터' 삭제<br>
충분한 답변을 얻지 못하셨다면 옆의 1대1 문의를 통해 답변해드리겠습니다.<br>
<sec:authorize access="isAnonymous()">
		<div onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');"><a href="/login"><button type="button">문의하기</button></a></div>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<a href="/front/question/write"><button type="button" style="cursor:pointer">문의하기</button></a>
	</sec:authorize>
</div></td>
                </tr>
              </tbody>
              <tbody>
                <tr>
                  <td><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
[모임]모임은 최대 몇 개까지 가입이 가능한가요? &nbsp; <i class="fa fa-angle-down"></i>
</a><div style="DISPLAY: none"><br>
현재 가입 가능한 모입의 개수에 관해서는 제한을 두지 않고 있습니다.<br>
마음껏 여러 모임에 가입해 활동해 주시길 바랍니다.<br>
충분한 답변을 얻지 못하셨다면 옆의 1대1 문의를 통해 답변해드리겠습니다.<br>
<sec:authorize access="isAnonymous()">
		<div onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');"><a href="/login"><button type="button">문의하기</button></a></div>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<a href="/front/question/write"><button type="button" style="cursor:pointer">문의하기</button></a>
	</sec:authorize>
</div></td>
                </tr>
              </tbody>
              <tbody>
                <tr>
                  <td><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
[계정]강제 탈퇴 이후 즉시 재가입 할 수 있나요? &nbsp; <i class="fa fa-angle-down"></i>
</a><div style="DISPLAY: none"><br>
네 재가입은 바로 가능 합니다.<br>
다만, 탈퇴 즉시 회원님의 온라인 정보는 삭제되며 복구가 불가능합니다.<br>
충분한 답변을 얻지 못하셨다면 옆의 1대1 문의를 통해 답변해드리겠습니다.<br>
<sec:authorize access="isAnonymous()">
		<div onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');"><a href="/login"><button type="button">문의하기</button></a></div>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<a href="/front/question/write"><button type="button" style="cursor:pointer">문의하기</button></a>
	</sec:authorize>
</div></td>
                </tr>
              </tbody>
              <tbody>
                <tr>
                  <td><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
[계정]이름이 변경 되었습니다. 어떻게 해야 하나요? &nbsp; <i class="fa fa-angle-down"></i>
</a><div style="DISPLAY: none"><br>
아래의 '문의하기'버튼을 통해 새로운 신분증 사진을 첨부하여 문의해주시길 바랍니다.<br>
확인되는 즉시 회원정보를 변경해 드리겠습니다.<br>
충분한 답변을 얻지 못하셨다면 옆의 1대1 문의를 통해 답변해드리겠습니다.<br>
<sec:authorize access="isAnonymous()">
		<div onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');"><a href="/login"><button type="button">문의하기</button></a></div>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<a href="/front/question/write"><button type="button" style="cursor:pointer">문의하기</button></a>
	</sec:authorize>
</div></td>
                </tr>
              </tbody>
             </table>
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