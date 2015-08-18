<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
    
<!-- jstl(core lib: 대부분 제어와 관련) 접두사와 처리기 선언-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<c:set var="ctxName" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MyCodi</title>
<%-- <link href="${ctxName}/resource/css/reset.css" type="text/css" rel="stylesheet"/>
<link href="${ctxName}/resource/css/layout.css" type="text/css" rel="stylesheet"/> --%>
<link href="${ctxName}/resource/mypage/css/Mypage.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<!-- CSS로 스타일을 입힐때 보이게끔만... 문서의 위치가 보여지는 위치는 아니다. -->
	<!-- header -->
	<tiles:insertAttribute name="header" />
	<!-- <div id="top-blank"></div> -->

	<div id="mid-blank"  class="clearfix">
	
		<div id="customer-menu-blank">
		<!-- customer menu -->
		<tiles:insertAttribute name="c-aside" />
			
		</div>
		
		<!-- body -->
		<tiles:insertAttribute name="body" />
		
		
		<!-- aside -->
		<tiles:insertAttribute name="aside" />
		
	</div> 
	
	<!-- footer -->
	<tiles:insertAttribute name="footer" />

</body>
</html>