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

    section {
        display: none;
        border-top: 1px solid #ddd;}

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
              <a href="./inquiry_list.html" class="active">
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
        <div class="mail-w3agile">
          <!-- page start-->
          <div class="row">
            <div class="col-sm-9 mail-w3agile">
              <section class="panel">
                <header class="panel-heading wht-bg">
                  <h4 class="gen-case">1:1 문의 관리
                  </h4>
                </header>
                <input id="tab1" type="radio" name="tabs" checked> <!--디폴트 메뉴-->
                <label class="tab" for="tab1">전체</label>

                <input id="tab2" type="radio" name="tabs">
                <label class="tab" for="tab2">문의중</label>

                <input id="tab3" type="radio" name="tabs">
                <label class="tab" for="tab3">답변완료</label>

                <section id="content1">
                  <div class="panel-body minimal"style="padding:0px 15px 0px 15px;">
                    <div class="table-inbox-wrap ">
                      <table class="table table-inbox table-hover" style="table-layout: fixed">
                        <tbody>
                          <thead>
                            <tr>
                              <th style="width:60px;">No</th>
                              <th style="width:140px;">카테고리</th>
                              <th style="width:440px; text-align:center;">제목</th>
                              <th data-breakpoints="xs">작성자</th>
                              <th data-breakpoints="xs">작성일</th>
                              <th data-breakpoints="xs sm md" data-title="DOB" class="text-right">비고</th>
                            </tr>
                          </thead>
                          <tr class="unread" onClick="location.href='./inquiry_detail.html'">
                            <td class="inbox-small-cells text_limit">1</td>
                            <td class="inbox-small-cells text_limit">모임</td>
                            <td class="view-message dont-show text_limit">운영하던 모임이 정지되었습니다.</td>
                            <td class="view-message inbox-small-cells text_limit">서영준</td>
                            <td class="view-message inbox-small-cells text_limit">2019-10-28</td>
                            <td class="view-message text-right">문의중</td>
                          </tr>
                          <tr class="unread" onClick="location.href='./inquiry_detail.html'">
                            <td class="inbox-small-cells text_limit">2</td>
                            <td class="inbox-small-cells text_limit"></td>
                            <td class="view-message dont-show text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message text-right"></td>
                          </tr>
                          <tr class="unread" onClick="location.href='./inquiry_detail.html'">
                            <td class="inbox-small-cells text_limit">3</td>
                            <td class="inbox-small-cells text_limit"></td>
                            <td class="view-message dont-show text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message text-right"></td>
                          </tr>
                          <tr class="unread" onClick="location.href='./inquiry_detail.html'">
                            <td class="inbox-small-cells text_limit">4</td>
                            <td class="inbox-small-cells text_limit"></td>
                            <td class="view-message dont-show text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message text-right"></td>
                          </tr>
                          <tr class="unread" onClick="location.href='./inquiry_detail.html'">
                            <td class="inbox-small-cells text_limit">5</td>
                            <td class="inbox-small-cells text_limit"></td>
                            <td class="view-message dont-show text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message text-right"></td>
                          </tr>
                          <tr class="unread" onClick="location.href='./inquiry_detail.html'">
                            <td class="inbox-small-cells text_limit">6</td>
                            <td class="inbox-small-cells text_limit"></td>
                            <td class="view-message dont-show text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message text-right"></td>
                          </tr>
                          <tr class="unread" onClick="location.href='./inquiry_detail.html'">
                            <td class="inbox-small-cells text_limit">7</td>
                            <td class="inbox-small-cells text_limit"></td>
                            <td class="view-message dont-show text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message text-right"></td>
                          </tr>
                          <tr class="unread" onClick="location.href='./inquiry_detail.html'">
                            <td class="inbox-small-cells text_limit">8</td>
                            <td class="inbox-small-cells text_limit"></td>
                            <td class="view-message dont-show text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message text-right"></td>
                          </tr>
                          <tr class="unread" onClick="location.href='./inquiry_detail.html'">
                            <td class="inbox-small-cells text_limit">9</td>
                            <td class="inbox-small-cells text_limit"></td>
                            <td class="view-message dont-show text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message text-right"></td>
                          </tr>
                          <tr class="unread" onClick="location.href='./inquiry_detail.html'">
                            <td class="inbox-small-cells text_limit">10</td>
                            <td class="inbox-small-cells text_limit"></td>
                            <td class="view-message dont-show text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message inbox-small-cells text_limit"></td>
                            <td class="view-message text-right"></td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
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
  <script src="js/bootstrap.js"></script>
  <script src="js/jquery.dcjqaccordion.2.7.js"></script>
  <script src="js/scripts.js"></script>
  <script src="js/jquery.slimscroll.js"></script>
  <script src="js/jquery.nicescroll.js"></script>
  <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
  <script src="js/jquery.scrollTo.js"></script>
</body>

</html>
