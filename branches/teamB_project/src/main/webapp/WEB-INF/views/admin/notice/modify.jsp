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
  <title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Mail_compose :: w3layouts</title>
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
    <jsp:include page="/WEB-INF/views/admin/includes/notice_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!-- page start-->
        <div class="mail-w3agile">
          <div class="row">
            <div class="col-sm-9 mail-w3agile">
              <section class="panel">
                <header class="panel-heading wht-bg">
                  <h4 class="gen-case"> 공지사항 > 수정
                  </h4>
                </header>
                <div class="panel-body">
                  <div class="compose-mail">
                    <form id="updateForm" role="form-horizontal" action="/admin/notice/modify" method="post"  enctype="multipart/form-data">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="hidden" name="notice_num" value="${notice.notice_num}"/>
                    <c:choose>
       					<c:when test="${not empty notice.files}">
           					<div class="form-group">
           						<label class="" style="margin-right:20px;">대표 이미지</label>
								<a href="/resources/upload/${notice.files}" target="_blank"><img class="notice_img" style="display:inline;" src="/resources/upload/${notice.files}"></a>
								<input type="hidden" name="files" value="${notice.files}">
       						</div>
       					</c:when>
       					<c:otherwise>
       						<div class="form-group">
								<input type="hidden" name="files" value="">
							</div>
		        		</c:otherwise>
  	 				</c:choose>
                      <div class="form-group">
                        <label for="to" class="">제목:</label>
                        <input type="text" tabindex="1" id="to" class="form-control" name="title" value="${notice.title}">
                      </div>
                      <div class="form-group">
                        <label for="subject" class="">팝업여부</label>
                        <c:choose>
       						<c:when test="${notice.popup eq 'Yes'}">
           						<input type="radio" name="popup" value="Yes" style="width:5%; float:none;" checked>On
                          		<input type="radio" name="popup" value="No" style="width:5%; float:none;">Off
       						</c:when>
       						<c:otherwise>
								<input type="radio" name="popup" value="Yes" style="width:5%; float:none;">On
                      	 		<input type="radio" name="popup" value="No" style="width:5%; float:none;" checked>Off
		        			</c:otherwise>
  	 					</c:choose>
                      </div>
                        <div class="compose-editor">
                          <textarea class="wysihtml5 form-control" name="contents" rows="9">${notice.contents}</textarea>
                          <input type="file" class="default" name="uploadFile" value=""/>
                        </div>
                        <div class="center">
                          <button type="button" class="btn btn-primary btn-sm" data-oper='update'><i class="fa fa-check"></i> 완료</button>
                          <button type="button" class="btn btn-sm" data-oper='detail'><i class="fa fa-times"></i> 취소</button>
                        </div>
                    </form>
                  </div>
                  <button class="btn btn-sm" data-oper='list'>목록</button>
                </div>
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
    
    <form id='operForm' method="get">
  		<input type='hidden' name='notice_num' value='<c:out value="${notice.notice_num}"/>'>
  		<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
  		<input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
  		<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
  		<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>  
  	</form>
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
  
	var operForm = $("#operForm");
	
	var updateForm = $("#updateForm");
	
	var pageNumTag = $("input[name='pageNum']").clone();
	var amountTag = $("input[name='amount']").clone();
	var keywordTag = $("input[name='keyword']").clone();
	var typeTag = $("input[name='type']").clone();
	
	$("button[data-oper='list']").on("click", function(e){
		operForm.attr("action","/admin/notice/list").submit();
	});
	
	$("button[data-oper='detail']").on("click", function(e){
		operForm.attr("action","/admin/notice/detail").submit();
	});
	
	$("button[data-oper='update']").on("click", function(e){
		updateForm.append(pageNumTag);
		updateForm.append(amountTag);
		updateForm.append(keywordTag);
		updateForm.append(typeTag); 
		updateForm.attr("action","/admin/notice/modify").submit();
	});
	
});
</script>
</body>

</html>
