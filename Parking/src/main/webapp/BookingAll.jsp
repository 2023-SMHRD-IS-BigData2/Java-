<%@page import="model.BOOKING_DAO"%>
<%@page import="java.util.List"%>
<%@page import="model.BOOKING"%>
<%@page import="model.PARKING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <script src="main.js" defer></script>
    <script src="https://kit.fontawesome.com/10601bc38f.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>

<body>
    <% List<BOOKING> booking = (List<BOOKING>)new BOOKING_DAO().loginBooking();
    System.out.print(booking.size());
			pageContext.setAttribute("Booking",booking);%>
    <nav class="nav2">
        <ul class="nav2_center">
            <li class="nav2_searchbox">
                <button class="nav2_input--button"><i class="fa-solid fa-magnifying-glass"></i></button>
                <input type="text" class="nav2_input--text" placeholder="주차장 검색">
            </li>
        </ul>
        <ul class="nav2_imgbox">
            <div class="nav2_img">
                <img src="./img/img_present03_fix2.jpg">
            </div>
        </ul>

        <ul class="nav2_infobox">
        <!-- 주차장 이름이 들어 가는 곳 -->
        <% for(int i = 0 ; i <booking.size(); i++) { %>
            <li class="nav2_name">
                <span>주차장 명 : <%=booking.get(i).getB_PLACE()%></span>
            </li>
            
            <!-- 예약일시 -->
            <li class="nav2_info">
                <span> 예약일시 : <%=booking.get(i).getB_DATE()%></span>
            </li>
            
            <!-- 입차 일 -->
            <li class="nav2_info">
                <span> 입차 일 : <%=booking.get(i).getB_EXDATE() %></span>
            </li>
            
            <!-- 주소 -->
            <li class="nav2_info">
                <span> 입차시간 : <%=booking.get(i).getB_TIME() %></span>
            </li>
            
            <!-- 주차장 구분 -->
            <li class="nav2_info">
                <span> 주차장 이용시간 : <%=booking.get(i).getB_EXDATE() %></span>
            </li>
            
            <!-- 운영시간 -->
            <li class="nav2_info">
                <span> 결제금액 <%=booking.get(i).getB_PRICE()%>*<%=booking.get(i).getB_EXDATE() %></span>
            </li>
          <%  } %>
        </ul>
        <hr class="nav2_hr">
        
        <div class="nav2_btnframe">
            <div class="nav2_button">
                <a href="ReviewAll.jsp"><button>후기남기기</button></a>               
            </div>

        </div>
    </nav>
    <button class="nav2_toggle"><i class="fa-solid fa-caret-left"></i></button>

</body>

</html>