<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javaEdu 사원정보 조회</title>
</head>
<body>
<c:forEach var="user" items="${userInfo}">
<c:param name="${user.testid01 }">
		<h1>사원정보 상세조회</h1>
		<table border="1">
		<tr>
			<th>USER_ID</th>
			<td>${user.userId}</td>
		</tr>
		<tr>
			<th>NAME</th>
			<td>${user.name}</td>
		</tr>
		<tr>
			<th>PASSWORD</th>
			<td>${user.password}</td>
		</tr>
		<tr>
			<th>EMAIL</th>
			<td>${user.email}</td>
		</tr>
		<tr>
			<th>BIRTHDATE</th>
			<td>${user.birthDate}</td>
		</tr>
		</c:param>
</c:forEach>

</table>
<a href="update?empid=${emp.employeeId}">수정하기</a>
<a href="delete?empid=${emp.employeeId}">삭제하기</a>

</body>
</html>