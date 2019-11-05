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
    <jsp:include page="../includes/event_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="mail-w3agile">
          <!-- page start-->
          <div class="row">
            <div class="col-sm-9 mail-w3agile">
              <section class="panel">
                <header class="panel-heading wht-bg">
                  <h4 class="gen-case">이벤트 관리
                  </h4>
                </header>
                <div class="panel-body minimal">
                  <div class="table-inbox-wrap ">
                    <table class="table table-inbox table-hover" style="table-layout: fixed">
                      <tbody>
                        <thead>
                          <tr>
                            <th data-breakpoints="xs" style="width:30px;"></th>
                            <th style="width:60px;">No</th>
                            <th>작성자</th>
                            <th style="width:330px; text-align:center;">제목</th>
                            <th data-breakpoints="xs" style="width:230px; text-align:center;">이벤트 기간</th>
                            <th data-breakpoints="xs">작성일</th>
                            <th data-breakpoints="xs sm md" data-title="DOB" class="text-right">비고</th>
                          </tr>
                        </thead>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td>1</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'">운영자_a</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/event/detail'">행복한 소모임인, 즐거운 소모임 되기!</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'">2019-10-28 ~ 2020-01-01</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'">2019-10-28</td>
                          <td class="view-message text-right" onClick="location.href='/admin/event/detail'">진행중</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td>2</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'">운영자_c</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/event/detail'">11월! 수능 대박 기원 이벤트</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'">2019-11-01 ~ 2019-11-15</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'">2019-11-01</td>
                          <td class="view-message text-right" onClick="location.href='/admin/event/detail'">진행중</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td>3</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'">운영자_b</td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/event/detail'">현충일 기념 이벤트!</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'">2019-06-06 ~ 2019-06-30</td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'">2019-05-28</td>
                          <td class="view-message text-right" onClick="location.href='/admin/event/detail'">종료</td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td>4</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message text-right" onClick="location.href='/admin/event/detail'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td>5</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message text-right" onClick="location.href='/admin/event/detail'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td>6</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message text-right" onClick="location.href='/admin/event/detail'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td>7</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message text-right" onClick="location.href='/admin/event/detail'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td>8</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message text-right" onClick="location.href='/admin/event/detail'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td>9</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message text-right" onClick="location.href='/admin/event/detail'"></td>
                        </tr>
                        <tr class="unread">
                          <td class="inbox-small-cells">
                            <input type="checkbox" class="mail-checkbox">
                          </td>
                          <td>10</td>
                          <td class="inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message dont-show text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message inbox-small-cells text_limit" onClick="location.href='/admin/event/detail'"></td>
                          <td class="view-message text-right" onClick="location.href='/admin/event/detail'"></td>
                        </tr>
                      </tbody>
                    </table>
                    <div style="margin:10px 20px 0 0; text-align:right;">
                      <button type="button" class="btn btn-default" onClick="location.href='/admin/event/create'">글쓰기</button>
                      <button type="button" class="btn btn-default" onClick="location.href='/admin/event/list'">삭제</button>
                    </div>
                  </div>
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
