<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ID/PWD ã�� Page</title>
</head>
<body>
<h3>ID/PWD ã��</h3>
<p>ȸ������ �� �Է��� E-mail�ּҿ� �̸��� �Է����ּ���.
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

ȸ������ ���̵�� <div></div> �Դϴ�.
ȸ������ ��й�ȣ�� <div></div> �Դϴ�.
</body>
</html>