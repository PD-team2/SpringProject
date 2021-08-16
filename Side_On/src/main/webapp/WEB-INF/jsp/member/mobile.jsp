<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
  <link href="../css/register_sh.css" rel="stylesheet">

<script></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>

<div class="text-center" >
<form action="result.html" method="post" name="idCheckForm" id="idCheckForm">
	<div class="col-xl-5 col-lg-5 col-md-5">
	 <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
       <!-- Nested Row within Card Body -->
        <div class="row">
       <div class="col-lg-5 d-none d-lg-block"></div>
 	    <div class="col-lg-12">
		<div class="p-5">
                        
<form method="post" id="smsForm">
     <input type="text" id="to" name="to" placeholder="인증받을 핸드폰번호"/>   <!-- 인증번호 받을사람 휴대폰 번호 -->
    <input type="button" id="send" class="btn btn-primary btn-sm" value="전송" onclick="location.href='/member/mobileCheck'"/><br> <!-- 문자보내는 전송버튼 -->
     <input type="text" id="userNum" placeholder="인증번호">   <!-- 인증번호 입력창 -->
  <input type="button" id="enterBtn" class="btn btn-light btn-sm" value="확인" onclick="numCheck()">   <!-- 인증번호와 내가 입력창에 입력한 인증번호 비교하는 창 -->
  
  
  <input type="hidden" name="text" id="text">   <!-- 인증번호를 히든으로 저장해서 보낸다 -->
 
</form>  
    </div>
    </div>
	</div>
	</div>
	</div>
	</div>
	
  <script>
 function sendSMS() {
    	alert("인증번호가 전송되었습니다.");
 }
 
 function numCheck() {
	 var num = document.getElementById("userNum").value;
	 
	 if(num !== '731126') {
		 document.getElementById("userNum").focus();
		 alert("인증번호가 올바르지 않습니다.");
		 document.getElementById("userNum").value = "";
		 
	 } else {
		 alert("확인되었습니다.")
		 window.close();
	 }
	 
 }
 
 /* 윈도우 로드 이벤트 */
 window.onload = function() {
 	// 부모창 객체 가져오기
 	var parentMobileElement = window.opener.document.getElementById("mobile");
 	
 	// 자식창 객체 가져오기
 	var childMobileElement = document.getElementById("to");
 	
 	// 부모창의 입력 값 = 자식창의 입력 값으로 초기화
 	childMobileElement.value = parentMobileElement.value;
 	
 	// 자식창 객체 포커스
 	childMobileElement.focus();
 }
  </script>
</body>
</html>