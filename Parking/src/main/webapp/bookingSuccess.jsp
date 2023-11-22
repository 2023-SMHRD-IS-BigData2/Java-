<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 성공</title>
<link rel="stylesheet" href="login.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<%
   //  예약한 parking 테이블과 예약한 member테이블 가져와야한다. 
		 MEMBER loginMember = (MEMBER)session.getAttribute("loginMember"); 
	%>

	<div class="login">
        <div class="login__content">
          <div class="login__img">
            <img src="./WEB-INF/lib/file/주차랑께.png" alt="user login"style="width: 150px;height: 150px; margin: heigth 200px;">
          </div>
<%if(loginMember == null){%>
		<h1>페이지가 응답하지 않습니다 다시 시도해 주세요</h1>
	<%}else{ %>                 
          <div class="login__forms">            
            <form action="main.jsp" class="login__create" id="login-up">
            
              <h1 class="login__title"><%=loginMember.getID() %>님<br>
               "주차장이름"주차장 예약이 완료되었습니다!</h1>
              <input type="submit" class="login__buttons btnFloat" value="홈으로 돌아가기">
                           
            </form>
          </div>
        </div>
       </div>		
	<%}%>
</body>
</html>