<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="../temp/sub_header.jsp"%>
<div style="width: 100%; height: 400px; background: url(${rPath}/images/sub-bg1.jpg); box-sizing: border-box; margin-top: 110px">
</div>
<section class="ftco-section ftco-degree-bg" style="margin-top: 30px;">
	<div class="container" role="main">
			<form method="post" action="fboardInsert" autocomplete="off">
			<input type="hidden" name="fb_reip" value="<%=request.getRemoteAddr()%>">
		<div class="mb-3">
			<label for="boardTitle">제목</label> <input type="text"
				class="form-control" id="subject" name="fb_subject"
				placeholder="제목을 입력해 주세요">
		</div>
		<br>
		<div class="mb-3">
			<label for="reg_id">작성자</label> 
			<input type="text" name="fb_writer" class="form-control" id="fb_writer" value="${sessionScope.sessionNick}" readonly="readonly">
		</div>
		<br>
		<div class="mb-3">
			<label for="boardContent">내용</label>
			<textarea class="form-control" rows="5" id="content"
				name="fb_content" placeholder="내용을 입력해 주세요"></textarea>
		</div>
		<!-- div class="row mb-3">
				<label for="pwd" class="col-sm-2 col-form-label">비밀번호</label>
				<div class="col-sm-10">
					<input type="password" name="pwd" class="form-control" id="pwd">
				</div>
			</div-->
		<br> <br>
		<div class="container text-center" role="group">
				<input type="submit" value="글작성" class="btn btn-primary">
		   		<input type="button" value="리스트" class="btn btn-danger" onclick="location='boardlist'">
			</div>
		</form>
	</div>
	
</section>
<%@include file="../temp/footer.jsp"%>