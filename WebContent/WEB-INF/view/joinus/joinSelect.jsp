<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <c:set var="ctxName" value='${pageContext.request.contextPath}' />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
h1{ width:304px;height:228px; }
</style>
</head>
<body>

<!-- 로고  -->
	<h1> <img 
	src="../../resource/image/logo.png" 
	alt="Mountain View" > </h1> 
	
	<ul>	
	<li><a href="joinMember" >일반 회원가입</a></li>
	<li><a href="joinEnterprise" >업체 회원가입</a></li>
	</ul>
</body>
</html>