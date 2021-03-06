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
    <jsp:include page="/WEB-INF/views/admin/includes/question_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!-- page start-->
        <div class="mail-w3agile">
          <div class="row">
            <div class="col-sm-9 mail-w3agile">
              <section class="panel">
                <header class="panel-heading wht-bg">
                  <h4 class="gen-case"> 1:1 문의 관리 > 1:1 문의 정보</h4>
                </header>
                <div class="panel-body">
                  <h3 class="center">질문</h3>
                  <div class="compose-mail">
                  <div class="form-group">
                        <label class="" style="margin-right:20px;">참고 이미지</label>
                        <img class="question_img" src="/resources/upload/<c:out value="${question.files}" />" alt="" style="display:inline;">
                      </div>
                      <div class="form-group">
                        <label class="">질문자</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="${question.userid}" readonly>
                      </div>
                      <div class="form-group">
                        <label class="">작성일</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="${question.write_date}" readonly>
                      </div>
                      <div class="form-group">
                        <label class="">비고</label>
                        <c:if test="${question.answer_whether eq 'N'}">
                        	<input type="text" tabindex="1" id="to" class="form-control" style="color:red;" value="처리중" readonly>
                        </c:if>
                        <c:if test="${question.answer_whether eq 'Y'}">
                         	<input type="text" tabindex="1" id="to" class="form-control" style="color:green;" value="답변완료" readonly>
                        </c:if>
                      </div>
                      <div class="form-group">
                        <label class="">제목</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="${question.title}" readonly>
                      </div>
                      <div class="compose-editor">
                        <textarea class="wysihtml5 form-control" rows="9" readonly>${question.contents}</textarea>
                      </div>
                  </div>
                  <h3 class="center">답변</h3>
                  <div class="compose-mail">
                      <div class="form-group">
                        <label class="">작성자</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="${question.answer_writer}" readonly>
                      </div>
                      <div class="form-group">
                        <label class="">작성일</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="${question.answer_date}" readonly>
                      </div>
                      <div class="compose-editor">
                        <textarea class="wysihtml5 form-control" rows="9" readonly>${question.answer}</textarea>
                      </div>
                      <div class="center">
                      <c:if test="${question.answer_whether eq 'N'}">
                        	<button class="btn btn-primary btn-sm" data-oper='create' style="width:100px;">답변</button>
                        </c:if>
                        <c:if test="${question.answer_whether eq 'Y'}">
                        
                        </c:if>
                      </div>
                    <button class="btn btn-sm" data-oper='list'>목록</button>
                  </div>

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

    <!--main content end-->
  </section>
  <form id='operForm' action="/admin/question/modify" method="get">
  	<input type="hidden" id="token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  	<input type='hidden' name='question_num' value='<c:out value="${question.question_num}"/>'>
  	<input type='hidden' name='userid' value='<c:out value="${question.userid}"/>'>
  	<input type='hidden' name='ck_code' value='<c:out value="${question.question_num}"/>'>
  	<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
  	<input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
  	<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
  	<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>  
  </form>
  <script src="/resources/js/admin/bootstrap.js"></script>
  <script src="/resources/js/admin/jquery.dcjqaccordion.2.7.js"></script>
  <script src="/resources/js/admin/scripts.js"></script>
  <script src="/resources/js/admin/jquery.slimscroll.js"></script>
  <script src="/resources/js/admin/jquery.nicescroll.js"></script>
  <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/resources/js/admin/flot-chart/excanvas.min.js"></script><![endif]-->
  <script src="/resources/js/admin/jquery.scrollTo.js"></script>
  <script type="text/javascript">

function replaceEscapeStr(str) {
	return str.replace("\\","\\\\");
}

$(document).ready(function() {
  
	var operForm = $("#operForm");

	$("button[data-oper='modify']").on("click", function(e){
		$("input[id='token']").remove();
		operForm.attr("action","/admin/question/modify").submit();
	});
	
	$("button[data-oper='create']").on("click", function(e){
		$("input[id='token']").remove();
		$("input[name='ck_code']").remove();
		operForm.attr("action","/admin/question/create").submit();
	});
	
	$("button[data-oper='list']").on("click", function(e){
		$("input[id='token']").remove();
		$("input[name='question_num']").remove();
		$("input[name='ck_code']").remove();
		operForm.attr("action","/admin/question/list").submit();
	});
	
});
</script>
</body>

</html>