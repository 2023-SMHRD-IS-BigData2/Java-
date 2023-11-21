<%@page import="model.PARKING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<form action="./PARKING_login_check" method="post">
<div class="login__box">
          <i class='bx bx-lock login__icon'></i>
          <input type="text" placeholder="수정 할 주차장 명" class="login__input" name="P_PLACE">
        </div>
<input type="submit" value="제출">
</form>

</body>
</html>