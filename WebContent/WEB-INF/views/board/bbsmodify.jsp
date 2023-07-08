<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="fbUpdate">
		<input type="hidden" name="fb_num" value="${vo.fb_num}"> <input
			type="hidden" name="fb_reip" value="<%=request.getRemoteAddr()%>">


		<div class="row mb-3">
			<label for="subject" class="col-sm-2 col-form-label">제목</label>
			<div class="col-sm-10">
				<input type="text" name="fb_subject" class="form-control" id="subject"
					value="${vo.fb_subject}">
			</div>
		</div>

		<div class="row mb-3">
			<label for="writer" class="col-sm-2 col-form-label">작성자</label>
			<div class="col-sm-10">
				<input type="text" name="fb_writer" class="form-control" id="writer"
					value="${vo.fb_writer}">
			</div>
		</div>

		<div class="row">
			<label for="content" class="col-sm-2 col-form-label">내용</label>
			<div class="col-sm-10">
				<textarea name="fb_content" rows="10" cols="50" id="content">${vo.fb_content}</textarea>
			</div>
		</div>


		<div class="container text-center" role="group">
			<button class="btn btn-primary" type="submit">글작성</button>
			<button class="btn btn-danger" type="button"
				onclick="location='boardlist'">리스트</button>
		</div>

	</form>
</body>
</html>