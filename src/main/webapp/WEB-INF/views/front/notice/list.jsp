<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<title>牛모임 :: 공지사항</title>
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
		$(".move").on("click",function(e) {
			e.preventDefault();
			actionForm.append("<input type='hidden' name='notice_num' value='" + $(this).attr("href")	+ "'>");
			actionForm.attr("action", "/front/notice/get");
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
    
    <style media="screen">
      a:link { color: black; text-decoration: none;}
        a:visited { color: black; text-decoration: none;}
      a:hover { color: black; text-decoration: underline;}
    </style>

   <!-- css files -->
    <link href="/resources/css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
    <link href="/resources/css/paging.css" rel="stylesheet">
   <!-- //css files -->

   <!-- google fonts -->
   <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
   <!-- //google fonts -->
   <!-- //$(document).ready를 사용하려면 필요함 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>
<!-- //header -->
<jsp:include page="/WEB-INF/views/front/include/header.jsp" flush="true" />
  <!-- //header -->

<!-- inner banner -->
<section class="inner-banner">
   <div class="container">
      <h3 class="text-center">공지사항</h3>
   </div>
</section>
<!-- //inner banner -->

<!-- page details -->
<div class="breadcrumb-agile">
   <div style="margin-left : 76.5px">
      <ol class="breadcrumb">
         <li class="breadcrumb-item">
            <a href="index.html">Home</a>
         </li>
         <li class="breadcrumb-item active" aria-current="page"> 공지사항</li>
      </ol>
   </div>
</div>
<!-- //page details -->

<!-- services -->
<section class="news py-5">
   <div class="container py-lg-3">
    <div class="col-lg-14">
        <h5 style="margin : 20px;">공지사항</h5>
      <table class="table table-hover">
        <thead>
          <tr>
            <th>글번호</th>
            <th><a style="position: relative; left: 250px;">제목</a></th>
            <th><a style="position: relative;">글쓴이</a></th>
            <th><a style="position: relative; left: 10px;">작성일</a></th>
          </tr>
        </thead>
      
      <c:forEach items="${list}" var="notice" varStatus="status">
        <tr>
         <td><c:out value="${notice.notice_num}" /></td>
         <td class="move over1" onClick="location.href='/front/notice/get?notice_num=<c:out value="${notice.notice_num}" />'"><c:out value="${notice.title}" /></td>
         <td class="move" onClick="location.href='/front/notice/get?notice_num=<c:out value="${notice.notice_num}" />'"><c:out value="${notice.userid}" /></td>
         <td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.write_date}" /></td>
        </tr>
	  </c:forEach>
      </table>
   </div>
   
<div class="ud d-flex justify-content-center">
  <form id='searchForm' action="/front/notice/list" method='get'>
		<select name='type'>
			<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
			<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
		</select>
		<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>' />
		<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' />
		<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
		<button value=""><span class="fa fa-search"></span></button>
	</form>
</div>

	<div style="margin : 20px;">
 		<!--  Pagination 시작 -->
		<ul class="pagination justify-content-center">
		 <c:if test="${pageMaker.prev}">
			<li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a></li>
		</c:if>
		<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
			<li class="paginate_button"><a href="${num}">${num}</a></li>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
		</c:if>
		</ul>
       </div>
        <!-- Form 시작 -->
		<form id='actionForm' action="/front/notice/list" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		</form>
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
<script type="text/javascript">
	$(document).ready(function() {
	
		var actionForm = $("#actionForm");

		// 페이지 번호 클릭 이벤트
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
	});
</script>
</html>