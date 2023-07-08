<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>

<!DOCTYPE html>
<html lang="ko">
    <head>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script src="${rPath}/js/ajaxdemo7.js"></script>
        <title>로그인/회원가입</title>
        <meta charset="EUC-KR">
        <style>
        	* {
			    margin: 0;
			    padding: 0;
			    font-family: sans-serif;
			}
        	.wrap {
			    height: 100%;
			    width: 100%;
			    background-image: url(${rPath}/images/login_bg.gif);
			    background-position: center;
			    background-size: cover;
			    position: absolute;
			    opacity: 70%;
			}
			.form-wrap {
			    width: 380px;
			    height: 600px;
			    position: relative;
			    margin: 10% auto;
			    background: #fff;
			    padding: 5px;
			    overflow: hidden;
			    border-radius: 20px;
			}
			.button-wrap {
			    width: 230px;
			    margin: 45px auto;
			    position: relative;
			    box-shadow: 0 0 600px 9px #fcae8f;
			    border-radius: 30px;
			}
			.togglebtn {
			    padding: 10px 30px;
			    cursor: pointer;
			    background: transparent;
			    border: 0;
			    outline: none;
			    position: relative;
			}
			#btn {
			    top: 0;
			    left: 0;
			    position: absolute;
			    width: 110px;
			    height: 100%;
			    background: linear-gradient(to right, #ff105f, #ffad06);
			    border-radius: 30px;
			    transition: .5s;
			}
			.social-icons {
			    margin: 0 auto;
			    text-align: center;
			}
			.social-icons img {
			    width: 130px ;
			    cursor: pointer;
			}
			.input-group {
			    top: 190px;
			    position: absolute;
			    width: 280px;
			    transition: .5s;
			}
			.input-field {
			    width: 100%;
			    padding: 10px 0;
			    margin: 5px 0;
			    border: none;
			    border-bottom: 1px solid #999;
			    outline: none;
			    background: transparent;
			}
			.submit {
			    width: 85%;
			    padding: 10px 30px;
			    cursor: pointer;
			    display: block;
			    margin: auto;
			    background: linear-gradient(to right, #ff105f, #ffad06);
			    border: 0;
			    outline: none;
			    border-radius: 30px;
			}
			.checkbox {
			    margin: 30px 10px 30px 0;
			}
			span {
			    color: #777;
			    font-size: 12px;
			    position: absolute;
			}
			#login {
			    left: 50px;
			}
			#register {
			    left: 450px;
			}
        </style>
	    
    </head>
    <body>
        <div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
                <div class="social-icons">
                	<a class="navbar-brand" href="<%=application.getContextPath() %>/">
                		<img src="${rPath}/images/logo.png">
                	</a>
                </div>
                <!--div class="social-icons">
                    <img src="img/fb.png" alt="facebook">
                    <img src="img/tw.png" alt="twitter">
                    <img src="img/gl.png" alt="google">
                </div-->
                <form id="login" action="loginProcess" method="post" class="input-group">
                    <input type="text" class="input-field" placeholder="아이디 입력" id="id1" name="mem_id" required="required">
                    <input type="password" class="input-field" placeholder="******" id="pwd1" name="mem_pwd" required="required">
                    <!-- <input type="checkbox" class="checkbox"><span>Remember Password</span> -->
                    <button style="margin-top: 30px;" class="submit" type="submit">로그인</button>
                </form>
                <form id="register" method="post" action="addMember" autocomplete="off" class="input-group">
					<input type="hidden" name="mem_ip" value="<%=request.getRemoteAddr()%>">
                    <p>
	                    <input type="text" class="input-field" placeholder="아이디" name="mem_id" id="id2">
						<input style="border: 1px solid #BCBCBC; background-color: #fff; padding: 4px 6px; border-radius: 4px; margin-top: 6px;" type="button" id="idChkBtn" value="중복확인"/>
						<span style="margin: 12px" id="target1"></span>
					</p>
                    <p><input type="text" class="input-field" placeholder="이름"  name="mem_name" id="name2"></p>
                    <p>
                    	<input type="email" class="input-field" placeholder="이메일" name="mem_email" id="email2">
                    	<input style="border: 1px solid #BCBCBC; background-color: #fff; padding: 4px 6px; border-radius: 4px; margin-top: 6px;" type="button" id="emailChkBtn" value="중복확인"/>
						<span style="margin: 12px" id="target2"></span>
                    </p>
                    <p><input type="password" class="input-field" placeholder="비밀번호" name="mem_pwd" id="pwd2"></p>
                    <p>
                    	<input type="text" class="input-field" placeholder="닉네임" name="mem_nick" id="mem_nick2">
                    	<input style="border: 1px solid #BCBCBC; background-color: #fff; padding: 4px 6px; border-radius: 4px; margin-top: 6px;" type="button" id="nickChkBtn" value="중복확인"/>
						<span style="margin: 12px" id="target3"></span>
                    </p>
                    <!-- <input type="password" class="input-field" placeholder="비밀번호 확인" required> -->
                    <!--<input type="checkbox" class="checkbox"><span>Terms and conditions</span>-->
                    <p>
                    	<button style="margin-top: 30px;" class="submit" type="submit">가입</button>
                    </p>
                </form>
            </div>
        </div>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }
            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
	
