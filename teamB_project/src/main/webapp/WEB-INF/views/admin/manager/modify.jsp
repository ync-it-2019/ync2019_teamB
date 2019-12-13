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
    <jsp:include page="/WEB-INF/views/admin/includes/manager_list_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <header class="panel-heading wht-bg">
          <h4 class="gen-case">관리자 계정 관리 > 관리자 정보 수정</h4>
        </header>
        <div class="form-w3layouts">
          <!-- page start-->
          <!-- page start-->
          <div class="row">
            <div class="col-lg-12">
              <section class="panel">
                <header class="panel-heading">
                  관리자 수정
                </header>
                <div class="panel-body">
                  <form id="updateForm" class="form-horizontal bucket-form" action="/admin/manager/modify" method="post">
                    <div class="form-group">
                      <label class="col-sm-3 control-label">이름</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" name="name" value="<c:out value="${manager.name}" />">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">전화번호</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" name="phone" value="<c:out value="${manager.phone}" />">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">이메일</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" name="email" value="<c:out value="${manager.email}" />">
                      </div>
                    </div>
                    <input type="hidden" id="token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="hidden" class="ggg" name="userid" value="<c:out value="${manager.userid}" />">
                    <input type="hidden" class="ggg" name="userpw" value=" ">
                    <input type="hidden" class="ggg" name="profile" value="">
                    <input type="hidden" class="ggg" name="adress" value=" ">
                    <input type="hidden" class="ggg" name="hobby" value=" ">
                    <input type="hidden" class="ggg" name="auth" value=" ">
                    <div class="center">
                      <button type="submit" class="btn btn-primary btn-sm" data-oper="update"><i class="fa fa-check"></i> 완료</button>
                      <button type="button" class="btn btn-sm" data-oper="detail"><i class="fa fa-times"></i> 취소</button>
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
    <form id='operForm' method="get">
  	<input type='hidden' name='userid' value='<c:out value="${manager.userid}"/>'>
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
		$("input[name='userid']").remove();
		operForm.attr("action","/admin/manager/list").submit();
	});
	
	$("button[data-oper='detail']").on("click", function(e){
		operForm.attr("action","/admin/manager/detail").submit();
	});
	
	$("button[data-oper='update']").on("click", function(e){
		updateForm.append(pageNumTag);
		updateForm.append(amountTag);
		updateForm.append(keywordTag);
		updateForm.append(typeTag); 
		updateForm.attr("action","/admin/manager/modify").submit();
	});
	
});
</script>
</body>

</html>
