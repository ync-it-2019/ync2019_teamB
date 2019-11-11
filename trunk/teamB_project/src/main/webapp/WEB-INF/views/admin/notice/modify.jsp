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
    <jsp:include page="../includes/notice_header.jsp" flush="true" />
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
                    <form role="form-horizontal" method="post">
                      <div class="form-group">
                        <label for="to" class="">제목:</label>
                        <input type="text" tabindex="1" id="to" class="form-control" value="소모임이 새로운 모습으로 찾아왔습니다.">
                        <div class="form-group">
                          <label for="subject" class="">팝업여부</label>
                          <input type="radio" name="chk_pop" value="Y" style="width:5%; float:none;" checked>On
                          <input type="radio" name="chk_pop" value="N" style="width:5%; float:none;">Off
                        </div>

                        <div class="compose-editor">
                          <textarea class="wysihtml5 form-control" rows="9">안녕하세요. 소모임 운영진 입니다. 저희 소모임이 새로운 모습으로 모임인 분들을 찾아 뵙게 되었습니다.</textarea>
                          </textarea>
                          <input type="file" class="default" value="notice.png">
                        </div>
                        <div class="center">
                          <button class="btn btn-primary btn-sm" onClick="location.href='/admin/notice/detail'"><i class="fa fa-check"></i> 완료</button>
                          <button class="btn btn-sm" onClick="location.href='/admin/notice/detail'"><i class="fa fa-times"></i> 취소</button>
                        </div>
                    </form>
                  </div>
                  <button class="btn btn-sm" onClick="location.href='/admin/notice/list'">목록</button>
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
