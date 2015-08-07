<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value='${pageContext.request.contextPath}'/> 	
<link href="../resource/css/codiRoom.css" type="text/css" rel="stylesheet" />
		<div class="content-wrapper clearfix">		
		<section class="clearfix">
			<h1 class="Hidden">코디하기</h1>
		
		
		<!-- 캔버스 영역 -->
			<section id="canvas" class="clearfix">
				<h1>코디 캔버스</h1>
				
				<section id="turn">
				<h1>코디 순서 표시 및 저장</h1>
					<ul class="clearfix">
						<li>새로하기 버튼</li>
						<li>이전 버튼</li>
						<li>이후 버튼</li>
						<li>코디 저장 버튼</li>
					</ul>
				</section>							
			</section>
														
			<!-- 아이템 영역 -->
			<section id="item" class="clearfix">
				<h1 class="hidden">코디 아이템</h1>
			
			<!-- 아이템 선택 영역 -->
			<section>
				<h1>아이템 선택하기</h1>
				
				<section>
					<h1>아이템 저장소</h1>
						<ul id="item-menu" class="clearfix">
							<li><a href="codiRoom">의류</a></li>
							<li><a href="codiRoomMyClothes">내 옷장</a></li>
							<li><a href="codiRoomJjims">찜 아이템</a></li>
						</ul>			
							
				<section>
						<%-- <h1>아이템 카테고리</h1>
						<ul id="item-category" class="clearfix">
							<li><a href="codiRoomSearch?c=<c:out value="top"/>">상의</a></li>
							<li><a href="codiRoomSearch?c=<c:out value="bot"/>">하의</a></li>
							<li><a href="codiRoomSearch?c=<c:out value="one"/>">원피스</a></li>
							<li><a href="codiRoomSearch?c=<c:out value="out"/>">아우터</a></li>
							<li><a href="codiRoomSearch?c=<c:out value="sho"/>">신발</a></li>
							<li><a href="codiRoomSearch?c=<c:out value="acc"/>">패션잡화</a></li>					
						</ul> --%>
					
						<h1>아이템 색상 선택</h1>
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
			</section>			
		</section>
	  
			<section>
				<h1>찜 아이템 목록</h1>
				<section>
					<h1>찜한 아이템 목록</h1>
					<c:forEach var="j" items="${list}">
					<%-- <ul>					
						<li>회원 아이디 : ${j.mid} </li>
						<li><a href="codiRoomDetail?c=${j.clothesCode}&mid=${j.mid}">의류 코드: ${j.clothesCode}</a></li>
						<li>찜한 날짜 :${j.regdate}</li>						
					</ul> --%>					
					<ul id="item-img" class="clearfix">									
						<li>
							<a href="codiRoomDetail?c=${j.clothesCode}&mid=${j.mid}">
							<img src="${ctxName}/resource/image/clothes/${j.image}">
							</a>
						</li>
								
					</ul>
					</c:forEach>					
				</section>
				
				<nav>
					<h1>페이저</h1>
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
								
								
			</section>
		</section>	
		</section>
		</div>	