</script>
<script>
	$(function() {
		// document.querySelector("#idChkBtn").onclick=function(e){}
		$('#idChkBtn').click(function(e) {
			//alert("Test!"); //[함수 제대로 적용하는지 테스트 후 주석처리함]	
			//폼전송을 막는 기능 
			e.preventDefault();
			// let param = "id="+document.getElementById("id").value;
			let idv = $('#id2').val();
			//alert("idv Test : "+idv); //[함수 제대로 적용하는지 테스트 후 주석처리함]	
			// target => document.getElementById("id").innerHTML
			//$('#target').html("하이").css("color", "orange"); [함수 제대로 적용하는지 테스트 후 주석처리함]	
			
			// Ajax 통신의 캐시 기능을 삭제
			$.ajaxSetup({
				cache:false
			});
			
			// Ajax 처리
			let path1 = "<%=application.getContextPath()%>/tripmember/idCheck?id="+idv;
			//console.log(path);
			
			$.ajax({
				url:path1,
				success:function(resDate){ // callback 함수인 res와 xhr.responseText 합친 개념
					let idCnt = parseInt(resDate);
					let msg1 ="";
					//console.log(idCnt);
					if(idCnt === 0){
						
						msg1 =idv+"는(은) 사용가능한 아이디 입니다.";
						//document.getElementById("target").style.backgroundColor="orange";
						// map형식으로 설정값을 부여 [대부분 이 방법으로 css부여]
						$('#target1').css({"backgroundColor":"orange","color":"white"});
					}else{
						msg1 =idv+"는(은) 사용중인 아이디 입니다.";
						//document.getElementById("target").style.backgroundColor="red";
						//document.getElementById("target").style.color='white';
						$('#target1').css({"backgroundColor":"red","color":"white"});
					}
					$('#target1').html(msg1);	
				}
			});
		});
	});

	
	
	$(function() {
		$('#emailChkBtn').click(function(e) {
			e.preventDefault();
			let emailv = $('#email2').val();
			
			// Ajax 통신의 캐시 기능을 삭제
			$.ajaxSetup({
				cache:false
			});
			
			// Ajax 처리
			let path2 = "<%=application.getContextPath()%>/tripmember/emailCheck?email="+emailv;
			//console.log(path);
			
			$.ajax({
				url:path2,
				success:function(resDate){ // callback 함수인 res와 xhr.responseText 합친 개념
					let emailCnt = parseInt(resDate);
					let msg2 ="";
					//console.log(idCnt);
					if(emailCnt === 0){
						
						msg2 =emailv+"는(은) 사용가능한 이메일 입니다.";
						$('#target2').css({"backgroundColor":"orange","color":"white"});
					}else{
						msg2 =emailv+"는(은) 사용중인 이메일 입니다.";
						//document.getElementById("target").style.backgroundColor="red";
						//document.getElementById("target").style.color='white';
						$('#target2').css({"backgroundColor":"red","color":"white"});
					}
					$('#target2').html(msg2);	
				}
			});
		});
	});
	
	
	
	$(function() {
		$('#nickChkBtn').click(function(e) {
			e.preventDefault();
			let nickv = $('#mem_nick2').val();
			
			// Ajax 통신의 캐시 기능을 삭제
			$.ajaxSetup({
				cache:false
			});
			
			// Ajax 처리
			let path3 = "<%=application.getContextPath()%>/tripmember/nickCheck?nick="+nickv;
			
			$.ajax({
				url:path3,
				success:function(resDate){ 
					let nickCnt = parseInt(resDate);
					let msg3 ="";
					if(nickCnt === 0){
						msg3 =nickv+"는(은) 사용가능한 닉네임 입니다.";
						$('#target3').css({"backgroundColor":"orange","color":"white"});
					}else{
						msg3 =nickv+"는(은) 사용중인 아이디 입니다.";
						$('#target3').css({"backgroundColor":"red","color":"white"});
					}
					$('#target3').html(msg3);	
				}
			});
		});
	});
</script>
    </body>
</html> 