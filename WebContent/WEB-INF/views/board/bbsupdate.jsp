<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="../temp/sub_header.jsp"%>
<div style="width: 100%; height: 400px; background: url(${rPath}/images/sub-bg1.jpg); box-sizing: border-box; margin-top: 110px">
</div>
<section class="ftco-section ftco-degree-bg" style="margin-top: 30px;">
    <div class="container" role="main">
      <div class="mb-3">
        <label for="boardTitle">����</label>
        <input type="text" class="form-control" id="boardTitle" name="boardTitle" placeholder="������ �Է��� �ּ���">
      </div>
      <br>
      <div class="mb-3">
        <label for="reg_id">�ۼ���</label>
        <input type="text" class="form-control" id="reg_id" name="regId"  value="" readonly>
      </div>
      <br>
      <div class="mb-3">
        <label for="boardContent">����</label>
        <textarea class="form-control" rows="5" id="boardContent" name="boardContent" placeholder="������ �Է��� �ּ���"></textarea>
      </div>
      <br>
      <br>
      <div>
        <button onclick="registerAction()" type="button" class="btn btn-sm btn-primary" id="btnSave">����</button>
        <button onclick="location.href='/'" type="button" class="btn btn-sm btn-primary" id="btnList">���</button>
      </div>
    </div>
</section>
<%@include file="../temp/footer.jsp"%>