<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!--코드블럭 -->
	<%
		
	%>

<!DOCTYPE html>


	<main id="main">
	<div class="content-wrapper">
	<section>
	<h1 class="Hidden">QnA</h1>
	
		<section>
		<h1>게시판</h1>
		</section>
		
		<section>
		<h1 class="Hidden">게시판 내용</h1>
		<form method="post">
			<fieldset>
			<legend class="Hidden">공지사항 정보</legend>
			<dl>
				<dd><input type="Hidden" name="mid" value="kimdill"></dd>
				<dt>제목</dt>
				<dd><input name="title"></dd>
				<!-- <dt>첨부파일</dt>
				<dd><input type="file" name="file"></dd> -->
				<dt>이메일</dt>
				<dd><input type="email" name="email"></dd>
				<!-- <dt>답변메일받기<input type="checkbox" value="체크"/>답변메일받기</dt><br/> -->
				<dt>내용</dt>
				<dd><textarea rows="20" cols="40" name="content"></textarea></dd>
			</dl>			
			<div><input type="submit" value="등록"></div>
			
			</fieldset>
		</form>
	</section>

	
		<nav>
		<h1 class="Hidden">글쓰기 목록</h1>
			<div>
			<a href="qna">목록</a>
			
			</div>
		</nav>
		
		<section>	
		<h1>고객센터 번호</h1>
		<p>02-123-4567</p>
		</section>
	
	</section>
	</div>	
	</main>
	