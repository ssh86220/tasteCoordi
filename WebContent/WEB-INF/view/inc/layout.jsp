
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="ctxName" value='${pageContext.request.contextPath}' />



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>>tsMAIN</title>
<link href="../resource/css/reset.css" type="text/css" rel="stylesheet" />
<link href="../resource/css/layout.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="../resource/js/mordernizr.js"></script>
</head>

<body>
	<div id="top">
		<!-- <div class="content-wrapper"> -->
		<h1 class="Hidden">top</h1>
		<!-- </div> -->
	</div>


	<!-- 어사이드영역 -->
	<tiles:insertAttribute name="aside" />
	
	<div id="main-wapper">
		<!-- 헤더영역 -->
		<tiles:insertAttribute name="header" />

		<!-- 메인영역 -->
		<main id="main"> <tiles:insertAttribute name="body" /> </main>
	</div>
	<!-- 푸터영역 -->
	<tiles:insertAttribute name="footer" />

</body>
</html>