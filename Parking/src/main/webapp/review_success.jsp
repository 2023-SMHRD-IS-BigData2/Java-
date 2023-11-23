<%@page import="model.REVIEW"%>
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
<%
PARKING parking = (PARKING)session.getAttribute("Parking");
REVIEW loginREVIEW = (REVIEW)session.getAttribute("loginREVIEW");
%>

<form action="review.html" method="post">
	<input type="hidden" name="ID" value="<%=parking.getP_CODE()%>">
	ID<%= loginREVIEW.getID() %>
	R_1<%= loginREVIEW.getR_1() %>
	R_2<%= loginREVIEW.getR_2() %>
	R_3<%= loginREVIEW.getR_3() %>
	R_4<%= loginREVIEW.getR_4() %>
	R_5<%= loginREVIEW.getR_5() %>
</form>
</body>
</html>