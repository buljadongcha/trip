<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="fboardChkpwd" >  <!-- �޼ҵ�� -->
	<%--������ �ʴ� �Ӽ����� pwdCheck.jsp�� �ʿ��� �Ķ���͸� ������. --%>
	<input type="hidden" name = "fb_num" value="${map.fb_num}">
	<input type="hidden" name = "job" value="${map.job}">
		<!-- div class="row mb-3">
    	<label for="pwd" class="col-sm-2 col-form-label">��й�ȣ</label>
   		 	<div class="col-sm-10">
      			<input type="password" name = "pwd" class="form-control" id="pwd">
    		</div>
  		</div-->
  
		<div class="container text-center" role="group">
  		<button class="btn btn-primary" type="submit">��й�ȣȮ��</button>   
  		<button class="btn btn-danger" type="button" onclick="location='tboardList'">���/���ư���</button>
		</div>
	</form>
</body>
</html>