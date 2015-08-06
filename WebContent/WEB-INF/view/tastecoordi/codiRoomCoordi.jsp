<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코디룸 내 옷장 아이템 등록</title>
</head>
<body>
	<header>
		
	</header>
	
	<aside>
		
	</aside>
	
	<main>	
	<section>
			<h1>코디 저장하기 </h1>
			<form method="post" action="codiRoomCoordi">			
				<dl>										
					<dt>스타일</dt>
					<select name="style">
						<option value="로맨틱">로맨틱</option>
						<option value="캐주얼">캐주얼</option>
						<option value="클래식">클래식</option>
						<option value="댄디">댄디</option>
						<option value="보이쉬">보이쉬</option>
						<option value="힙합">힙합</option>	
						<option value="오피스">오피스</option>	
						<option value="섹시">섹시</option>	
						<option value="빈티지">빈티지</option>							
					</select>
					
					<dt>내용</dt>
					<dd><textarea rows="6" cols="50" name='content'></textarea></dd>
				</dl>
				<div><input type="submit" value="저장하기"/></div>
			
			</form>
			</section>	
		
	</main>
	
	<footer>
	</footer>

</body>
</html>