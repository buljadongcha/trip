<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources" />
<%@include file="../temp/sub_header.jsp"%>
<div style="width: 100%; height: 400px; background: url(${rPath}/images/sub-bg1.jpg); box-sizing: border-box; margin-top: 110px">
</div>
<article>
	<div class="container">
		<div style="padding: 20px 10px;">
			<div style="margin-left: 10px">
				<p>
					<span>��ȣ :</span> ${detail1.fb_num }
				</p>
				<p style="font-size: 20px; font-weight: bold; margin: 0">${detail1.fb_subject}</p>
				<p>${detail1.fb_date}</p>
				<p style="border-bottom: 1px solid #bcbcbc; padding-bottom: 10px;"><span>�ۼ��� :</span> ${detail1.fb_writer}</p>
				<p>${detail1.fb_content}</p>
			</div>
			<p style="border: 1px solid #bcbcbc; padding: 10px 10px"><span>������ :</span> ${detail1.fb_reip}</p>
			<p style="border: 1px solid #bcbcbc; padding: 10px 10px"><span>������¥ :</span> ${detail1.fb_update}</p>
		</div>
		<div style="text-align: right;">
			<c:choose>
				<c:when test="${sessionScope.sessionNick == detail1.fb_writer}">
					<input class="btn" id="delbutton" type="button" value="����">
					<button class="btn" onclick="location='fbmod?num=${detail1.fb_num}'">����</button>
					<button class="btn btn-danger" type="button" onclick="location='boardlist'">����Ʈ</button>
				</c:when>
				<c:when test="${sessionScope.sessionNick != detail1.fb_writer }">
					<button class="btn btn-danger" type="button" onclick="location='boardlist'">����Ʈ</button>
				</c:when>
				<c:when test="${sessionScope.sessionNick != null }">
					<button class="btn btn-danger" type="button" onclick="location='boardlist'">����Ʈ</button>
				</c:when>
			</c:choose>
		</div>
		<script>
			$(function() {
				$('#delbutton').click(function(e) {
					console.log("����");
					e.preventDefault();
					//alert('test');
					if (confirm("�����Ͻðڽ��ϱ�?")) {
						location = "fbdel?num=${detail1.fb_num}";

					} else {

					}
				});
			});
		</script>
		
		<!-- ��� �� ����   -->
		<div>
			<h2>My Comment</h2>
			<form action="fCommInsert" method="post" enctype="multipart/form-data" id="bcominsert">
				<input type="hidden" id="reip" name="fbc_reip" value="<%=request.getRemoteAddr()%>"> <input type="hidden" id="ucode" name="fbc_ucode" value="${detail1.fb_num }">
				<div class="form-group">
					<label for="uwriter">writer</label>
					<input type="text" class="form-control" id="uwriter" value="${sessionScope.sessionNick}" readonly="readonly" name="fbc_uwriter" maxlength="20" required="required" pattern=".{4,100}">
				</div>
				<div class="form-group">
					<label for="ucontent">����</label>
					<textarea class="form-control" rows="5" id="ucontent" name="fbc_ucontent" placeholder="content"></textarea>
				</div>
				<div class="form-group" style="text-align: right; margin-top: 10px;">
					<button id="sendComm" type="submit" class="btn btn-primary">��۾���</button>
				</div>
			</form>
		</div>
		<!-- ��� �� ����  �� -->

		<!-- c�ݺ� ���� -->
		<table class="table table-bordered" id="upboardTable">
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>�ۼ���</th>
					<th>����</th>
					<th>������</th>
					<th>��¥</th>
				</tr>
			</thead>
			<tbody id="comm">
				<c:forEach var="e" items="${listComm1}">
					<tr>
						<td>${e.fbc_num }</td>
						<td>${e.fbc_uwriter}</td>
						<td>${e.fbc_ucontent }</td>
						<td>${e.fbc_reip}</td>
						<td>${e.fbc_uregdate}</td>
					</tr>
				</c:forEach>
				<%-- for end --%>
			</tbody>
			<tfoot>
				<%-- page���� --%>
				<%@include file="../temp/pageProcess.jsp"%>

				<%-- �˻����� --%>

			</tfoot>
		</table>
	</div>
</article>
<%@include file="../temp/footer.jsp"%>