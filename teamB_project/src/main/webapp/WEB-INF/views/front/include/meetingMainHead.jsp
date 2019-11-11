<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 소모임 페이지 상단 이미지 / 이름 -->
	<Header class="meeting-page-name-space">
		<div class="meeting-overlay py-5">
			<div class="container py-lg-5">
				<div class="text-center py-5">
	        <div class="meeting-name-style">
						흑우들의 모임
					</div>
				</div>
			</div>
		</div>
	</Header>
	<!-- //소모임 페이지 상단 이미지 / 이름 -->
	
	<!-- 소모임 메뉴 -->
	<section>
	  <div class="container">
	    <div id="meeting-menu">
	      <ul class="menu info-row">
	        <div class="meeting-menu1">
	          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href="./main">메인</a></li>
	          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./board/list">게시판</a></li>
	          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./appointment/list">정모</a></li>
	        </div>
	        <div class="meeting-menu2">
	          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./meetingCreat">수정하기</a>
	            <!-- <ul>
	              <li>정모 이름 수정</li>
	              <li>정모 소개 수정</li>
	            </ul> -->
	          </li>
	          <li class="mr-3 ml-3 mt-3 mb-3"><a href="#">가입하기</a></li>
	        </div>
	      </ul>
	    </div>
	  </div>
	</section>
	<!-- //소모임 메뉴 -->
</body>
</html>