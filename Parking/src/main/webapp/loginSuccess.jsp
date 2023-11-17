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
	<%
		MEMBER loginMember = (MEMBER)session.getAttribute("loginMember");
	%>
	
	<%if(loginMember == null){%>
		<h1>로그인 한 세션 아이디를 출력 해주세요</h1>
	<%}else{ %>
		<fieldset align="center">
			<h1><%=loginMember.getID() %>님</h1>
			<h1>환영합니다!</h1>
			<button onclick='location.href="main.jsp"'>홈으로 가기</button>
		</fieldset>
	<%}%>
</body>
</html>