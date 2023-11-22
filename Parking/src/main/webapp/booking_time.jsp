<%@page import="model.MEMBER"%>
<%@page import="model.PARKING"%>
<%@page import="model.BOOKING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% BOOKING booking = (BOOKING)session.getAttribute("booking");
   PARKING parking = (PARKING)session.getAttribute("Parking");
   MEMBER loginMember = (MEMBER)session.getAttribute("loginMember");
%>
<form action="BOOKING_time">
	등록일시<input type="date" name="B_DATE">~
	종료일시<input type="date" name="B_EXDATE">

<br>
	이용시간<input type="text" class= "timepicker" name="B_TIME">
<br>
<button>결제하기</button>
<input type="hidden" name="ID" value="<%=loginMember.getID()%>">
<input type="hidden" name="B_PLACE" value="<%=parking.getP_PLACE()%>">
<input type="hidden" name="B_PRICE" value="<%=parking.getP_PRICE()%>">
<input type="hidden" name="B_YN" value="y">
</form>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('input.timepicker').timepicker({
            timeFormat: 'HH:mm',
            interval: 60,
            startTime: '00:00',
            dynamic: false,
            dropdown: true,
            scrollbar: true
        });
    })
</script>
</body>
</html>