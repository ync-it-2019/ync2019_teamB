<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content=" Furnish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<title>Insert title here</title>
</head>
<link href="/resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
<body>
<header class="py-sm-3 pt-3 pb-2" id="home">
     <div class="container">
        <!-- nav -->
        <div class="top d-md-flex">
           <div id="logo" style="margin-left:30px;">
              <h1> <a href="/"> 牛모임</a></h1>
           </div>
           <div class="search-form mx-md-auto">
              <div class="n-right-w3ls">
                 <!-- <form action="#" method="post" class="newsletter">
                    <input class="search" type="text" placeholder="Search..." required="">
                    <button class="form-control btn" value=""><span class="fa fa-search"></span></button>
                 </form> -->
              </div>
           </div>
           		<sec:authorize access="isAnonymous()">
           		<a href="/login" class="btn"><span class="fa fa-user-circle-o"></span> 로그인</a>
              <a href="/register" class="btn"><span class="fa fa-pencil-square-o"></span> 회원가입</a>
				</sec:authorize>
           <div class="forms mt-md-0 mt-2">
              
              <sec:authorize access="isAuthenticated()">

				<a href="/customLogout" class="btn"><span class="fa fa-user-circle-o"></span> 로그아웃</a>
				<a href="#" class="btn" id="move2" onClick="location.href='/front/myPage/info'">
				<span class="fa fa-pencil-square-o" >
				</span> 
				마이페이지</a>

				</sec:authorize>

              
           </div>
        </div>
        <nav class="text-center">
           <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
           <input type="checkbox" id="drop" />
           <ul class="menu">
              <li class="mr-lg-4 mr-2 active"><a href="/">홈</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/notice/list">공지사항</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/event/list">이벤트</a></li>
              <li class="mr-lg-4 mr-2"><a href="/front/meetingSearch">모임 찾기</a></li>
              <sec:authorize access="isAuthenticated()">
              <li class="mr-lg-4 mr-2">
              		<a href="/front/myMeeting">내모임</a></li>
              </sec:authorize>
              <sec:authorize access="isAnonymous()">
              <li class="mr-lg-4 mr-2" id="loginGo" onClick="alert('로그인 시 이용 가능합니다. 로그인 해주세요.');"><a href="/login">내모임</a></li>
              </sec:authorize>
              <li class=""><a href="/front/question/FAQ">고객센터</a></li>
           </ul>
        </nav>
        <!-- //nav -->
     </div>
  </header>
  <!-- //header -->
  
  <script type="text/javascript">
  $(document).ready(function() {
		var result = '<c:out value="${result}"/>';
		
		checkModal(result);

		history.replaceState({}, null, null);

		function checkModal(result) {

			if (result === '' || history.state) {
				return;
			}

			if (parseInt(result) > 0) {
				$(".modal-body").html("게시글 " + parseInt(result)	+ " 번이 등록되었습니다.");
			}

			$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click", function() {
			self.location = "/front/notice/write";
		});
		
		var actionForm = $("#actionForm");

		// 페이지 번호 클릭 이벤트
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			// console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		// 상세보기 클릭 이벤트
		$("#move").on("click",function(e) {
			e.preventDefault();
			actionForm.append("<input type='hidden' name='userid' value='" + $(this).attr("href")	+ "'>");
			actionForm.attr("action", "/front/myMeeting");
			actionForm.submit();
		});
		
		
		
		// 검색 버튼 클릭 이벤트
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click",	function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				return false;
			}

			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}
			
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			searchForm.submit();
		});
	});
</script>
</body>
</html>