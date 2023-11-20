<%@page import="model.MEMBER_DAO"%>
<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<fieldset>
	<legend>로그인</legend>
	<form action="./MEMBER_login" method="post">
		<input type="text" name="ID" placeholder="아이디">
		<br>
		<input type="password" name="PW" placeholder="비밀번호"><br> 
		<input type="submit" value="로그인">
	</form>
	<a href="membership.jsp">회원가입</a>
</fieldset>
 
</body>
</html>