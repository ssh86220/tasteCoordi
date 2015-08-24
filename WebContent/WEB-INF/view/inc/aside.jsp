<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value='${pageContext.request.contextPath}' />

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


<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script>
	function showDialog(url) {
		var screen = document.createElement("div");

		screen.style.width = "100%";
		screen.style.height = "100%";
		screen.style.position = "fixed";
		screen.style.left = "0px";
		screen.style.top = "0px";
		screen.style.background = "black";
		screen.style.opacity = "0.5";
		screen.style.zIndex = "2";

		document.body.appendChild(screen);

		var docHeight = window.innerHeight;
		var docWidth = window.innerWidth;
		var width = "400";
		var height = "400";
		var top = docHeight / 2 - height / 2;
		var left = docWidth / 2 - width / 2;

		var dialog = document.createElement("div");
		dialog.style.width = "400px";
		dialog.style.height = "400px";
		dialog.style.position = "fixed";
		dialog.style.left = left + "px";
		dialog.style.top = top + "px";
		dialog.style.background = "rgb(255,255,255)";
		dialog.style.zIndex = "2";

		document.body.appendChild(dialog);

		var view = document.createElement("div");
		view.style.background="#f8deec"; 
		view.style.width = "100%";
		view.style.height = "100%";
		dialog.appendChild(view);


		var btnClose = document.createElement("input");
		btnClose.type = "button";
		btnClose.value = "X";
		btnClose.style.position = "absolute";
		btnClose.style.right = "-5px";
		btnClose.style.top = "-5px";
		btnClose.style.padding = "3px";

		dialog.appendChild(btnClose);

		btnClose.onclick = function() {

			document.body.removeChild(dialog);
			document.body.removeChild(screen);
		}



		var request = new window.XMLHttpRequest();

		//비동기 반응
		request.onreadystatechange = function() {
			if (request.readyState == 4)
			view.innerHTML = request.responseText;
			
		
			var btnJoinscreen = document.querySelector("#btn-joinMemScreen");
			btnJoinscreen.onclick = function(){
				
				
				request.open("GET","../joinus/joinMem",true);
				request.send(null);
				/* console.log("joinMem-box input"); */
			} 
			
			var btnJoinscreen = document.querySelector("#btn-joinEnterScreen");
			btnJoinscreen.onclick = function(){
				
				request.open("GET","../joinus/joinEnter",true);
				request.send(null);			
			
			} 
			
		
				
		};
		
		//요청
		request.open("GET", url, true);
		request.send(null);

		//반응 (기다리면 동기 안기다리면 비동기)	
	}
	
	//mypage mouse이벤트
	function asideMenuIcon(point){
		point.onmouseover = function(){
			point.src = "${ctxName}/resource/image/css/"+point.alt+".png";
		};
		
		point.onmouseout = function(){
			point.src = "${ctxName}/resource/image/css/"+point.alt+"-icon.png";
		};
	}
	
	window.addEventListener("load", function() {
		
		//mypage mouse이벤트
		var mypage = document.querySelector("#aside-menu > li:first-child > a > img");
		var coordi = document.querySelector("#aside-menu > li:first-child + li +li > a > img");
		var member = document.querySelector("#aside-menu > li:first-child + li + li + li + li > img");
		var company = document.querySelector("#aside-menu > li:first-child + li + li + li + li + li > a > img");
		var qNa = document.querySelector("#aside-menu > li:last-child > a > img");
		
		
		asideMenuIcon(mypage);
		asideMenuIcon(coordi);
		asideMenuIcon(member);
		asideMenuIcon(company);
		asideMenuIcon(qNa);
	
		

		var btnShowscreen = document.querySelector("#btn-show-screen");
		btnShowscreen.onclick = function() {
			
			showDialog("../joinus/joinSelect");
		};
		
		var btnLoginscreen = document.querySelector("#btn-login-screen");
		btnLoginscreen.onclick = function() {
			
			showDialog("../joinus/login");
		};
	
		

		var searchUp = document.querySelector("#search-up");

		searchUp.onclick = function() {

			var vis = document.querySelector(".search-form");
			/* alert(vis); */
			if (vis.style.visibility == "visible")
				vis.style.visibility = "hidden";
			else
				vis.style.visibility = "visible";
		};

	});

</script>





<aside id="aside">
	<!-- <div class="content-wrapper"> -->
	<h1 class="Hidden">전체메뉴</h1>
	<nav>
		<h1 class="Hidden">메뉴</h1>
		<ul id="aside-menu">
			<li><a href="${ctxName}/tastecoordi/mypage/myCodi"><img
					src="${ctxName}/resource/image/css/mypage-icon.png" alt="mypage" class="btn-login-screen"></a></li>

			<c:if test="${empty pageContext.request.userPrincipal.name}">
				<li><%-- <a href="${ctxName}/joinus/login"> --%><img
						src="${ctxName}/resource/image/css/login-icon.png" alt="login" id="btn-login-screen"></a></li>
			</c:if>
			<c:if test="${not empty pageContext.request.userPrincipal.name}">
				<%-- <security:authentication property="authorities" var="authorities" />
						<c:forEach items="${authorities}" var="auth">
							${auth.authority}
						</c:forEach> 
						<a href="${ctxName}/j_spring_security_logout"><security:authentication property="name" />--%>
				<li><a href="${ctxName}/j_spring_security_logout"><img
					src="${ctxName}/resource/image/css/logout.png" alt="Logout"></a></li>
			</c:if>

			<li><a href="${ctxName}/tastecoordi/codiRoom"><img
					src="${ctxName}/resource/image/css/coordi-icon.png" alt="coordi"></a></li>

			<li><img src="${ctxName}/resource/image/css/search-icon.png"
				alt="search" id="search-up"></li>

			<li><img src="${ctxName}/resource/image/css/member-icon.png"
				alt="member" id="btn-show-screen"></li>


			<li><a href="${ctxName}/admin/adminMember"> <img
					src="${ctxName}/resource/image/css/company-icon.png" alt="company" class="btn-login-screen"></a>
			</li>
			<li><a href="${ctxName}/tastecoordi/qna"><img
					src="${ctxName}/resource/image/css/q&a-icon.png" alt="q&a"></a></li>


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


