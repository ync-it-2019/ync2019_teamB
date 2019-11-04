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
              <a href="./meeting_list.html" class="active">
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
              <a href="./javascript:;">
                <i class="fa fa-tasks"></i>
                <span>관리자 관리</span>
              </a>
              <ul class="sub">
                <li><a href="./manager_create.html">관리자 등록</a></li>
                <li><a href="./manager_list.html">관리자 조회</a></li>
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
          <h4 class="gen-case">모임 관리 > 모임 정보</h4>
        </header>
        <div class="form-w3layouts">
          <!-- page start-->
          <!-- page start-->
          <div class="row">
            <div class="col-lg-12">
              <section class="panel">
                <header class="panel-heading">
                  모임정보
                </header>
                <div class="panel-body">
                  <form class="form-horizontal bucket-form" method="get">
                    <div class="form-group">
                      <img class="meeting_img" src="images/g8.jpg" alt="">
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">모임명</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control cursor" value="우리동네 감주대장" onClick="location.href='#'" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">모임장</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control cursor" value="ay9564"  onClick="location.href='#'" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">관심분야</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="갬성..." readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">활동지역</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="니맘속..." readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">모임 소개</label>
                      <div class="col-sm-6">
                        <textarea name="name" class="form-control" rows="8" cols="80" readonly>그대는 꽃인가.. 술인가.. 왜 나를 취하게 하는가...
                        </textarea>
                      </div>
                    </div>

                    <div class="form-group">
                      <div class="mt_member_num_title">
                        <div style="padding-left:150px;"><h3 class="mt_member_display">맴버 정보</h3><p class="text-right mt_member_display" style="width:180px;"> 인원: 8 / 40</p></div>
                      </div>
                      <label class="col-sm-3 control-label"></label>
                      <div class="col-sm-6 border">
                        <table class="table">
                          <thead>
                            <tr>
                              <th>No</th>
                              <th data-breakpoints="xs">이름</th>
                              <th >아이디</th>
                              <th class="text-right">직급</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr data-expanded="true" class="unread cursor" onClick="location.href='./member_detail.html'">
                              <td>1</td>
                              <td>서영준</td>
                              <td>ay9564</td>
                              <td class="text-right">모임장</td>
                            </tr>
                            <tr class="cursor" onClick="location.href='./member_detail.html'">
                              <td>2</td>
                              <td>Elodia</td>
                              <td>Elodia</td>
                              <td class="text-right">모임원</td>
                            </tr>
                            <tr class="cursor" onClick="location.href='./member_detail.html'">
                              <td>3</td>
                              <td>Raeann</td>
                              <td>Raeann</td>
                              <td class="text-right">모임원</td>
                            </tr>
                            <tr class="cursor" onClick="location.href='./member_detail.html'">
                              <td>4</td>
                              <td>Junie</td>
                              <td>Junie</td>
                              <td class="text-right">모임원</td>
                            </tr>
                            <tr class="cursor" onClick="location.href='./member_detail.html'">
                              <td>5</td>
                              <td>Solomon</td>
                              <td>Solomon</td>
                              <td class="text-right">모임원</td>
                            </tr>
                            <tr class="cursor" onClick="location.href='./member_detail.html'">
                              <td>6</td>
                              <td>Bar</td>
                              <td>Bar</td>
                              <td class="text-right">모임원</td>
                            </tr>
                            <tr class="cursor" onClick="location.href='./member_detail.html'">
                              <td>7</td>
                              <td>Usha</td>
                              <td>Usha</td>
                              <td class="text-right">모임원</td>
                            </tr>
                            <tr class="cursor" onClick="location.href='./member_detail.html'">
                              <td>8</td>
                              <td>Lorriane</td>
                              <td>Lorriane</td>
                              <td class="text-right">모임원</td>
                            </tr>
                          </tbody>
                        </table>
                        <footer>
                          <div class="row">
                            <div class="center">
                              <ul class="pagination pagination-sm m-t-none m-b-none">
                                <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
                                <li><a href="">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">4</a></li>
                                <li><a href="">5</a></li>
                                <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
                              </ul>
                            </div>
                          </div>
                        </footer>
                      </div>
                    </div>
                  </form>
                </div>
              </section>
            </div>
          </div>
          <button type="button" class="btn btn-default" onClick="location.href='./meeting_list.html'">목록</button>
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
