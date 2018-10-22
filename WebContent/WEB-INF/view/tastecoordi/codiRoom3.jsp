<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value='${pageContext.request.contextPath}'/> 
<link href="${ctxName}/resource/css/codiRoom.css" type="text/css" rel="stylesheet" />
				 <section id="resize">
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
								<a href="codiRoomDetail?c=${c.code}&mid=${id}">
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
							<li><a href="codiRoom?page=1">1</a></li> 
							<li><a href="codiRoom?page=2">2</a></li> 
							<li><a href="codiRoom?page=3">[3]</a></li>
							<li><a href="">4</a></li>
							<li><a href="">...</a></li>
							<li><a href="">40</a></li>
							<li><a href="">NEXT</a></li>
						</ul>
					</nav>			
				</section>
