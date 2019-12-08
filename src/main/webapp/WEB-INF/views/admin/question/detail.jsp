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
    <jsp:include page="../includes/question_header.jsp" flush="true" />
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
                        <label class="">작성자</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="ay9564" readonly>
                      </div>
                      <div class="form-group">
                        <label class="">작성일</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="2019.10.28" readonly>
                      </div>
                      <div class="form-group">
                        <label class="">비고</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="문의중" readonly>
                      </div>
                      <div class="form-group">
                        <label class="">제목</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="운영하던 모임이 정지되었습니다." readonly>
                      </div>
                      <div class="compose-editor">
                        <textarea class="wysihtml5 form-control" rows="9" readonly>운영 중이던 모임이 갑자기 폐쇄 되었습니다. 아무 통보도 없는 갑작스런 조치에 많이 당황스럽네요;; 폐쇈 된 이유가 사행성 게시물 작성 및 홍보이 던데 저희는 그런 적이 없습니다. 다시 한번 확인해 주시기 바랍니다. 빠른 답변 부탁드립니다.
                        </textarea>
                      </div>
                  </div>
                  <h3 class="center">답변</h3>
                  <div class="compose-mail">
                      <div class="form-group">
                        <label class="">작성자</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="" readonly>
                      </div>
                      <div class="form-group">
                        <label class="">작성일</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="" readonly>
                      </div>
                      <div class="compose-editor">
                        <textarea class="wysihtml5 form-control" rows="9" readonly></textarea>
                      </div>
                      <div class="center">
                        <button class="btn btn-primary btn-sm" onClick="location.href='/admin/inquiry/create'" style="width:100px;">답변</button>
                      </div>
                    <button class="btn btn-sm" onClick="location.href='/admin/inquiry/list'">목록</button>
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
  <script src="/resources/js/admin/bootstrap.js"></script>
  <script src="/resources/js/admin/jquery.dcjqaccordion.2.7.js"></script>
  <script src="/resources/js/admin/scripts.js"></script>
  <script src="/resources/js/admin/jquery.slimscroll.js"></script>
  <script src="/resources/js/admin/jquery.nicescroll.js"></script>
  <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/resources/js/admin/flot-chart/excanvas.min.js"></script><![endif]-->
  <script src="/resources/js/admin/jquery.scrollTo.js"></script>
</body>

</html>