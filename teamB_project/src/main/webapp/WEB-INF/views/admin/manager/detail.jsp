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
</head>

<body>
  <section id="container">
    <jsp:include page="../includes/manager_list_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <header class="panel-heading wht-bg">
          <h4 class="gen-case">관리자 계정 관리 > 관리자 정보</h4>
        </header>
        <div class="form-w3layouts">
          <!-- page start-->
          <!-- page start-->
          <div class="row">
            <div class="col-lg-12">
              <section class="panel">
                <header class="panel-heading">
                  관리자 정보
                </header>
                <div class="panel-body">
                  <form class="form-horizontal bucket-form" method="get">
                    <div class="form-group">
                      <label class="col-sm-3 control-label">이름</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="<c:out value="${manager.name}" />" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">아이디</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="<c:out value="${manager.userid}" />" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">전화번호</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="<c:out value="${manager.phone}" />" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">이메일</label>
                      <div class="col-sm-6">
                        <input type="eamil" class="form-control" value="<c:out value="${manager.email}" />" readonly>
                      </div>
                    </div>
                    <div class="center">
                  <button type="button" class="btn btn-primary" data-oper="modify" style="width:100px;">수정</button>
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

    <!--main content end-->
  </section>
  <form id='operForm' action="/admin/manager/modify" method="get">
  	<input type="hidden" id="token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  	<input type='hidden' name='userid' value='<c:out value="${manager.userid}"/>'>
  	<input type='hidden' name='ck_code' value='<c:out value="${manager.userid}"/>'>
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
		$("input[name='ck_code']").remove();
		operForm.attr("action","/admin/manager/modify").submit();
	});
	
	$("button[data-oper='remove']").on("click", function(e){
		if (confirm('정말 삭제 하시겠습니까?')) {
			operForm.attr('method', 'post');
			operForm.attr("action","/admin/manager/delete").submit();
		}
	});
	
	$("button[data-oper='list']").on("click", function(e){
		$("input[id='token']").remove();
		$("input[name='userid']").remove();
		$("input[name='ck_code']").remove();
		operForm.attr("action","/admin/manager/list").submit();
	});
	
});
</script>
</body>

</html>
