<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<c:set var="ctxName" value="${pageContext.request.contextPath}"/>           

<html>
<head>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
	//jquery 복붙 소스
	$(function(){
	    //전체선택 체크박스 클릭
		$("#all-check").click(function(){
			//만약 전체 선택 체크박스가 체크된상태일경우
			if($("#all-check").prop("checked")) {
				//해당화면에 전체 checkbox들을 체크해준다
				$("input[type=checkbox]").prop("checked",true);
			// 전체선택 체크박스가 해제된 경우
			} else {
				//해당화면에 모든 checkbox들의 체크를해제시킨다.
				$("input[type=checkbox]").prop("checked",false);
			}
		})
	})
	
	
	/* ----------------------------- */
	
	
	function createPopup(url){
		var screen = document.createElement("div");//검은바탕

		screen.style.position = "fixed";
		screen.style.left = "0px";
		screen.style.top = "0px";
		screen.style.width = "100%";
		screen.style.height = "100%";
		screen.style.background = "black";
		screen.style.opacity = "0.3";
		screen.style.overflow = "hidden";
	   
		document.body.appendChild(screen);
		
		//중앙좌표를 계산하기 위함
		var docWidth = window.innerWidth; //창의 너비 및 높이		
		var docHeight = window.innerHeight;
		var width = 400; //view의 너비 및 높이
		var height = 230;
		var left = docWidth/2 - width/2;
		var top = docHeight/2 - height/2;
		
		var dialog = document.createElement("div");//뷰
		
		dialog.style.position = "fixed";
		dialog.style.left = left + "px";
		dialog.style.top = top + "px";
		dialog.style.width = width + "px";
		dialog.style.height = height + "px";
		dialog.style.background = "rgb(249, 227, 236)"; //분홍
		
		document.body.appendChild(dialog);
		
		var viewContent = document.createElement("div");//내용
		
		dialog.appendChild(viewContent);	
		
		var btnClose = document.createElement("input");
		btnClose.type = "button";
		btnClose.value = "닫기";
		btnClose.style.position="absolute";
		btnClose.style.right = "-10px";
		btnClose.style.top = "-10px";

		dialog.appendChild(btnClose);
		
		btnClose.onclick = function(){
			document.body.removeChild(dialog);
			document.body.removeChild(screen);
			document.body.style.overflow = "auto";
		};
		
		var request = new XMLHttpRequest(); 
		//완료된 다음에 넘겨라
		request.onreadystatechange = function(){
			if (request.readyState == 4){
				
				viewContent.innerHTML = request.responseText; //기다리지않으므로 출력결과가 없다.	
				//= 대치, += 추가				

			}
		}
		
		//주소창 입력
		request.open("GET", url , true); //비동기가 기본형
		//전달
		request.send(null);
		
						
    }
	
	
	window.addEventListener("load", function(){
		var regClothes = document.querySelector("#btn-right > p");
		
		if(regClothes.dataset.code == "ROLE_USER")
			regClothes.style.display = "none";
		
		regClothes.onclick = function(){
			createPopup("myClothesReg");
			document.body.style.overflow = "hidden";
		};
		
	});
</script>

</head>

	<body>
	
		<main id="item-list">	
			<section>
				<h1 class="hidden">내 옷장</h1>
				
				<section id="clothes-list">
								
					<h1 class="hidden">상품목록</h1>
					
					<form name="itemForm" method="post" action="myClothesDel">
						<div id = "item-btn">
							<div id="btn-left">
								<input type="checkbox" id="all-check">check all<br>
							</div>
							<div id="btn-right">
								<p data-code="${m.defaultRole}">아이템 등록</p>
								<%-- <security:authorize ifAnyGranted="ROLE_ENTER">
								</security:authorize> --%>
								&emsp;
								<input type="submit" value="삭제">		
							</div>
						</div>
						
						<div id="items">	
												
							<ul>							
								<c:forEach var="clothes" items="${list}" varStatus="status">
									<li>
										<div>
											<input type="checkbox" name="check" value="${clothes.code}"/>
										</div>
										<div>	
											<img class="items" src="${ctxName}/resource/image/clothes/${clothes.image}">
										</div>
									</li>
											
								</c:forEach>
							</ul>
							
						</div>
				
					</form>		
					
				</section>
					
			</section>	
		</main>
		
	</body>

</html>