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
  <!-- //$(document).ready를 사용하려면 필요함 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
  <section id="container">
    <jsp:include page="../includes/notice_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="mail-w3agile">
          <!-- page start-->
          <div class="row">
            <div class="col-sm-9 mail-w3agile">
              <section class="panel">
                <header class="panel-heading wht-bg">
                  <h4 class="gen-case">공지사항 관리</h4>
                </header>
                <div class="panel-body minimal">
                  <div class="table-inbox-wrap ">
                    <table class="table table-inbox table-hover" id="newTable" style="table-layout: fixed">
                      <tbody>
                        <thead>
                          <tr>
                            <th data-breakpoints="xs" style="width:30px;"></th>
                            <th style="width:60px;">No</th>
                            <th>작성자</th>
                            <th style="width:480px; text-align:center;">제목</th>
                            <th data-breakpoints="xs" style="text-align:center;">작성일</th>
                            <th data-breakpoints="xs sm md" data-title="DOB" class="center">팝업여부</th>
                          </tr>
                        </thead>
                        <c:forEach items="${list}" var="notice" varStatus="status">
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox" name="ck" value="${notice.notice_num}">
                          </td>
                          <td name="move" id="num" value="${notice.notice_num}"><c:out value="${notice.notice_num}" /></td>
                          <td class="inbox-small-cells text_limit move" name="move" value="${notice.notice_num}"><c:out value="${notice.userid}" /></td>
                          <td class="view-message dont-show text_limit move" name="move" value="${notice.notice_num}"><c:out value="${notice.title}" /></td>
                          <td class="view-message inbox-small-cells text_limit move" style="text-align:center;" name="move" value="${notice.notice_num}"><c:out value="${notice.write_date}" /></td>
                          <td name="move" value="${notice.notice_num}" style="text-align:center;" ><c:out value="${notice.popup}" /></td>
                        </tr>
						</c:forEach>
                      </tbody>
                    </table>
                    <div style="margin:10px 20px 0 0; text-align:right;">
                      <button type="button" class="btn btn-default" data-oper='create'>글쓰기</button>
                      <button type="button" class="btn btn-default"  data-oper='delete'>삭제</button>
                    </div>
                  </div>
                </div>
                <footer>
                  <div class="row">
                    <div class="center">
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
              </section>
            </div>
          </div>
          
          <!-- Form 시작 -->
				<form id='actionForm' action="/admin/notice/list" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
				<input type='hidden' name='keyword'	value='<c:out value="${ pageMaker.cri.keyword }"/>'>
				</form>
				<!-- Form 끝 -->
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
  <input type="hidden" id="token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		
		var $form = $('<form></form>');
		
		var actionForm = $("#actionForm");
		
		var pageNumTag = $("input[name='pageNum']").clone();
		var amountTag = $("input[name='amount']").clone();
		var keywordTag = $("input[name='keyword']").clone();
		var typeTag = $("input[name='type']").clone();
	    var tk = $("input[id='token']").clone();
		
		 $("#newTable").on("click", "td[name='move']", function(e) {
			 
		     $form.attr('action', '/admin/notice/detail');
		     $form.attr('method', 'get');
		     $form.appendTo('body');
		     
		     var notice_num = $(this).attr("value");
		     
			 var num = "<input type='hidden' name='notice_num' value='" + notice_num + "'>";
			 
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
		
		/**
		 * 파일 삭제 버튼을 누르면
		 */
		 $("button[data-oper='delete']").on("click", function(e){
			 
			  if (confirm('정말 삭제 하시겠습니까?')) {
				  	 $form.attr('action', '/admin/notice/delete');
				     $form.attr('method', 'post');
				     $form.appendTo('body');
					
				    var checkArr = "";
				    
				    $('input[name="ck"]:checked').each(function(i) { //check 된값 배열에 담기
				    	//checkArr.push($(this).val());
				    	checkArr += $(this).val() + ",";
				    });
				    
				    var ck_hidden = "<input type='hidden' name='ck_code' value='" + checkArr + "'>";
				    
				    $form.append(ck_hidden);
				   	$form.append(pageNumTag);
				    $form.append(amountTag);
				    $form.append(keywordTag);
				    $form.append(typeTag); 
				    $form.append(tk);
				    
				    $form.submit();
		    }
			  
			/* if (!confirm('정말 삭제 하시겠습니까?')) {
		        return false;
		    } */
			
		    /* if (pageNumTag) {
		        return false;
		    } */
		});
		 $("button[data-oper='create']").on("click", function(e){
			 actionForm.attr("action","/admin/notice/create").submit();
			});
	});
</script>

</html>
