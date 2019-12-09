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
  <style>
    body {
        color: #555;
        background: #eeeeee;
        margin:0;
        padding: 0;
        box-sizing: border-box;}

    h1 {
        padding: 50px 0;
        font-weight: 400;
        text-align: center;}

    p {
        margin: 0 0 20px;
        line-height: 1.5;}

    .main {
        min-width: 320px;
        max-width: 800px;
        padding: 50px;
        margin: 0 auto;
        background: #ffffff;}
    /*라디오버튼 숨김*/
      input {
          display: none;}

    label {
        display: inline-block;
        margin: 0 0 -1px;
        padding: 15px 25px;
        font-weight: 600;
        text-align: center;
        color: #bbb;
        border: 1px solid transparent;}

    label:hover {
        color: #2e9cdf;
        cursor: pointer;}

    /*input 클릭시, label 스타일*/
    input:checked + label {
          color: #555;
          border: 1px solid #ddd;
          border-top: 2px solid #2e9cdf;
          border-bottom: 1px solid #ffffff;}
    .tab {
      width: 100px;
    }
  </style>
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
    <jsp:include page="../includes/question_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="mail-w3agile">
          <!-- page start-->
          <div class="row">
            <div class="col-sm-9 mail-w3agile">
              <section class="panel">
                <header class="panel-heading wht-bg">
                  <h4 class="gen-case">1:1 문의 관리
                  </h4>
                </header>
                <c:if test="${empty pageMaker.cri.type}">
                	<input id="tab1" type="radio" name="tabs" checked> <!--디폴트 메뉴-->
                	<label class="tab" for="tab1">전체</label>
                	<input id="tab2" type="radio" name="tabs">
                	<label class="tab" for="tab2">처리중</label>
                	<input id="tab3" type="radio" name="tabs">
                	<label class="tab" for="tab3">답변완료</label>
                </c:if>
				<c:if test="${ pageMaker.cri.type eq 'N'}">
					<input id="tab1" type="radio" name="tabs">
                	<label class="tab" for="tab1">전체</label>
                	<input id="tab2" type="radio" name="tabs" checked> <!--디폴트 메뉴-->
                	<label class="tab" for="tab2">처리중</label>
                	<input id="tab3" type="radio" name="tabs">
                	<label class="tab" for="tab3">답변완료</label>
				</c:if>
				<c:if test="${ pageMaker.cri.type eq 'Y'}">
					<input id="tab1" type="radio" name="tabs">
                	<label class="tab" for="tab1">전체</label>
                	<input id="tab2" type="radio" name="tabs">
                	<label class="tab" for="tab2">처리중</label>
                	<input id="tab3" type="radio" name="tabs" checked> <!--디폴트 메뉴-->
                	<label class="tab" for="tab3">답변완료</label>
				</c:if>
                	
                <section>
                  <div class="panel-body minimal"style="padding:0px 15px 0px 15px;">
                    <div class="table-inbox-wrap ">
                      <table class="table table-inbox table-hover" id="newTable" style="table-layout: fixed">
                        <tbody>
                          <thead>
                            <tr>
                              <th style="width:60px;">No</th>
                              <th style="width:140px;">카테고리</th>
                              <th style="width:440px; text-align:center;">제목</th>
                              <th data-breakpoints="xs">질문자</th>
                              <th data-breakpoints="xs" class="center">작성일</th>
                              <th data-breakpoints="xs sm md" data-title="DOB" class="text-right">비고</th>
                            </tr>
                          </thead>
                           <c:forEach items="${list}" var="question" varStatus="status">
                           <tr>
                          <td name="move" id="num" value="${question.question_num}"><c:out value="${question.question_num}" /></td>
                          <td class="inbox-small-cells text_limit move" name="move" value="${question.question_num}"><c:out value="${question.userid}" /></td>
                          <td class="inbox-small-cells text_limit move" name="move" value="${question.question_num}"><c:out value="${question.title}" /></td>
                          <td class="view-message dont-show text_limit move" name="move" value="${question.question_num}"><c:out value="${question.userid}" /></td>
                          <td class="view-message inbox-small-cells text_limit move" style="text-align:center;" name="move" value="${question.question_num}"><c:out value="${question.write_date}" /></td>
                          <c:if test="${question.answer_whether eq 'N'}">
                          	<td class="view-message text-right" style="color:red;">처리중</td>
                          </c:if>
                          <c:if test="${question.answer_whether eq 'Y'}">
                          	<td class="view-message text-right" style="color:green;">답변 완료</td>
                          </c:if>
                        </tr>
						</c:forEach>
                        </tbody>
                      </table>
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
                      </div>
                    </footer>
                  </div>
                </section>
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
  <!-- Form 시작 -->
	<form id='actionForm' action="/admin/question/list" method='get'>
	<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
	<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
	<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
	<input type='hidden' name='keyword'	value='<c:out value="${ pageMaker.cri.keyword }"/>'>
	</form>
  <!-- Form 끝 -->
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
		
		 $("#newTable").on("click", "td[name='move']", function(e) {
			 
		     $form.attr('action', '/admin/question/detail');
		     $form.attr('method', 'get');
		     $form.appendTo('body');
		     
		     var event_num = $(this).attr("value");
		     
			 var num = "<input type='hidden' name='question_num' value='" + event_num + "'>";
			 
		     $form.append(num);
			 $form.append(pageNumTag);
			 $form.append(amountTag);
			 $form.append(keywordTag);
			 $form.append(typeTag);
			 
			 $form.submit();
		   });
		 
			$("#tab1").on("click", function(e) {
			 
		     	$form.attr('action', '/admin/question/list');
		     	$form.attr('method', 'get');
		     	$form.appendTo('body');
		     
			 	var t = "<input type='hidden' name='type'>";
			 	var p = "<input type='hidden' name='pageNum' value='1'>";
			 	var a = "<input type='hidden' name='amount' value='10'>";
			 	var k = "<input type='hidden' name='keyword' value=''>";
			 
			 	 $form.append(t);
				 $form.append(p);
				 $form.append(a);
				 $form.append(k);
			 
			 	$form.submit();
		   });
			
			$("#tab2").on("click", function(e) {
				 
		     	$form.attr('action', '/admin/question/list');
		     	$form.attr('method', 'get');
		     	$form.appendTo('body');
		     
			 	var t = "<input type='hidden' name='type' value='N'>";
			 	var p = "<input type='hidden' name='pageNum' value='1'>";
			 	var a = "<input type='hidden' name='amount' value='10'>";
			 	var k = "<input type='hidden' name='keyword' value=''>";
			 
			 	$form.append(t);
				$form.append(p);
				$form.append(a);
				$form.append(k);
			 
			 	$form.submit();
		   });
			
			$("#tab3").on("click", function(e) {
				 
		     	$form.attr('action', '/admin/question/list');
		     	$form.attr('method', 'get');
		     	$form.appendTo('body');
		     
			 	var t = "<input type='hidden' name='type' value='Y'>";
			 	var p = "<input type='hidden' name='pageNum' value='1'>";
			 	var a = "<input type='hidden' name='amount' value='10'>";
			 	var k = "<input type='hidden' name='keyword' value=''>";
			 
			 	$form.append(t);
				$form.append(p);
				$form.append(a);
				$form.append(k);
			 
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