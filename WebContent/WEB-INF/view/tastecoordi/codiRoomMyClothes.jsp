<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value='${pageContext.request.contextPath}'/> 
<link href="../resource/css/codiRoom.css" type="text/css" rel="stylesheet" />
<!-- <script type="text/javascript" src="../resource/js/codiRoom.js"></script> -->	
<script type="text/javascript">
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
		view.innerHTML = request.responseText;
	}

	//요청
	request.open("GET", url, true);
	request.send(null); 

	//반응 (기다리면 동기 안기다리면 비동기)	
}

	
	window.addEventListener("load", function(){
		var clothesUpload = document.querySelector("#product > a");
		
		clothesUpload.onclick = function(){
			
			//alert("tt");
			showDialog("codiRoomMyClothesUpload");
			
		};
		
	});
</script>

		<div class="content-wrapper clearfix">		
		<section class="clearfix">
			<h1 class="Hidden">코디하기</h1>
		
		<!-- 캔버스 영역 -->
			<section id="canvas" class="clearfix">
				<h1 class="Hidden">코디 캔버스</h1>
				
				<section id="turn">
				<h1 class="Hidden">코디 순서 표시 및 저장</h1>
					<ul class="clearfix">
						<li id="re"><a href="">
						<img src="${ctxName}/resource/image/css/codiRoom-re.jpg">새로하기</a></li>
						<li id="pre"><a href="">←</a></li>
						<li id="next"><a href="">→</a></li>
						<li id="save"><a href="">
						<img src="${ctxName}/resource/image/css/codiRoom-save.png">저장하기</a></li>
					</ul>
				</section>	
				
				<section id="coordi-canvas">
				<h1 class="Hidden">코디 영역</h1>
					<div></div>		 			
				</section>	
										
			</section>
									
			<!-- 아이템 영역 -->
			<section id="item" class="clearfix">
				<h1 class="Hidden">코디 아이템</h1>
			
			<!-- 아이템 선택 영역 -->
			<section>
				<h1 class="Hidden">아이템 선택하기</h1>
				
				<section>
					<h1 class="Hidden">아이템 저장소</h1>
						<ul id="item-menu" class="clearfix">
							<li><a href="codiRoom">의류</a></li>
							<li><a href="codiRoomMyClothes">내 옷장</a></li>
							<li><a href="codiRoomJjims">찜 아이템</a></li>
						</ul>			
				
				<div id="coordi-item">			
				<section>
						<h1 class="Hidden">아이템 색상 선택</h1>
						<form method="post" action="codiRoomSearch">
						<select name="color">
							<option value="red">빨강</option>
							<option value="orange">주황</option>
							<option value="yellow">노랑</option>
							<option value="green">초록</option>
							<option value="blue">파랑</option>	
							<option value="navy">남색</option>
							<option value="purple">보라</option>	
							<option value="black">검정</option>	
							<option value="white">흰색</option>	
							<option value="gray">회색</option>
							<option value="pink">분홍</option>	
							<option value="beige">베이지</option>
							<option value="brown">갈색</option>							
						</select>
						<input type ="submit" value="검색">
						</form>												
				</section>
				
				<!-- 상품 이미지 목록 -->
				<section>
				<h1 class="Hidden">내 옷장 이미지 목록</h1>	
							
				<section id="product">
					<h1 class="Hidden">아이템 등록</h1>
						<a>
						<!-- <a href="codiRoomMyClothesUpload" id="upload"> -->아이템 등록하기</a>
						<h1 class="Hidden">이미지 목록</h1>
							<form method="POST" action="codiRoomMyClothesDelete">
							<div class="check"><input type="submit" value="삭제하기"></div>
							<c:forEach var="c" items="${list}">									
								<ul id="myClothes-img" class="clearfix">									
									<li>
									<img src="${ctxName}/resource/image/clothes/${c.image}">
									<input type="checkbox" name="check" value="${c.code}"/>
									</li>							
								</ul>							
							</c:forEach>								
						</form>						
				</section>
				
				<nav id="pager">
					<h1 class="Hidden">페이저</h1>
					<ul>
						<li><a href="">PREV</a></li> 
						<li><a href="">1</a></li> 
						<li><a href="">2</a></li> 
						<li><a href="">[3]</a></li>
						<li><a href="">4</a></li>
						<li><a href="">...</a></li>
						<li><a href="">40</a></li>
						<li><a href="">NEXT</a></li>
						</ul>
				</nav>			
			</section>	
			</div>
		</section>			
	</section>
	  

																
	</section>
</section>		
