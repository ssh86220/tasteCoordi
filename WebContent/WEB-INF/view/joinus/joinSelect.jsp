<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value='${pageContext.request.contextPath}' />

<style>
#joinLogo img {
	padding-left: 65px;
	width: 70%;
	height: 70%;
}

.joindiv {
	width: 150px;
	height: 240px;
	float: left;
	background: #ffffff;
	text-align: center;
	
}

.joindiv li:FIRST-CHILD{
	padding-top: 50px;
	
}

.joindiv img:FIRST-CHILD{
	padding-top: 20px;
	width: 45%;
	height: 60%;
}
#joinBox{
padding-left:45px;
}

#btn-joinMemScreen :HOVER{
 color : #f66373;
}
#btn-joinEnterScreen :HOVER{
 color : blue;
}
</style>



	<h1 class="Hidden">로고</h1>
	<nav id="joinLogo">
		<h1>
			<a > <img
				src="../resource/image/css/logo.png" alt="TASTES COORDI" />
			</a>
		</h1>
	</nav>
	<div id="joinBox">
	<div>
		<div class="joindiv" id="btn-joinMemScreen">
			<ul  style = "cursor: pointer;">
				<li><a> 일반</a></li>
				<li><a>회원가입</a></li>
				 <a><img src="../resource/image/css/joinMember.png"  /></a> 
				 
				
			</ul>
		</div>
		<div class="joindiv" id="btn-joinEnterScreen">
			<ul style = "cursor: pointer;">
				<li><a>업체</a></li>
				<li><a>회원가입</a></li>
				<a><img src="../resource/image/css/joinMembers.png"/></a>
			</ul>
		</div>
	</div>
</div>