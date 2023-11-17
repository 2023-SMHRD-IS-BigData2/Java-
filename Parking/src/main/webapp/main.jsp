<%@page import="model.MEMBER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=zvs7p2p5xq">
</script>
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
		<h1>메인 페이지</h1>
	<%}else { %>
		<h1><%=loginMember.getID() %></h1>
	<%} %>
	
	<div id="map" style="width:100%; height:800px;"></div>
	
	    <script>

        var map = new naver.maps.Map('map', {
            center: new naver.maps.LatLng(35.1498, 126.9199), // 스마트 인재 개발원을 중심으로 하는 지도
            zoom: 15
        });

        // 스마트 인재 개발원에 마커 찍기
        var marker = new naver.maps.Marker({
            position: new naver.maps.LatLng(35.1498, 126.9199),
            map: map
        });

    </script>
</fieldset>

</body>
</html>