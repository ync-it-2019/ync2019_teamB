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
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- //bootstrap-css -->
  <link href="css/font-awesome.css" rel="stylesheet">
  <!-- //font-awesome icons -->
  <script src="js/jquery2.0.3.min.js"></script>
  <link href="css/admin_style.css" rel='stylesheet' type='text/css' />
  <link rel="stylesheet" href="css/admin_style1.css">
</head>

<body>
  <section id="container">
    <!--header start-->
    <header class="header fixed-top clearfix">
      <!--logo start-->
      <div class="brand">

        <a href="index.html" class="logo">
          VISITORS
        </a>
        <div class="sidebar-toggle-box">
          <div class="fa fa-bars"></div>
        </div>
      </div>
      <!--logo end-->
      <div class="top-nav clearfix">
        <!--search & user info start-->
        <ul class="nav pull-right top-menu">
          <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
              <img alt="" src="images/2.png">
              <span class="username">John Doe</span>
              <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
              <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
              <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
              <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
          </li>
          <!-- user login dropdown end -->

        </ul>
        <!--search & user info end-->
      </div>
    </header>
    <!--header end-->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
          <ul class="sidebar-menu" id="nav-accordion">
            <li class="sub-menu">
              <a href="./member_list.html">
                <i class="fa fa-book"></i>
                <span>회원 관리</span>
              </a>
            </li>
            <li class="sub-menu">
              <a href="./meeting_list.html">
                <i class="fa fa-th"></i>
                <span>모임 관리</span>
              </a>
            </li>
            <li>
              <a href="./notice_list.html">
                <i class="fa fa-dashboard"></i>
                <span>공지사항</span>
              </a>
            </li>
            <li>
              <a href="./event_list.html">
                <i class="fa fa-bullhorn"></i>
                <span>이벤트 </span>
              </a>
            </li>
            <li class="sub-menu">
              <a href="./inquiry_list.html">
                <i class="fa fa-envelope"></i>
                <span>1:1문의 </span>
              </a>
            </li>
            <li class="sub-menu">
              <a href="./javascript:;" class="active">
                <i class="fa fa-tasks"></i>
                <span>관리자 관리</span>
              </a>
              <ul class="sub">
                <li><a href="./manager_create.html">관리자 등록</a></li>
                <li><a href="./manager_list.html" class="active">관리자 조회</a></li>
              </ul>
            </li>
            <li>
              <a href="./login.html">
                <i class="fa fa-user"></i>
                <span>Login Page</span>
              </a>
            </li>
          </ul>
        </div>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
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
                  <form class="form-horizontal bucket-form" method="post">
                    <div class="form-group">
                      <img class="member_img" src="images/no_img.jpg" alt="">
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">이름</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="서영준">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">아이디</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="ay9564">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">비밀번호</label>
                      <div class="col-sm-6">
                        <input type="password" class="form-control round-input" value="ay789456">
                      </div>
                    </div>
                    <div class="center">
                      <button class="btn btn-primary btn-sm" onClick="location.href='./manager_detail.html'"><i class="fa fa-check"></i> 완료</button>
                      <button class="btn btn-sm" onClick="location.href='./manager__detail.html'"><i class="fa fa-times"></i> 취소</button>
                    </div>
                    </form>
                </div>
              </section>
            </div>
          </div>
          <button type="button" class="btn btn-default" onClick="location.href='./manager_list.html'">목록</button>
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
  <script src="js/bootstrap.js"></script>
  <script src="js/jquery.dcjqaccordion.2.7.js"></script>
  <script src="js/scripts.js"></script>
  <script src="js/jquery.slimscroll.js"></script>
  <script src="js/jquery.nicescroll.js"></script>
  <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
  <script src="js/jquery.scrollTo.js"></script>
</body>

</html>
