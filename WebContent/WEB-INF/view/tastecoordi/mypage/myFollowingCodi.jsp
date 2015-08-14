<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>



<script type="text/javascript">
	
 	window.addEventListener("load", function(){
 				
		var items = document.getElementById("items");
		var img = items.getElementsByTagName("img");
		
		//0 = 비공개
		for(var i=0; i<img.length; i++)
			if(img[i].alt == 0)
				img[i].parentNode.style.display="none";
		
	});
	
</script>

<style type="text/css">

#clothes-list img
{width: 170px; height: 170px;}

#items li{
	
	width: 200px;
	height: 200px;
	text-align: center;
	}

</style>
  

	<main id="item-list">	
		<section>
			<h1 class="hidden">내 코디</h1>
			
			<section id="clothes-list">
							
				<h1 class="hidden">상품목록</h1>
					
					<div id="items">
											
						<ul>							
							<c:forEach var="followingCodi" items="${list}">
								<li>						
										<img class="items" alt="${followingCodi.open}" src="${ctxName}/resource/image/codi/${followingCodi.img}">
								</li>
							</c:forEach>
						</ul>
						
					</div>
	
				
			</section>
				
		</section>	
		</main>  
	
  		  