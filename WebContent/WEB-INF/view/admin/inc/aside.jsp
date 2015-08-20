<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value='${pageContext.request.contextPath}' />



<style>
	#admin-menu{
	text-align: center;
	margin-top: 150px;
	}
	
	li{
	height: 40px;
	}
</style>


<aside id="aside">
	
	<ul id="admin-menu">
		<li><a href="adminMember" >고객관리</a></li>
		<li><a href="" >공지관리</a></li>	
	</ul>
</aside>


