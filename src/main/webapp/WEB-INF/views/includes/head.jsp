<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="/resources/css/bootstrap-theme.min.css">

<!-- 커스터마이징 CSS -->
<link rel="stylesheet" href="/resources/css/custom_main.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	
<sec:authentication property="principal" var="principal"/>
