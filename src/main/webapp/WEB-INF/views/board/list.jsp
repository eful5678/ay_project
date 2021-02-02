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
			//로그인 되어있는지 확인하기
		}); 
		
	});
</script>
</head>
<body>
	<!-- 공지사항, 문의사항 리스트 -->
	<h3>고객센터</h3>
	<table border="1" cellspacing="0">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
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
	
	<!-- 구매자인지 관리자인지에 따라 버튼 값이 다르다. -->
	<c:choose>
		<c:when test="${sessionScope.id eq 'admin'}">
			<input type="button" id="write" value="공지사항 쓰기">
		</c:when>
		<c:otherwise>
			<input type="button" id="write" value="문의하기">
		</c:otherwise>
	</c:choose>
	
</body>
</html>