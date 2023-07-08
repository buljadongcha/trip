<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="fboardChkpwd" >  <!-- 메소드로 -->
	<%--보이지 않는 속성으로 pwdCheck.jsp로 필요한 파라미터를 보낸다. --%>
	<input type="hidden" name = "fb_num" value="${map.fb_num}">
	<input type="hidden" name = "job" value="${map.job}">
		<!-- div class="row mb-3">
    	<label for="pwd" class="col-sm-2 col-form-label">비밀번호</label>
   		 	<div class="col-sm-10">
      			<input type="password" name = "pwd" class="form-control" id="pwd">
    		</div>
  		</div-->
  
		<div class="container text-center" role="group">
  		<button class="btn btn-primary" type="submit">비밀번호확인</button>   
  		<button class="btn btn-danger" type="button" onclick="location='tboardList'">취소/돌아가기</button>
		</div>
	</form>
</body>
</html>