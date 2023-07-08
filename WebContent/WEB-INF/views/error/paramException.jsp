<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../temp/header.jsp" %>

<article>
	<header style="color: white;">Main Page</header>
	<ul class="list-unsyled">
		<li class="border-top my-3">kosmo132기 메인 페이지 입니다.</li>
	</ul>
	<div class="container">
		<h2 style="color: red;">${emsg }</h2>
	</div>
</article>
<%@include file="../temp/footer.jsp" %>