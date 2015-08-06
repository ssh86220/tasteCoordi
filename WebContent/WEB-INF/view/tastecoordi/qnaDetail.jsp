<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="titles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
	<!--코드블럭 -->
<link href="../resource/css/qnaDetail.css" rel="stylesheet" type="text/css" />

<!DOCTYPE html>


	<main id="main">
	<div class="content-wrapper">
	<h1 class="Hidden">QnA</h1>
	
		<section>
		<h1 id="detail-title">게시판</h1>
		</section>
		
		<article id="detail">
		<h1>게시판 내용</h1>
		
			<dl>
				<dt>제목</dt>
				<dd>${c.title}</dd>
				<dt>아이디</dt>
				<dd>${c.mid}</dd>
				<dt>이메일</dt>
				<dd>${c.email}</dd>
				<dt>조회수</dt>
				<dd>${c.hits}</dd>
				<dt>작성일자</dt>
				<dd><f:formatDate value="${c.regDate}" pattern="yyyy-MM-dd"/></dd>
				<dt>내용</dt>
				<dd>${c.content}</dd>
				
			</dl>
	</article>
	 <section id="reple">
	 <table>
	 <thead>
	 
		 <tr>
				<th>번호</th>
				<th>내용</th>
				<th>아이디</th>
				<th>작성일</th>
		 </tr>
	 </thead>
	
		 	<c:forEach var="q" items="${list}">
			 <tr>
					<td>${q.code}</td>
					<td>${q.content}</td>
					<td>${q.mid}</td>
					<td>${q.regDate}</td>
			</tr>
			</c:forEach>
	 </table>
	 </section>
	 	<section id="write-reple">
	 	
	 	<form method="post" action="addComment">
			<fieldset>
			<legend class="Hidden">댓글 달기</legend>
			<dl>
				<dt>댓글 작성</dt>
				<dd><textarea rows="3" cols="33" name="content"></textarea>
				</dd>
				<dt class="Hidden">아이디</dt>
				<dd class="Hidden"><security:authentication property="name"/></dd>
			</dl>
			<div><input type="submit" value="작성완료"></div>
			</fieldset>
		</form>
		</section>
		<%-- <form method="POST" action="addComment" enctype="multipart/form-data">
			<fieldset>
			<dl>
			<dt>코드</dt>
			<dd><input name="qnaNumber" value="${c.number}"></dd>
			<dt>아이디</dt>
			<dd><security:authentication property="name"/></dd>
			<dt>내용</dt>
			<dd><input name="content"></dd>
			</dl>
			<div><input name="submit" value="등록"></div>
			
			</fieldset>		
			</form>
	 --%>
	
	
		<nav id="detail-menulist" class="clearfix">
		<h1 class="Hidden">속성 목록</h1>
			<div id="list1">
			<a href="qna"><img src="" alt="목록"/></a>
			<div id="list2">
			<form method="post" action="qnaEdit?c=${c.number}">
			<input type="submit" value="수정">
			</form>
			</div>
			<div id="list3">
			<form method="post" action="qnaDelete?c=${c.number}">
			<input type="submit" value="삭제">
			</form>
			</div>
			</div>
		</nav>
			
		
		<section>	
		<h1>고객센터 번호</h1>
		<p>02-123-4567</p>
		</section>
	
	</div>
	</main>
	