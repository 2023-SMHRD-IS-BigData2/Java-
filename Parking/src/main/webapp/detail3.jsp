<%@page import="com.fasterxml.jackson.annotation.JsonTypeInfo.Id"%>
<%@page import="oracle.security.crypto.core.Padding.ID"%>
<%@page import="java.util.List"%>
<%@page import="model.BOOKING_DAO"%>
<%@page import="model.BOOKING"%>
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
<% 	MEMBER loginMember = (MEMBER)session.getAttribute("loginMember"); 



%>
	<nav class="nav4" id="nav4">
        <ul class="nav4_center">
            <li class="nav4_userbox">
                <p><img class="main_img" src="./resources/img/주차랑께.png" alt=""></p>
                <div class="nav4_userprofile"></div>
                <div class="nav4_username"><%=loginMember.getNAME()%>님</div>
                <p class="nav4_pay">결제내역</p>
                <button class="nav4_del" onclick="payinfo_del()"><i class="fa-solid fa-x"></i></button>
            </li>
        </ul>

        <ul class="nav4_box">
            <ul class="nav4_btnframei">
                <h4>결제완료</h4>
                <i class="fa-solid fa-x"></i>
                <p><i class="fa-solid fa-square-parking"></i></p>
                <div class="nav4_payinfo">
                    <span class="nav4_payinfo_date">결제일시</span>
                    <span class="nav4_payinfo_pname">주차장이름</span>
                    <span class="nav4_payinfo_pay">1,000원</span>
                </div>
                <li class="nav4_buttoni">
                    <button onclick="review_open()">후기등록</button>
                </li>
            </ul>
            <ul class="nav4_btnframei">
                <h4>결제완료</h4>
                <i class="fa-solid fa-x"></i>
                <p><i class="fa-solid fa-square-parking"></i></p>
                <div class="nav4_payinfo">
                    <span class="nav4_payinfo_date">결제일시</span>
                    <span class="nav4_payinfo_pname">주차장이름</span>
                    <span class="nav4_payinfo_pay">1,000원</span>
                </div>
                <li class="nav4_buttoni">
                    <button onclick="review_open()">후기등록</button>
                </li>
            </ul>
            <ul class="nav4_btnframei">
                <h4>결제완료</h4>
                <i class="fa-solid fa-x"></i>
                <p><i class="fa-solid fa-square-parking"></i></p>
                <div class="nav4_payinfo">
                    <span class="nav4_payinfo_date">결제일시</span>
                    <span class="nav4_payinfo_pname">주차장이름</span>
                    <span class="nav4_payinfo_pay">1,000원</span>
                </div>
                <li class="nav4_buttoni">
                    <button onclick="review_open()">후기등록</button>
                </li>
            </ul>
            <ul class="nav4_btnframei">
                <h4>결제완료</h4>
                <i class="fa-solid fa-x"></i>
                <p><i class="fa-solid fa-square-parking"></i></p>
                <div class="nav4_payinfo">
                    <span class="nav4_payinfo_date">결제일시</span>
                    <span class="nav4_payinfo_pname">주차장이름</span>
                    <span class="nav4_payinfo_pay">1,000원</span>
                </div>
                <li class="nav4_buttoni">
                    <button onclick="review_open()">후기등록</button>
                </li>
            </ul>
        </ul>
    </nav>
</body>
</html>