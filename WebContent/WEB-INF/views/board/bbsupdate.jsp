<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="../temp/sub_header.jsp"%>
<div style="width: 100%; height: 400px; background: url(${rPath}/images/sub-bg1.jpg); box-sizing: border-box; margin-top: 110px">
</div>
<section class="ftco-section ftco-degree-bg" style="margin-top: 30px;">
    <div class="container" role="main">
      <div class="mb-3">
        <label for="boardTitle">제목</label>
        <input type="text" class="form-control" id="boardTitle" name="boardTitle" placeholder="제목을 입력해 주세요">
      </div>
      <br>
      <div class="mb-3">
        <label for="reg_id">작성자</label>
        <input type="text" class="form-control" id="reg_id" name="regId"  value="" readonly>
      </div>
      <br>
      <div class="mb-3">
        <label for="boardContent">내용</label>
        <textarea class="form-control" rows="5" id="boardContent" name="boardContent" placeholder="내용을 입력해 주세요"></textarea>
      </div>
      <br>
      <br>
      <div>
        <button onclick="registerAction()" type="button" class="btn btn-sm btn-primary" id="btnSave">수정</button>
        <button onclick="location.href='/'" type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
      </div>
    </div>
</section>
<%@include file="../temp/footer.jsp"%>