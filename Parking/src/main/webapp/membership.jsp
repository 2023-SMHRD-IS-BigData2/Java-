<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="MEMBER_membership" align="center" method="post">
	<table align="center" border="1" width="250px">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="ID"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="PW"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="NAME"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="TEL"></td>
			</tr>
			<tr>
				<td>차량번호</td>
				<td><input type="text" name="CAR_NUM"></td>
			</tr>
			<tr>
				<td>차종</td>
				<td>
					<input type="checkbox" name="CAR_TYPE" VALUE="소형">소형
					<input type="checkbox" name="CAR_TYPE" VALUE="중형">중형
					<input type="checkbox" name="CAR_TYPE" VALUE="대형">대형
				</td>
			</tr>
			<tr>
                <th colspan="2">
                    <input type="submit" value="회원가입">
                </th>
            </tr>
		</table>
</form>
</body>
</html>