<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
</head>

<body>
  <section id="container">
    <jsp:include page="../includes/manager_list_header.jsp" flush="true" />
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
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'">서영준</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/manager/detail'">운영자_a</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'">2019-10-28</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">2</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'">조중현</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/manager/detail'">운영자_b</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'">2019-10-28</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">3</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'">김상훈</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/manager/detail'">운영자_c</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'">2019-10-28</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">4</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'">장윤석</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/manager/detail'">운영자_d</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'">2019-10-28</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">5</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'">이주현</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/manager/detail'">운영자_e</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'">2019-10-28</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">6</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/manager/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">7</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/manager/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">8</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/manager/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">9</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/manager/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td class="inbox-small-cells">10</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/manager/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/manager/detail'"></td>
                        </tr>
                      </tbody>
                    </table>
                    <div style="margin:10px 20px 0 0; text-align:right;">
                      <button type="button" class="btn btn-default" onClick="location.href='/admin/manager/create'">등록</button>
                      <button type="button" class="btn btn-default" onClick="location.href='#'">제거</button>
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
  <script src="/resources/js/admin/bootstrap.js"></script>
  <script src="/resources/js/admin/jquery.dcjqaccordion.2.7.js"></script>
  <script src="/resources/js/admin/scripts.js"></script>
  <script src="/resources/js/admin/jquery.slimscroll.js"></script>
  <script src="/resources/js/admin/jquery.nicescroll.js"></script>
  <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/resources/js/admin/flot-chart/excanvas.min.js"></script><![endif]-->
  <script src="/resources/js/admin/jquery.scrollTo.js"></script>
</body>

</html>
