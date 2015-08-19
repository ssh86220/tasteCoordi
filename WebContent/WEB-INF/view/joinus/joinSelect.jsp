<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value='${pageContext.request.contextPath}' />

<style>
#joinLogo img {
	padding-left: 50px;
	width: 70%;
	height: 70%;
}

.joindiv {
	width: 100px;
	height: 180px;
	float: left;
	background: #ffffff;
	text-align: center;
}

.joindiv li:FIRST-CHILD{
	padding-top: 15px;
}

.joindiv img:FIRST-CHILD{
	padding-top: 25px;
	width: 60%;
	height: 60%;
}
#joinBox{
padding-left:45px;
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
		screen.style.opacity = "0.7";

		document.body.appendChild(screen);

		var docHeight = window.innerHeight;
		var docWidth = window.innerWidth;
		var width = "300";
		var height = "300";
		var top = docHeight / 2 - height / 2;
		var left = docWidth / 2 - width / 2;

		var dialog = document.createElement("div");
		dialog.style.width = "300px";
		dialog.style.height = "300px";
		dialog.style.position = "fixed";
		dialog.style.left = left + "px";
		dialog.style.top = top + "px";
		dialog.style.background = "rgb(255,255,255)";

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
			view.innerHTML += request.responseText;
		}

		//요청
		request.open("GET", url, true);
		request.send(null);

		//반응 (기다리면 동기 안기다리면 비동기)	
	}

	window.addEventListener("load", function() {

		var btnShowJoinscreen = document.querySelector("#btn-show-joinScreen");
		btnShowJoinscreen.onclick = function() {
			
			showDialog("../joinus/joinMem");
		};

	}); 

</script>

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
		<div class="joindiv" id="btn-show-joinScreen">
			<ul >
				<li><a href="../joinus/joinMem">일반</a></li>
				<li><a>회원가입</a></li>
				 <a ><img src="../resource/image/css/joinMember.png" /></a> 
				
			</ul>
		</div>
		<div class="joindiv">
			<ul>
				<li><a href="joinEnter">업체</a></li>
				<li><a href="joinEnter">회원가입</a></li>
				<a><img src="../resource/image/css/joinMembers.png"/></a>
			</ul>
		</div>
	</div>
</div>