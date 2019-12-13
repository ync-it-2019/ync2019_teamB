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
    <jsp:include page="/WEB-INF/views/admin/includes/manager_create_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!-- page start-->
        <div class="mail-w3agile">
          <div class="row">
            <div class="col-sm-9 mail-w3agile">
              <div class="reg-w3">
                <div class="w3layouts-main">
                  <h2>관리자 등록</h2>
                  <form action="#" method="post">
                  	<input type="hidden" id="token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="text" class="ggg" name="name" placeholder="이름" required="">
                    <input type="text" class="ggg" name="userid" placeholder="아이디" required="">
                    <input type="password" class="ggg" name="userpw" placeholder="비밀번호" required="">
                    <input type="phone" class="ggg" name="phone" placeholder="전화번호" required="">
                    <input type="email" class="ggg" name="email" placeholder="이메일" required="">
                    <input type="hidden" class="ggg" name="profile" value=" ">
                    <input type="hidden" class="ggg" name="adress" value=" ">
                    <input type="hidden" class="ggg" name="hobby" value=" ">
                    <input type="hidden" class="ggg" name="auth" value="ROLE_ADMIN">
                    <input type="submit" value="등록" name="register">
                  </form>
                </div>
              </div>
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
