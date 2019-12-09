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
  <link href="/resources/css/admin/font-awesome.css" rel="stylesheet">
  <link href="/resources/css/admin/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/css/admin/style.css" rel='stylesheet' type='text/css' />
  <link href="/resources/css/admin/admin_style.css" rel="stylesheet">
  <!-- //bootstrap-css -->
  <script src="/resources/js/admin/jquery2.0.3.min.js"></script>

</head>

<body>
  <section id="container">
    <jsp:include page="../includes/member_header.jsp" flush="true" />
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <header class="panel-heading wht-bg">
          <h4 class="gen-case">회원 관리 > 회원 정보</h4>
        </header>
        <div class="form-w3layouts">
          <!-- page start-->
          <!-- page start-->
          <div class="row">
            <div class="col-lg-12">
              <section class="panel">
                <header class="panel-heading">
                  	회원정보
                </header>
                <div class="panel-body">
                  <form class="form-horizontal bucket-form" method="get">
                    <div class="form-group">
                      <img class="member_img" src="/resources/img/no_img.jpg" alt="">
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">이름</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="${member.name}" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">아이디</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="${member.userid}" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">비밀번호</label>
                      <div class="col-sm-6">
                        <input type="password" class="form-control round-input" value="${member.userpw}" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">전화번호</label>
                      <div class="col-sm-6">
                        <input class="form-control" type="text" value="${member.phone}" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class=" col-sm-3 control-label">이메일</label>
                      <div class="col-lg-6">
                        <p class="form-control-static"><c:out value="${member.name}" /></p>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">관심분야</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="${member.hobby}" readonly>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label">활동지역</label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" value="${member.adress}" readonly>
                      </div>
                    </div>
                  </form>
                </div>


                <div class="panel-body">
                  <div class="position-center ">
                    <div class="text-center">
                      <a href="#myModal" data-toggle="modal" class="btn btn-success">
                        가입한 소모임
                      </a>
                      <a href="#myModal-1" data-toggle="modal" class="btn btn-warning">
                        작성 글
                      </a>
                      <a href="#myModal-2" data-toggle="modal" class="btn btn-danger">
                        작성 댓글
                      </a>
                    </div>

                    <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                            <h4 class="modal-title">가입한 소모임</h4>
                          </div>
                          <div class="modal-body">

                            <form role="form">
                              <table class="table table-inbox table-striped b-t b-light table-hover">
                                <thead>
                                  <tr>
                                    <th style="width:20px;">
                                    </th>
                                    <th>모임명</th>
                                    <th>모임 소개</th>
                                    <th>활동분야</th>
                                    <th>활동지역</th>
                                    <th style="width:30px;"></th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">Idrawfast</td>
                                    <td onClick="location.href='#'">Idrawfast prototype design prototype item.PrHelpText1 design Idrawfast prototype</td>
                                    <td onClick="location.href='#'"><span class="text-ellipsis">{item.PrHelpText1}</span></td>
                                    <td onClick="location.href='#'"><span class="text-ellipsis">{item.PrHelpText1}</span></td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">Idrawfast prototype</td>
                                    <td onClick="location.href='#'">Idrawfast prototype design prototype</td>
                                    <td onClick="location.href='#'"><span class="text-ellipsis">{item.PrHelpText1}</span></td>
                                    <td onClick="location.href='#'"><span class="text-ellipsis">{item.PrHelpText1}</span></td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">Idrawfast prototype</td>
                                    <td onClick="location.href='#'">Idrawfast prototype design prototype</td>
                                    <td onClick="location.href='#'"><span class="text-ellipsis">{item.PrHelpText1}</span></td>
                                    <td onClick="location.href='#'"><span class="text-ellipsis">{item.PrHelpText1}</span></td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">Idrawfast prototype</td>
                                    <td onClick="location.href='#'">Idrawfast prototype design prototype</td>
                                    <td onClick="location.href='#'"><span class="text-ellipsis">{item.PrHelpText1}</span></td>
                                    <td onClick="location.href='#'"><span class="text-ellipsis">{item.PrHelpText1}</span></td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">Idrawfast prototype</td>
                                    <td onClick="location.href='#'">Idrawfast prototype design prototype</td>
                                    <td onClick="location.href='#'"><span class="text-ellipsis">{item.PrHelpText1}</span></td>
                                    <td onClick="location.href='#'"><span class="text-ellipsis">{item.PrHelpText1}</span></td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  </tobody>
                              </table>
                              <footer class="panel-footer">
                                <div class="row">
                                  <div class="col-sm-style text-right text-center-xs">
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
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                            <h4 class="modal-title">작성 글</h4>
                          </div>
                          <div class="modal-body">
                            <form class="form-horizontal" role="form">
                              <table class="table table-inbox table-striped b-t b-light table-hover">
                                <thead>
                                  <tr>
                                    <th style="width:20px;">
                                    </th>
                                    <th>제목</th>
                                    <th>내용</th>
                                    <th>위치</th>
                                    <th>작성일자</th>
                                    <th style="width:30px;"></th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">안녕하세요 가입했어요.</td>
                                    <td onClick="location.href='#'">바보바보 낚였지 가입 안했는데~~</td>
                                    <td><a href='https://homzzang.com' target='_blank'>우리동네 음악대장 > 자유게시판</a></td>
                                    <td onClick="location.href='#'">2019.10.28</td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">안녕하세요 가입했어요.</td>
                                    <td onClick="location.href='#'">바보바보 낚였지 가입 안했는데~~</td>
                                    <td><a href='https://homzzang.com' target='_blank'>우리동네 음악대장 > 자유게시판</a></td>
                                    <td onClick="location.href='#'">2019.10.28</td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">안녕하세요 가입했어요.</td>
                                    <td onClick="location.href='#'">바보바보 낚였지 가입 안했는데~~</td>
                                    <td><a href='https://homzzang.com' target='_blank'>우리동네 음악대장 > 자유게시판</a></td>
                                    <td onClick="location.href='#'">2019.10.28</td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  </tobody>
                              </table>
                              <footer class="panel-footer">
                                <div class="row">
                                  <div class="col-sm-style text-right text-center-xs">
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
                            </form>

                          </div>

                        </div>
                      </div>
                    </div>
                    <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-2" class="modal fade">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                            <h4 class="modal-title">작성 댓글</h4>
                          </div>
                          <div class="modal-body">
                            <form class="form-inline" role="form">
                              <table class="table table-inbox table-striped b-t b-light table-hover">
                                <thead>
                                  <tr>
                                    <th style="width:20px;">
                                    </th>
                                    <th>댓글 내용</th>
                                    <th>작성일자</th>
                                    <th style="width:30px;"></th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">어쩌라고 ㅡㅡ 넌 병의 신이니?</td>
                                    <td onClick="location.href='#'">2019.10.28</td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">ㅋㅋㅋ 넘 재밌네요~~>_<##</td> <td onClick="location.href='#'">2019.10.28</td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">키듴키듴키듴키듴</td>
                                    <td onClick="location.href='#'">2019.10.28</td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">ㅎㅎㅎㅎㅎㅎ</td>
                                    <td onClick="location.href='#'">2019.10.28</td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                                    <td onClick="location.href='#'">중현이 다리 백만불짜리 다리</td>
                                    <td onClick="location.href='#'">2019.10.28</td>
                                    <td>
                                      <a href="" class="active" ui-toggle-class=""></i><i class="fa fa-times text-danger text"></i></a>
                                    </td>
                                  </tr>
                                  </tobody>
                              </table>
                              <footer class="panel-footer">
                                <div class="row">
                                  <div class="col-sm-style text-right text-center-xs">
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
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </div>
          <button type="button" class="btn btn-default" onClick="location.href='/admin/member/list'">목록</button>
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
