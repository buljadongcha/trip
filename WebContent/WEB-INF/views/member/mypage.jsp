<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/sub_header.jsp"%>
<article>
	<header>My Page</header>
	<ul class="list-unstyled">
	<li class="border-top my-3">Board</li>
	</ul>
	<div class="container">
	<h3>${vo.mem_name}님 반갑습니다.</h3>
	<p>번호 : ${vo.mem_num }</p>
	<p>아이디 : ${vo.mem_id }</p>
	<p>닉네임 : ${vo.mem_nick }</p>
	<p>비번 : ${vo.mem_pwd }</p>
	<p>아이피 : ${vo.mem_ip }</p>
	<p>가입일 : ${vo.mem_date }</p>
	<p>등급 : ${vo.mem_grade }</p>
	
	<p><a href="<%=application.getContextPath()%>/diary/diaryForm">다이어리 작성</a></p>
	
	</div>
</article>
<%@include file="../temp/footer.jsp" %>












