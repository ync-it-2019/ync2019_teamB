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
        <div class="mail-w3agile">
          <!-- page start-->
          <div class="row">
            <div class="col-sm-9 mail-w3agile">
              <section class="panel">
                <header class="panel-heading wht-bg">
                  <h4 class="gen-case">관리자 계정 조회</h4>
                </header>
                <div class="panel-body minimal">
                  <div class="table-inbox-wrap ">
                    <table class="table table-inbox table-hover" style="table-layout: fixed">
                      <tbody>
                        <thead>
                          <tr>
                            <th data-breakpoints="xs" style="width:30px;"></th>
                            <th data-breakpoints="xs" style="width:60px;">No</th>
                            <th>이름</th>
                            <th>아이디</th>
                            <th data-breakpoints="xs" style="width:230px;">등록일</th>
                          </tr>
                        </thead>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">1</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'">서영준</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='./manager_detail.html'">운영자_a</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'">2019-10-28</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">2</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'">조중현</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='./manager_detail.html'">운영자_b</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'">2019-10-28</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">3</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'">김상훈</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='./manager_detail.html'">운영자_c</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'">2019-10-28</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">4</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'">장윤석</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='./manager_detail.html'">운영자_d</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'">2019-10-28</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">5</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'">이주현</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='./manager_detail.html'">운영자_e</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'">2019-10-28</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">6</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='./manager_detail.html'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">7</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='./manager_detail.html'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">8</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='./manager_detail.html'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">9</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='./manager_detail.html'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">10</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='./manager_detail.html'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='./manager_detail.html'"></td>
                        </tr>
                      </tbody>
                    </table>
                    <div style="margin:10px 20px 0 0; text-align:right;">
                      <button type="button" class="btn btn-default" onClick="location.href='./manager_create.html'">등록</button>
                      <button type="button" class="btn btn-default" onClick="location.href='./manager_list.html'">제거</button>
                    </div>
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
  <script src="js/bootstrap.js"></script>
  <script src="js/jquery.dcjqaccordion.2.7.js"></script>
  <script src="js/scripts.js"></script>
  <script src="js/jquery.slimscroll.js"></script>
  <script src="js/jquery.nicescroll.js"></script>
  <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
  <script src="js/jquery.scrollTo.js"></script>
</body>

</html>
