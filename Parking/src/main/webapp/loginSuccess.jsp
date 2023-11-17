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
		request.setCharacterEncoding("UTF-8");
		String ID = request.getParameter("ID");
	%>

		<fieldset>
			<h1>환영합니다!</h1>
			<h1>회원가입을 축하합니다. <%=ID %>님</h1>
			<button onclick='location.href="main.jsp"'>시작하기</button>
		</fieldset>
</body>
</html>