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
	<h3>${vo.mem_name}�� �ݰ����ϴ�.</h3>
	<p>��ȣ : ${vo.mem_num }</p>
	<p>���̵� : ${vo.mem_id }</p>
	<p>�г��� : ${vo.mem_nick }</p>
	<p>��� : ${vo.mem_pwd }</p>
	<p>������ : ${vo.mem_ip }</p>
	<p>������ : ${vo.mem_date }</p>
	<p>��� : ${vo.mem_grade }</p>
	
	<p><a href="<%=application.getContextPath()%>/diary/diaryForm">���̾ �ۼ�</a></p>
	
	</div>
</article>
<%@include file="../temp/footer.jsp" %>












