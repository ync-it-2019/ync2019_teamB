<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>牛모임 :: 모임 정모 글쓰기</title>

<jsp:include page="/WEB-INF/views/front/include/cssLink.jsp" flush="true" />

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>

<meta charset="UTF-8">
</head>
<body>

<jsp:include page="/WEB-INF/views/front/include/meetingAppointmentHead.jsp" flush="true" />

<!-- 글쓰기 -->
<section>
	<div class="container">
		<form id="articleForm" role="form" action="/article" method="post">
			<br style="clear: both">
			<h3 style="margin-bottom: 25px;">정모 작성</h3>
			<div class="form-group">
				<input type="text" class="form-control" id="subject" name="subject" placeholder="제목을 입력해주세요" required>
			</div>
			<div class="form-group">
				<textarea class="form-control" id="summernote" name="content" placeholder="content" maxlength="140" rows="7"></textarea>
			</div>
			<script>
				$('#summernote').summernote({
					placeholder: '내용을 작성해주세요',
					tabsize: 2,
					height: 100
				});
			</script>
			<div class="input-group-css">
				<input type="text" class="form-control-appointment" id="subject" name="subject" placeholder="정모일을 입력해주세요" required>
				<input type="text" class="form-control-appointment" id="subject" name="subject" placeholder="정모 장소를 입력해주세요" required>
				<input type="text" class="form-control-appointment" id="subject" name="subject" placeholder="정모 최대인원을 입력해주세요" required>
			</div>
			
			
			<button type="submit" id="submit" name="submit" class="btn btn-primary pull-right" style="margin:10px"> 등록 </button>
			<button type="reset" class="btn btn-default pull-right" onClick="history.back();" style="margin:10px">취소</button>
		</form>
	</div>
</section>
<!-- //글쓰기 -->

</body>
</html>