<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../temp/header.jsp"%>
<article>
	<header style="color: white;">����Ȯ�� Page</header>
	<div class="container">
		<p>ȸ����������</p>
		<hr>
		<h2>${vo.mem_name}�� ���� Ȯ��</h2>
		<ul style="list-style: none;">
			<li>${vo.mem_id}</li>
			<li>${vo.mem_pwd}</li>
			<li>${vo.mem_name}</li>
			<li>${vo.mem_email}</li>
			<li>${vo.mem_nick}</li>
		</ul>
	</div>
</article>
<%@include file="../temp/footer.jsp"%>