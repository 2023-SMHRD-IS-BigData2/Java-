<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<form action="MEMBER_membership" method="post">
			<input type="text" name="ID" placeholder="아이디" ID="inputE" onchange="checkE()"> 
			<span id="resultCheck"></span> <br>
			<input type="text" name="PW" placeholder="비밀번호"> <br>
			<input type="text" name="NAME" placeholder="이름"> <br> 
			<input type="text" name="TEL" placeholder="전화번호"> <br> 
			<input type="text" name="CAR_NUM" placeholder="차량번호"> <br>
			<select name="CAR_TYPE">
				<option value="소형">소형</option>
				<option value="중형">중형</option>
				<option value="대형">대형</option>
			</select>
			<br> 
			<input type="submit" value="회원가입">
		</form>
	</fieldset>

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
		function checkE() {
			var inputE = $('#inputE').val();

			$.ajax({
				//어디로 요청할 것인지
				url : 'MEMBER_IDcheckservice',
				//요청 데이터(json, {key:value})
				data : {
					'inputE' : inputE
				},
				//요청 방식
				type : 'get',
				//요청 성공
				success : function(data) {
					if (data == 'true') {
						$('#resultCheck').text('사용 할 수 없는 아이디')
						$('#resultCheck').css({
							"color" : "red"
						})
					} else if (data == 'false') {
						$('#resultCheck').text('사용 할 수 있는 아이디')
						$('#resultCheck').css({
							"color" : "green"
						})
					}
				},
				//요청 실패
				error : function() {
					alert("통신실패");
				}
			})
		}
	</script>
</body>
</html>