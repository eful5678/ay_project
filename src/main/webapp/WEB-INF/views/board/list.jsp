<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js">
	$(document).ready(function(){
		$("#write").click(function(){
			//�α��� �Ǿ��ִ��� Ȯ���ϱ�
		}); 
		
	});
</script>
</head>
<body>
	<!-- ��������, ���ǻ��� ����Ʈ -->
	<h3>������</h3>
	<table border="1" cellspacing="0">
		<thead>
			<tr>
				<th>��ȣ</th>
				<th>����</th>
				<th>�ۼ���</th>
				<th>�����</th>
			</tr>
		</thead>
		<c:forEach var="b" items="${list}">
			<tr>
				<td><c:out value="${b.num}" /></td>
				<td><c:out value="${b.title}" /></td>
				<td><c:out value="${b.writer}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${b.b_date}" /></td>
			</tr>
		</c:forEach>
	</table>
	
	<!-- ���������� ������������ ���� ��ư ���� �ٸ���. -->
	<c:choose>
		<c:when test="${sessionScope.id eq 'admin'}">
			<input type="button" id="write" value="�������� ����">
		</c:when>
		<c:otherwise>
			<input type="button" id="write" value="�����ϱ�">
		</c:otherwise>
	</c:choose>
	
</body>
</html>