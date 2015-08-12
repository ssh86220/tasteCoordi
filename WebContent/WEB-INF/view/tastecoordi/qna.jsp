<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="titles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<link href="../resource/css/qna.css" rel="stylesheet" type="text/css" />

<!DOCTYPE html>

			<main id="main">	
			<div class="content-wrapper">
			<h1 class="Hidden">QnA</h1>
			<div>
				
				<section id="qna">
					<h1 class="Hidden">게시판 목록</h1>
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>아이디</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						
							<c:forEach var="q" items="${list}">
								<tr>
									<td>${q.number}</td>
									<td><a href="qnaDetail?c=${q.number}">${q.title}</a></td>
									<td>${q.mid}</td>
									<td><f:formatDate value="${q.regDate}"
											pattern="yyyy-MM-dd" /></td>
									<td>${q.hits}</td>
								</tr>

							</c:forEach>

					</table>
				</section>
				
				<section>
					<h1 class="Hidden">QnA 검색폼</h1>
					<form>
						<fieldset>
							<legend class="Hidden">QnA 검색정보</legend>
							<label class="Hidden">검색필드</label> <select>
								<option>제목</option>
								<option>작성자</option>
							</select> <label>검색어</label> <input type="text" /> <input type="submit"
								value="검색" />
						</fieldset>
					</form>
				</section>



				<nav>
					<h1 class="Hidden">글쓰기 목록</h1>
					<security:authorize ifAnyGranted="ROLE_USER">
					<div>
						<a href="qnaReg"><img src="${ctxName}/resource/image/css/btn-write.png" alt="글쓰기" /></a>
					</div>
					</security:authorize>
				</nav>

				<nav id=page class="clearfix">
					<h1 class="Hidden">페이지</h1>
					<p><a href="">이전</a></p>
					<ul>
						<li><a href="qna?page=1">[1]</a></li>
						<li><a href="qna?page=2">[2]</a></li>
						<li><a href="qna?page=3">[3]</a></li>
						<li><a href="qna?page=4">[4]</a></li>
						<li><a href="qna?page=5">[5]</a></li>
					
					</ul>
					<p><a href="">다음</a></p>
				</nav>



				<section id="service">
					<h1>고객센터 번호</h1>
					<p>02-123-4567</p>
				</section>

			</div>
			</div>
			</main>
		