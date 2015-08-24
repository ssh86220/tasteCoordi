<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코디룸 내 옷장 아이템 등록</title>
</head>
<body>
	<header>
		
	</header>
	
	<aside>
		
	</aside> -->
	<main>	
	<section>
			<h1>아이템등록하기 </h1>
			<form method="POST" enctype="multipart/form-data" action="codiRoomMyClothesUpload">
			
				<dl>				
					<dd><input type='hidden' name='mid' value="<security:authentication property="name"/>"/></dd>
					
					<dt>아이템 이름</dt>
					<dd><input name='name'/></dd>
				
					<dt>카테고리</dt>
					<select name="categories">
						<option value="top">상의</option>
						<option value="bot">하의</option>
						<option value="one">원피스</option>
						<option value="out">아우터</option>
						<option value="sho">신발</option>	
						<option value="acc">패션잡화</option>					
					</select>
										
					<dt>색상</dt>
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
					
					<dt>아이템 이미지</dt>
					<dd><input type='file' name='file' /></dd>
				</dl>
				<div><input type="submit" value="등록하기"/></div>
			
			</form>
			</section>	
		
	</main>
	
<!-- 	<footer>
	</footer>

</body>
</html> -->