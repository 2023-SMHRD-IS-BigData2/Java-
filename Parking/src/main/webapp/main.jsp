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
	
	if(loginMember != null){
		System.out.print(loginMember.getID());
	}
	
%>
<fieldset align="center">
	<%if(loginMember==null){ %>
		<h1>다시 로그인 해주세요</h1>
	<%}else { %>
		<h1><%=loginMember.getID() %></h1>
	<%} %>
</fieldset>

</body>
</html>