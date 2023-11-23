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
%>

<%if(loginMember == null){%>
				<form action="login.html">
					<button>로그인</button>
				</form>
			<%}else{ %>
					<%if(loginMember.getID().equals("admin")){%>
					<form action="parking_main.jsp">
						<button>주차정보등록</button>
					</form>
					<%}%>
					
					<form action="UpdateMember.jsp">
					<button>개인정보수정</button>
					</form>
					<form action="booking.html">
					<button>예약</button>
					</form>
					<form action="login.html">
					<button>로그아웃</button>
					</form>
					
					<form action="booking.html">
					<input type="submit" value="예약하기">
					</form>
					
			<!-- test 중 예약 성공 화면 입니다. 예약 화면 기능 구현 후 연결 해주세요 -서영- -->
					<form action="bookingSuccess.jsp">					
					<button>예약성공화면</button>
					</form>
			<%}%>

<fieldset align="center">
	
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