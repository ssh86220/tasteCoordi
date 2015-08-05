<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!--코드블럭 -->
	<%
		
	%>

<!DOCTYPE html>
<!-- <html>
<head>
<meta charset="UTF-8">
<title>TASTES COORDI</title>
</head>
<body>
	<header id="header">
		<h1>TASTES COORDI</h1>
		
	</header>

	<aside>
		<nav>
			<h1>메인 메뉴</h1>
			<ul>
				<li><a href="">MyPage</a></li>
				<li><a href="">Login</a></li>
				<li><a href="">CoorDi</a></li>
				<li><a href="">Search</a></li>
				<li><a href="">QnA</a></li>
				<li><a href="">Company</a></li>
			</ul>
		</nav>	
	</aside>
 -->
	<main id="main">
	<section>
	<h1>QnA</h1>
	
		<section>
		<h1>게시판</h1>
		</section>
		
		<section>
		<h1>게시판 내용</h1>
		<form method="post" action="qnaReReg?c=${c.number}">
			<fieldset>
			<legend>공지사항 정보</legend>
			<dl>
				<dd><input type="hidden" name="number" value="${c.number}"></dd>
				<dt>제목</dt>
				<dd><input name="title" value="${c.title}"></dd>
				<dt>이메일</dt>
				<dd><input name="email" value="${c.email}"></dd>
				<!-- <dt>답변메일받기<input type="checkbox" value="체크"/>답변메일받기</dt><br/> -->
				<dt>내용</dt>
				<dd><textarea rows="20" cols="40" name="content">${c.content}</textarea></dd>
					
			</dl>
			<div>
				<input type="submit" value="수정">
			</div>
			</fieldset>
		</form>
			
		
		
	</section>

	
		<nav>
		<h1>글쓰기 목록</h1>
			<div>
			<a href="qna">목록</a>
			
			</div>
		</nav>
		
		<section>	
		<h1>고객센터 번호</h1>
		<p>02-123-4567</p>
		</section>
	
	</section>
	
	</main>
	
	<!-- 
	<footer>
		<section>
		<h1>사이트 정보</h1>
			<p>FreeStyle Copyright@2015</p>
		</section>
	</footer>


</body>
</html> -->