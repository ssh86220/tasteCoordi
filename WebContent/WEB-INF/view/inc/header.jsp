<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <c:set var="ctxName" value='${pageContext.request.contextPath}'/>  
	<header id="header">

		<h1 class="Hidden">로고</h1>
		<nav>
			<h1>
			    <a href="${ctxName}/tastecoordi/tsMain">
				<img src="../resource/image/css/logo.png" alt="TASTES COORDI" />
				</a>
			</h1>
		</nav>

	</header>