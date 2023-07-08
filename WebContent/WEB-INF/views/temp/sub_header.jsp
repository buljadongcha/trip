<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>여행메이트</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../resources/animate.css">
    <link rel="stylesheet" href="../resources/owl.carousel.min.css">
    <link rel="stylesheet" href="../resources/owl.theme.default.min.css">
    <link rel="stylesheet" href="../resources/magnific-popup.css">
    <link rel="stylesheet" href="../resources/aos.css">
    <link rel="stylesheet" href="../resources/ionicons.min.css">
    <link rel="stylesheet" href="../resources/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../resources/jquery.timepicker.css">
    <link rel="stylesheet" href="../resources/flaticon.css">
    <link rel="stylesheet" href="../resources/icomoon.css">
    <link rel="stylesheet" href="../resources/style.css">
    <link rel="stylesheet" href="../resources/diarylist.css">
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="<%=application.getContextPath() %>/">B Team.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span>
      </button>
	 
      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <!--li class="nav-item"><a href="index.html" class="nav-link">메이트 찾기</a></li-->
          <li class="nav-item"><a href="<%=application.getContextPath()%>/tour.jsp" class="nav-link">여행계획</a></li>
          <li class="nav-item"><a href="<%=application.getContextPath()%>/recode/recodewrite" class="nav-link">여행기록하기</a></li>
          <li class="nav-item"><a href="<%=application.getContextPath()%>/recode/recodedetail" class="nav-link">여행기록</a></li>
          <li class="nav-item"><a href="<%=application.getContextPath()%>/diary/diarylist2222" class="nav-link">다이어리리스트</a></li>
          <li class="nav-item"><a href="<%=application.getContextPath()%>/board/boardlist" class="nav-link">공지사항</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link">골든타임</a></li>
          <li class="nav-item"><a href="<%=application.getContextPath()%>/admin/adminMemberList" class="nav-link">admin리스트</a></li>
          
          
          <c:choose>
		  	<c:when test="${sessionScope.sessionID == null }">
		  		<%-- 로그인 전 --%>
			  	<li class="nav-item cta">
			  		<a href="<%=application.getContextPath()%>/tripmember/memForm" class="nav-link text-white" id="item2">로그인 / 회원가입</a>
			  	</li>
		  	</c:when>
		  	<c:when test="${sessionScope.sessionID != null }">
		  		<%-- 로그인 후 --%>
			  	<li class="nav-item cta">
			  		<a href="<%=application.getContextPath()%>/tripmember/loginOut" class="nav-link text-white" id="item2">로그아웃</a>
			  	</li>
			  	
			  	<li style="margin-left: 20px;" class="nav-item cta">
		  			<a href="<%=application.getContextPath()%>/tripmember/mypage?id=${sessionScope.sessionID}" class="nav-link text-white" id="item3">MyPage</a>
			  	</li>
		  	</c:when>
		  </c:choose>
          
          
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->