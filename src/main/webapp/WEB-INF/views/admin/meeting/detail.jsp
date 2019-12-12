<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>

<head>
  <title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Form_component :: w3layouts</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
  <script type="application/x-javascript">
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
  <!-- bootstrap-css -->
  <link href="/resources/css/admin/font-awesome.css" rel="stylesheet">
  <link href="/resources/css/admin/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/css/admin/style.css" rel='stylesheet' type='text/css' />
  <link href="/resources/css/admin/admin_style.css" rel="stylesheet">
  <!-- //bootstrap-css -->
  <script src="/resources/js/admin/jquery2.0.3.min.js"></script>
  <!-- //$(document).ready를 사용하려면 필요함 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
  <section id="container">
    <jsp:include page="../includes/meeting_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <header class="panel-heading wht-bg">
          <h4 class="gen-case">모임 관리 > 모임 정보</h4>
        </header>
        <div class="form-w3layouts">
          <!-- page start-->
          <!-- page start-->
          <div class="row">
            <div class="col-lg-12">
              <section class="panel">
                <header class="panel-heading">모임정보</header>
                <div class="panel-body">
                  <form class="form-horizontal bucket-form" method="get">
                  <input type="hidden" name="meeting_num" value="${meeting.meeting_Num}">
                    <div class="form-group">
                      <img class="meeting_img" src="images/g8.jpg" alt="">
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">모임명</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control cursor" value="${meeting.meeting_Name}" onClick="location.href='#'" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">모임장</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control cursor" value="${meeting.userid}"  onClick="location.href='#'" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">관심분야</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="${meeting.meeting_Hobby}" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">활동지역</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="${meeting.meeting_Adress}" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">모임 소개</label>
                      <div class="col-sm-6">
                        <textarea name="name" class="form-control" rows="8" cols="80" readonly><c:out value="${meeting.introduce}"></c:out></textarea>
                      </div>
                    </div>

                    <div class="form-group">
                      <div class="mt_member_num_title">
                        <div style="padding-left:150px;"><h3 class="mt_member_display">맴버 정보</h3><p class="text-right mt_member_display" style="width:180px;"> 인원: <c:out value="${member_count}"></c:out></p></div>
                      </div>
                      <label class="col-sm-3 control-label"></label>
                      <div class="col-sm-6 border">
                        <table class="table">
                          <thead>
                            <tr>
                              <th>No</th>
                              <th data-breakpoints="xs">이름</th>
                              <th >아이디</th>
                              <th class="text-right">직급</th>
                            </tr>
                          </thead>
                          <tbody>
                          <c:forEach items="${member_info}" var="info" varStatus="status">
                            <tr data-expanded="true" class="unread cursor" onClick="location.href='/admin/member/detail'">
                              <td><c:out value="${((pageMaker.mcri.memberpageNum-1) * 10) + status.count}" /></td>
                              <td><c:out value="${info.userid}"></c:out></td> 
                            <td><c:out value="${info.name}"></c:out></td>
                              <td class="text-right">모임장</td>
                            </tr>
                            </c:forEach>
                          </tbody>
                        </table>
                        <footer>
                          <div class="row">
                            <div class="center">
                              <!--  Pagination 시작 -->
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a></li>
									</c:if>
									<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
										<li class="paginate_button  ${pageMaker.mcri.memberpageNum == num ? "active":""} ">
											<a href="${num}">${num}</a>
										</li>
									</c:forEach>
									<c:if test="${pageMaker.next}">
										<li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
									</c:if>
								</ul>
                            </div>
                          </div>
                        </footer>
                      </div>
                    </div>
                  </form>
                </div>
              </section>
            </div>
          </div>
          <button type="button" class="btn btn-default" data-oper="list">목록</button>
          <!-- page end-->
        </div>
      </section>
      <!-- footer -->
      <div class="footer">
        <div class="wthree-copyright">
          <p>© 2017 Visitors. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
        </div>
      </div>
      <!-- / footer -->
    </section>
    <!-- Form 시작 -->
	<form id='actionForm' action="/admin/meeting/list" method='get'>
		<input type='hidden' name='pageNum' value='${cri.pageNum}'>
		<input type='hidden' name='amount' value='${cri.amount}'>
		<input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
		<input type='hidden' name='keyword'	value='<c:out value="${cri.keyword }"/>'>
	</form>
	<!-- Form 끝 -->
				
	<!-- Form 시작 -->
	<form id='operForm' action="/admin/meeting/detail" method='get'>
		<input type='hidden' name='memberpageNum' value='${pageMaker.mcri.memberpageNum}'>
		<input type='hidden' name='memberamount' value='${pageMaker.mcri.memberamount}'>
	</form>
	<!-- Form 끝 -->

    <!--main content end-->
  </section>
  <script src="/resources/js/admin/bootstrap.js"></script>
  <script src="/resources/js/admin/jquery.dcjqaccordion.2.7.js"></script>
  <script src="/resources/js/admin/scripts.js"></script>
  <script src="/resources/js/admin/jquery.slimscroll.js"></script>
  <script src="/resources/js/admin/jquery.nicescroll.js"></script>
  <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/resources/js/admin/flot-chart/excanvas.min.js"></script><![endif]-->
  <script src="/resources/js/admin/jquery.scrollTo.js"></script>
  <script type="text/javascript">
	$(document).ready(function() {
		
		var actionForm = $("#actionForm");
		
		var operForm = $("#operForm");
		
		var meeting_num = $("input[name='meeting_num']").clone();
		var pageNumTag = $("input[name='pageNum']").clone();
		var amountTag = $("input[name='amount']").clone();
		var keywordTag = $("input[name='keyword']").clone();
		var typeTag = $("input[name='type']").clone();
		
		$("button[data-oper='list']").on("click", function(e){
			e.preventDefault();
			// console.log('click');
			actionForm.submit();
		});
		
		// 페이지 번호 클릭 이벤트
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			operForm.find("input[name='memberpageNum']").val($(this).attr("href"));
			operForm.append(meeting_num);
			operForm.append(pageNumTag);
			operForm.append(amountTag);
			operForm.append(keywordTag);
			operForm.append(typeTag);
			operForm.submit();
		});
	});
</script>
</body>

</html>
