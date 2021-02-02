<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ID/PWD 찾기 Page</title>
</head>
<body>
<h3>ID/PWD 찾기</h3>
<p>회원가입 시 입력한 E-mail주소와 이름을 입력해주세요.
<form method="POST" action="${paggContext.request.contextPath }/member/find">
	<table border="1">
		<tr>
			<th>EMAIL</th>
			<td><input type="text" name="email"></td>
		</tr>
		<tr>
			<th>NAME</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"></td>
		</tr>
	</table>
</form>
</body>
</html>