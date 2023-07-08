<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../temp/header.jsp"%>
<article>
	<header style="color: white;">정보확인 Page</header>
	<div class="container">
		<p>회원가입축하</p>
		<hr>
		<h2>${vo.mem_name}의 정보 확인</h2>
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