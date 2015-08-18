<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value='${pageContext.request.contextPath}' />


<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script>

window.addEventListener("load", function(){
	var searchUp = document.querySelector("#search-up");
	
	searchUp.onclick = function() {
		
		
 		var vis =document.querySelector(".search-form");
 		/* alert(vis); */
		if(vis.style.visibility=="visible")
			vis.style.visibility="hidden";
		else
			vis.style.visibility="visible"; 
	};
	
});
	
</script>

<style>
.search-form {
	position: absolute;
	left: -200px;
	top: 250px;
	z-index: 200;
	width: 200px;
	height: 200px;
	padding-top: 20px;
	text-align: center;
	background-color: rgba(249, 227, 236, 0.8);
	visibility: hidden;
}

.search-up:hover .search-form {
	visibility: visible;
}
.search-form h3 {
    font-weight: bold;
    color: #646464;
    margin-bottom: 5px;
    margin-top: 7px;
}


</style>


<aside id="aside">
	<!-- <div class="content-wrapper"> -->
	<h1 class="Hidden">전체메뉴</h1>
	<nav>
		<h1 class="Hidden">메뉴</h1>
		<ul>
			<li><a href="${ctxName}/tastecoordi/mypage/myCodi"><img
					src="${ctxName}/resource/image/css/pro.JPG" alt="Mypage"></a></li>
			<%-- <li><a href=""><img
						src="${ctxName}/resource/image/css/login-icon.png" alt="Login"></a></li> --%>

			<c:if test="${empty pageContext.request.userPrincipal.name}">
				<li><a href="${ctxName}/joinus/login"><img
						src="${ctxName}/resource/image/css/login-icon.png" alt="Login"></a></li>
			</c:if>
			<c:if test="${not empty pageContext.request.userPrincipal.name}">
				<%-- <security:authentication property="authorities" var="authorities" />
						<c:forEach items="${authorities}" var="auth">
							${auth.authority}
						</c:forEach> 
						<a href="${ctxName}/j_spring_security_logout"><security:authentication property="name" />--%>
				<a href="${ctxName}/j_spring_security_logout"><img
					src="${ctxName}/resource/image/css/logout.png" alt="Logout"></a>
			</c:if>

			<li><a href="${ctxName}/tastecoordi/codiRoom"><img
					src="${ctxName}/resource/image/css/coordi-icon.png" alt="Coordi"></a></li>
			
			<li><!-- <input type="button" value="앙" id="search-up" /> --><img 
					src="${ctxName}/resource/image/css/search-icon.png" alt="Search" id="search-up"></a></li>


			<li><a href="${ctxName}/joinus/joinSelect"><img
					src="${ctxName}/resource/image/css/company-icon.png" alt="Company"></a></li>
			<li><a href="${ctxName}/tastecoordi/qna"><img
					src="${ctxName}/resource/image/css/q&a-icon.png" alt="Q&A"></a></li>
					
			<li>
				<a href="${ctxName}/admin/adminMenu" >관리자 메뉴</a>
			</li>		
		</ul>
	</nav>


	<div class="search-form">

		<form action="tsmainSearch" method="POST">




			<fieldset>
				<legend class="Hidden">검색정보</legend>
				<h3>스타일검색</h3>
				<label class="Hidden">스타일검색</label> <select name="style">
					<option value="cj">캐쥬얼</option>
					<option value="dd">댄디</option>
					<option value="ro">로맨틱</option>
					<option value="cl">클래식</option>
					<option value="bo">보이쉬</option>
					<option value="hh">힙합</option>
					<option value="ss">섹시</option>
					<option value="vv">빈티지</option>
					<option value="of">오피스</option>
				</select>
			</fieldset>


			<fieldset>
				<h3>아이템검색</h3>
				<label class="Hidden">카테고리</label> <select name="categories">
					<option value="top">상의</option>
					<option value="bot">하의</option>
					<option value="out">아우터</option>
					<option value="one">원피스</option>
					<option value="sho">신발</option>
					<option value="acc">잡화</option>
				</select>
			</fieldset>


			<fieldset>
				<label>색상필드</label> <select name="color">
					<option value="red">빨강</option>
					<option value="orange">주황</option>
					<option value="yellow">노랑</option>
					<option value="green">초록</option>
					<option value="blue">파랑</option>
					<option value="navy">남색</option>
					<option value="purple">보라</option>
					<option value="black">검정</option>
					<option value="gray">회색</option>
					<option value="pink">분홍</option>
					<option value="beg">베이지</option>
					<option value="brown">갈색</option>
					<option value="white">흰색</option>
				</select>
			</fieldset>

			<div id="search-btn">
				<input type="submit" value="검색"><br> <a
					href="javascript:closeWin();">취소</a>
			</div>
		</form>
	</div>

</aside>


