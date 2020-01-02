<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
	<title>테스트</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<form action="/testWrite" method="post">
	<input type="text" name='test1'>
	<input type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token }">
	<button>제출</button>
</form>
</body>
</html>
