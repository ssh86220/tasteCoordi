<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!--코드블럭 -->

<link href="../resource/css/qnaEdit.css" rel="stylesheet"
	type="text/css" />
<!DOCTYPE html>

<div id="edit-title">
	<div class="content-wrapper">
	<section>
	<h1 class="Hidden">QnA</h1>
	
		<section>
		<h1 id="detail-title">게시판</h1>
		</section>
		
		<article id="detail">
		<h1 class="Hidden">게시판 내용</h1>
		<form method="post" action="qnaReReg?c=${c.number}">
			<fieldset>
			<legend class="Hidden">공지사항 정보</legend>
			<dl>
				<dd><input type="Hidden" name="number" value="${c.number}"></dd>
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
			
		
		
	</article>

	
		<nav>
		<h1 class="Hidden">글쓰기 목록</h1>
			<div>
			<a href="qna">목록</a>
			
			</div>
		</nav>
		
		<section id="service">	
		<h1>고객센터 번호</h1>
		<p>02-123-4567</p>
		</section>
	
	</section>
	</div>
	</div> --%>
	
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="titles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!--코드블럭 -->
<link href="../resource/css/qnaEdit.css" rel="stylesheet"
	type="text/css" />

<!DOCTYPE html>


<div id="page-detail">
	<div class="content-wrapper">
		<h1 class="Hidden">QnA</h1>

		<section>
			<h1 id="detail-title">게시판</h1>
		</section>

		<article id="detail">
			<h1 class="Hidden">게시판 내용</h1>
		<form method="post" action="qnaReReg?c=${c.number}">
			<fieldset>
			<legend class="Hidden">공지사항 정보</legend>
			<dl>
			<div><input type="Hidden" name="number" value="${c.number}"></div>
				<dt>제목 :</dt>
				<dd><input name="title" value="${c.title}"></dd>
				<dt>아이디</dt>
				<dd>${c.mid}</dd>
				<dt>이메일</dt>
				<dd><input name="email" value="${c.email}"></dd>
				<dt>조회수</dt>
				<dd>${c.hits}</dd>
				<dt>작성일자</dt>
				<dd>
					<f:formatDate value="${c.regDate}" pattern="yyyy-MM-dd" />
				</dd>
			</dl>
			<dl id="detailContent">
				<dt>내용</dt>
				<dd><textarea rows="10" cols="83" name="content">${c.content}</textarea></dd>
			</dl>
			<div>
				<input type="submit" value="수정완료">
			</div>
			<div>
				<a href=""><input type="submit" value="취소"></a>
			</div>
			</fieldset>
		</form>
		</article>

		


		<section id="service">
			<h1>고객센터 번호</h1>
			<p>02-123-4567</p>
		</section>

	</div>
</div>
	
	