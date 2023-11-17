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
			id: <input type="text" name="ID"><br> 
			pw: <input type="password" name="PW"><br> 
			<input type="submit" value="로그인">
		</form>
	</fieldset>
</body>
</html>