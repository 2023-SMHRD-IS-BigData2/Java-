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
	MEMBER loginMember = (MEMBER) session.getAttribute("loginMember");
	%>
	<fieldset>
		<legend>개인정보 수정하기</legend>
		<form action="MEMBER_update" method="post">
			접속한 ID:<%=loginMember.getID()%><br>
			<input type="hidden" name="ID" value="<%=loginMember.getID()%>">
			비밀번호:<input type="text" name="PW" value="<%=loginMember.getPW() %>"><br>
			차량번호:<input type="text" name="CAR_NUM" value="<%=loginMember.getCAR_NUM()%>"><br>
			소형<input type="radio" name="CAR_TYPE" value="소형">
			중형<input type="radio" name="CAR_TYPE" value="중형">
			대형<input type="radio" name="CAR_TYPE" value="대형">
			<br>
			<input type="submit" value="UPDATE">
		</form>
	</fieldset>
</body>
</html>