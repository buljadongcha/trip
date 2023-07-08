<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/sub_header.jsp"%>
<div style="width: 100%; height: 400px; background: url(${rPath}/images/sub-bg1.jpg); box-sizing: border-box; margin-top: 110px">
</div>
<section class="ftco-section ftco-degree-bg" style="margin-top: 30px;">
	<nav class="container">
			<table style="text-align: center;" class="table table-hover">
				<colgroup>
					<col width="2%" />
					<col width="5%" />
					<col width="20%" />
					<col width="5%" />
					<col width="5%" />
					<col width="5%" />
					<col width="5%" />
				</colgroup>
				<thead>
					<tr>
						<th>
							<label class="checkbox-inline">
								<input type="checkbox" id="allCheckBox" class="chk">
							</label>
						</th>
						<th>��ȣ</th>
						<th>����</th>
						<th>�ۼ���</th>
						<th>��ȸ��</th>
						<th>�ۼ���¥</th>
						<th>������¥</th>
					</tr>
				</thead>

				<tbody>
				<c:forEach var="e" items="${list1 }">
					<tr>			
						<td>
							<label class="checkbox-inline">
								<input type="checkbox" class="chk" name="chk" value="">
							</label>
						<td>${e.fb_num }</td>
						<td>
							<a style="color: blue; font-weight: 700;" href="boardDetail?num=${e.fb_num }">${e.fb_subject }</a>
						</td>
						<td>${e.fb_writer }</td>
						<td>${e.fb_hit }</td>
						<td>${e.fb_date }</td>
						<td>${e.fb_update }</td>
					</tr>
				</c:forEach>
				</tbody>
			<tfoot>
				<%@include file="../temp/pageProcess.jsp" %>
				<%-- �˻����� --%>
					<tr>
						<th colspan="7">
							<%-- ������ ����Ʈ �𵨷� ��û�� ������. --%>
							<form class="d-flex" method="post" action="boardlist">
								<select class="form-control btn-mini" id="searchType" name="searchType"
									style="margin-left: 120px;">
									<option value="">�˻�</option>
									<option value="1">�ۼ���</option>
									<option value="2">����</option>
									<option value="3">����</option>
								</select> 
								<input class="form-control me-2" type="text" id="searchValue" name="searchValue"
									placeholder="Search.." style="width: 300px">
								<button class="btn btn-outline-secondary" type="submit">Search</button>
							</form>
						</th>
					</tr>
			</tfoot>
				 
			</table>
			<br>
			<c:choose>
				<c:when test="${sessionScope.sessionID == null }">
					<!-- ADMIN �����ϰ�쿡�� �۾��� �������� -->
					<div class="d-flex justify-content-end">
						<button class="btn btn-outline-secondary" type="button" id="nologin" onclick="location='boardwrite'">�۾���</button>
					</div>
					<br>
				</c:when>
				<c:when test="${sessionScope.sessionID != null }">
					<!-- ADMIN �����ϰ�쿡�� �۾��� �������� -->
					<div class="d-flex justify-content-end">
						<!-- a class="btn btn-danger">�ۻ���</a-->
						<button class="btn btn-outline-secondary" type="button" onclick="location='boardwrite'">�۾���</button>
					</div>
					<br>
				</c:when>
			</c:choose>
	</nav>
</section>

<script>
$(function(){
	$('#nologin').click(function(e) {
		e.preventDefault();
		alert('�α��� �� ��� �ۼ������մϴ�.');
		location="<%=application.getContextPath()%>/tripmember/memForm";
	});
});
</script>
<%@include file="../temp/footer.jsp"%>