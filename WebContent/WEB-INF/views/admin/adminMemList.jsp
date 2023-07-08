<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<title>Insert title here</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<style>
		.searchCls{color: orange; font-weight: bolder;}
	</style>
</head>
<body>
	<table class="table table-striped">
	  <thead>
	    <tr style="text-align: center;">
	      <th scope="col">번호</th>
	      <th scope="col">아이디</th>
	      <th scope="col">닉네임</th>
	      <th scope="col">이름</th>
	      <th scope="col">이메일</th>
	      <th scope="col">비밀번호</th>
	      <th scope="col">아이피</th>
	      <th scope="col">가입일</th>
	      <th scope="col">등급</th>
	    </tr>
	  </thead>
	  <tbody style="text-align: center;">
			<%-- for start 
				${vo.속성}, ${map.key}
				List<BoardVO> list => BoardVO => e --%>
				<c:forEach var="e" items="${listv}">
					<tr>
						<th>${e.mem_num}</th>
						<td>${e.mem_id}</td>
						<td>${e.mem_nick}</td>
						<td>${e.mem_name}</td>
						<td>${e.mem_email}</td>
						<td>${e.mem_pwd}</td>
						<td>${e.mem_ip}</td>
						<td>${e.mem_date}</td>
						<td>${e.mem_grade}</td>
					</tr>
				</c:forEach>
			<%-- for end --%>
		</tbody>
		<tfoot>
			<%@include file="../temp/pageProcess.jsp" %>
			<%-- 검색영역 --%>
				<tr>
					<th colspan="6">
						<%-- 기존의 리스트 모델로 요청을 보낸다. --%>
						<form class="d-flex" method="post" action="adminMemberList">
							<select class="form-control btn-mini" id="searchType" name="searchType"
								style="margin-left: 120px;">
								<option value="">검색</option>
								<option value="1">아이디</option>
								<option value="2">닉네임</option>
								<option value="3">이메일</option>
							</select> 
							<input class="form-control me-2" type="text" id="searchValue" name="searchValue"
								placeholder="Search.." style="width: 300px">
							<button class="btn btn-outline-secondary" type="submit">Search</button>
						</form>
					</th>
				</tr>
		</tfoot>
	</table>
</body>
</html>