<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
                  <h4 class="gen-case"> 1:1 문의 > 답변 등록
                  </h4>
                </header>
                <div class="panel-body">
                  <h3 class="center">1:1 문의 답변</h3>
                  <div class="compose-mail">
                    <form id="operForm" action="/admin/question/create" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                      <div class="form-group">
                        <label class="">질문자:</label>
                        <input type="text" tabindex="1" id="to" name="userid" class="form-control" value="${userid}" readonly>
                      </div>
                      <div class="form-group">
                        <label class="">작성일:</label>
                        <input type="text" tabindex="1" id="to" name="answer_date" class="form-control" value="${date_time}" readonly>

                      </div>
                      <div class="compose-editor">
                        <textarea class="wysihtml5 form-control" name="answer" rows="9"></textarea>
                      </div>
                      <div class="center">
                        <button type="submit" class="btn btn-primary btn-sm" data-oper="create"><i class="fa fa-check"></i> 완료</button>
                        <button type="button" class="btn btn-sm" data-oper="detail"><i class="fa fa-times"></i> 취소</button>
                      </div>
                    </form>
                  </div>
                  <button class="btn btn-sm" data-oper="list">목록</button>
                </div>
              </section>
            </div>
          </div>
          
        <form id='actionForm' action="/admin/question/list" method='get'>
        <input type='hidden' name='question_num' value='${question_num}'>
		<input type='hidden' name='pageNum' value='${cri.pageNum}'>
		<input type='hidden' name='amount' value='${cri.amount}'>
		<input type='hidden' name='type' value='${cri.type }'>
		<input type='hidden' name='keyword'	value='${cri.keyword }'>
		</form>

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
		var actionForm = $("#actionForm");
		
		var operForm = $("#operForm");
		
		var question_num = $("input[name='question_num']").clone();
		var pageNumTag = $("input[name='pageNum']").clone();
		var amountTag = $("input[name='amount']").clone();
		var keywordTag = $("input[name='keyword']").clone();
		var typeTag = $("input[name='type']").clone();
		
		$("button[data-oper='list']").on("click", function(e){
			 actionForm.submit();
			});
		
		$("button[data-oper='detail']").on("click", function(e){
			actionForm.attr('action', '/admin/question/detail');
			actionForm.submit();
			});
		
		$("button[data-oper='create']").on("click", function(e){
			operForm.append(question_num);
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