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
  <title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Mail :: w3layouts</title>
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
</head>

<body>
  <section id="container">
   <jsp:include page="/WEB-INF/views/admin/includes/meeting_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="mail-w3agile">
          <!-- page start-->
          <div class="row">
            <div class="col-sm-9 mail-w3agile">
              <section class="panel">
                <header class="panel-heading wht-bg">
                  <h4 class="gen-case">모임 관리</h4>
                </header>
                <div class="panel-body minimal">
                  <div class="table-inbox-wrap ">
                    <table id="newTable" class="table table-inbox table-hover" style="table-layout: fixed">
                      <tbody>
                        <thead>
                          <tr>
                            <th style="width:60px;">No</th>
                            <th style="width:180px;">모임명</th>
                            <th style="width:100px;">모임장</th>
                            <th data-breakpoints="xs" style="width:440px; text-align:center;">모임소개</th>
                            <th data-breakpoints="xs sm md" data-title="DOB">활동 분야</th>
                            <th data-breakpoints="xs sm md" class="text-right">활동 지역</th>
                          </tr>
                        </thead>
                        <c:forEach items="${list}" var="meeting" varStatus="status">
                        <tr class="unread" name="move" value="${meeting.meeting_Num}">
                          <td class=""><c:out value="${meeting.meeting_Num}" /></td>
                          <td class="inbox-small-cells text_limit"><c:out value="${meeting.meeting_Name}" /></td>
                          <td class="view-message dont-show text_limit"><c:out value="${meeting.userid}" /></td>
                          <td class="view-message text_limit"><c:out value="${meeting.introduce}" /></td>
                          <td class="view-message inbox-small-cells text_limit"><c:out value="${meeting.meeting_Hobby}" /></td>
                          <td class="view-message text-right"><c:out value="${meeting.meeting_Adress}" /></td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
                <footer>
                  <div class="row">
                    <div class="center">
                    <!--  Pagination 시작 -->
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>
						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>
					</ul>
				</div>
				<!--  Pagination 끝 -->
				
				<!-- Form 시작 -->
				<form id='actionForm' action="/admin/meeting/list" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
				<input type='hidden' name='keyword'	value='<c:out value="${ pageMaker.cri.keyword }"/>'>
				</form>
				<!-- Form 끝 -->
                </footer>
              </section>
            </div>
          </div>

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
		
		var $form = $('<form></form>');
		
		var actionForm = $("#actionForm");
		
		var pageNumTag = $("input[name='pageNum']").clone();
		var amountTag = $("input[name='amount']").clone();
		var keywordTag = $("input[name='keyword']").clone();
		var typeTag = $("input[name='type']").clone();
	    var tk = $("input[id='token']").clone();
		
		 $("#newTable").on("click", "tr[name='move']", function(e) {
			 
		     $form.attr('action', '/admin/meeting/detail');
		     $form.attr('method', 'get');
		     $form.appendTo('body');
		     
		     var meeting_num = $(this).attr("value");
		     
			 var num = "<input type='hidden' name='meeting_num' value='" + meeting_num + "'>";
			 
		     $form.append(num);
			 $form.append(pageNumTag);
			 $form.append(amountTag);
			 $form.append(keywordTag);
			 $form.append(typeTag);
			 
			 $form.submit();
		   });

		// 페이지 번호 클릭 이벤트
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			// console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
	});
</script>
</body>

</html>
