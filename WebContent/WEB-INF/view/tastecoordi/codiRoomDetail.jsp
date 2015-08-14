<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="ctxName" value='${pageContext.request.contextPath}'/> 
 <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<link href="../resource/css/codiRoom.css" type="text/css" rel="stylesheet" />	
		<div class="content-wrapper clearfix">		
		<section class="clearfix">
			<h1 class="Hidden">코디하기</h1>
		
		<!-- 캔버스 영역 -->
			<section id="canvas" class="clearfix">
				<h1 class="Hidden">코디 캔버스</h1>
				
				<section id="turn">
				<h1 class="Hidden">코디 순서 표시 및 저장</h1>
					<ul class="clearfix">
						<li>새로하기 버튼</li>
						<li>이전 버튼</li>
						<li>이후 버튼</li>
						<li>코디 저장 버튼</li>
					</ul>
				</section>
				
				<section id="coordi-canvas">
				<h1 class="Hidden">코디 영역</h1>
					<div>
					<section>
					 <h1 class="Hidden">코디 아이템 정보</h1>
						<table>
							<tbody>
								<tr>
									<td rowspan = 5><img id="detail-img" src="${ctxName}/resource/image/clothes/${c.image}"> </td>
								</tr>
								<!-- jjimsPeopleList에 아이디가 없으면 찜하기를 보여준다 -->
								
								 <c:if test="${empty jjimPeopleList || empty pageContext.request.userPrincipal.name}"> 
									<form method="POST">
									<tr>
										<td>										
											<input class="button jjim-button" type="submit" value="찜하기"/> 
											count : ${count}
											찜한 사람들 :  
											<c:forEach var="j" items="${jjimPeopleList}">
											 ${j.mid}
											</c:forEach>
										</td>
									</tr>
								</form>
								 </c:if> 
								
								<!-- jjimsPeopleList에 아이디가 있으면 찜취소를 보여준다 -->
								 <c:if test="${not empty jjimPeopleList && not empty pageContext.request.userPrincipal.name}"> 
									<form method="POST" action="codiRoomJjimsDelete?c=${c.code}&mid=${id}">
									<tr>
										<td>
											<input class="button jjim-delete-button" type="submit" value="찜취소"/>
											count : ${count}
											찜한 사람들 : 
											<c:forEach var="j" items="${jjimPeopleList}">
											 ${j.mid}
											</c:forEach>
										</td>
									</tr>
								</form>
								</c:if> 
								<tr>
									<td><img id="site" src="${ctxName}/resource/image/css/codiRoom-shop.png">${c.link}</td>
								</tr>
								<tr>
									<td><img id="price" src="${ctxName}/resource/image/css/codiRoom-price.png">${c.price}원</td>
								</tr>		
							</tbody>				
						</table>
					</section> 			
					</div>					
				</section>	
							
			</section>
									
			<!--아이템 영역 -->			
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
						<h1 class="Hidden">아이템 카테고리</h1>
						<ul id="item-category" class="clearfix">
							<li><a href="codiRoomSearch?c=<c:out value="top"/>">
								<img id="category-img" src="${ctxName}/resource/image/css/codiRoom-top.png"/>TOP</a></li>
							<li><a href="codiRoomSearch?c=<c:out value="bot"/>">
							<img id="category-img" src="${ctxName}/resource/image/css/codiRoom-bot.png"/>BOTTOM</a></li>
							<li><a href="codiRoomSearch?c=<c:out value="one"/>">
							<img id="category-img" src="${ctxName}/resource/image/css/codiRoom-onepiece.png"/>ONEPIECE</a></li>
							<li><a href="codiRoomSearch?c=<c:out value="out"/>">
							<img id="category-img" src="${ctxName}/resource/image/css/codiRoom-outer.png"/>OUTER</a></li>
							<li><a href="codiRoomSearch?c=<c:out value="sho"/>">
							<img id="category-img" src="${ctxName}/resource/image/css/codiRoom-shoes.png"/>SHOES</a></li>
							<li><a href="codiRoomSearch?c=<c:out value="acc"/>">
							<img id="category-img" src="${ctxName}/resource/image/css/codiRoom-acc.png"/>ACCSSORY</a></li>					
						</ul>
					
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
					<h1 class="Hidden">아이템 이미지 목록</h1>
					<section id="product">
						<h1 class="Hidden">이미지 목록</h1>
							<c:forEach var="c" items="${list}">
								<ul id="item-img" class="clearfix">									
									<li>
										<a href="codiRoomDetail?c=${c.code}<%-- &mid=${id} --%>">
										<img src="${ctxName}/resource/image/clothes/${c.image}">
										</a>
									</li>							
								</ul>
							</c:forEach>						
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
