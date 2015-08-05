<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%
	/* 	MemberDao memberDao = new MyBatisMemberDao();
	 List<Member> list = memberDao.getMembers();

	 request.setAttribute("list", list); */
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TSMAIN</title>
</head>
<body>

	<header>

		<h1>
			<img src="../images/logo.png" alt="TASTES COORDI">
		</h1>
		<section>
			<h1>로고</h1>
			<section>
				<h1>상태폼</h1>
				<form>
					<fieldset>
						<legend>관리자모드</legend>
						<label>관리자모드</label><input type="submit" value="관리자모드" /> <label>로그인</label><input
							type="submit" value="로그아웃" />
					</fieldset>
				</form>
			</section>
		</section>
	</header>

	<aside>

		<h1>관리자메뉴</h1>
		<nav>
			<ul>
				<h1>회원</h1>
				<li><a href="">회원관리</a></li>
			</ul>
		</nav>

		<nav>
			<ul>
				<h1>업체</h1>
				<li><a href="">업체관리</a></li>
				<ul>
					<li><a href="">업체등록</a></li>
					<li><a href="">업체목록</a></li>
				</ul>
			</ul>
		</nav>
		<nav>
			<ul>
				<h1>상품</h1>
				<li><a href="">상품관리</a></li>
				<ul>
					<li><a href="">상품목록</a></li>
				</ul>
			</ul>
		</nav>
		<nav>
			<ul>
				<h1>공지</h1>
				<li><a href="">공지관리</a></li>
				<ul>
					<li><a href="">공지등록</a></li>
					<li><a href="">공지목록</a></li>
				</ul>
			</ul>
		</nav>

	</aside>


	<main>
	<section>
		<h1>메인메뉴</h1>


		<section id="lecture-search-form">
			<h1>상태폼</h1>
			<form>
				<fieldset>
					<legend>
						<a href="">회원검색</a>
					</legend>
					<label>회원검색</label> <select>
						<option>ID</option>
						<option>이메일</option>
						<option>닉네임</option>
					</select> <label>회원정보검색</label> <input type="text" /> <input type="submit"
						value="검색" />
				</fieldset>
			</form>
		</section>


		<section>
			<h1>회원목록</h1>
			<table>
				<thead>
					<tr>
						<th>ID</th>
						<th>PW</th>
						<th>닉네임</th>
						<th>이메일</th>
						<th>가입일자</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>

					<form method="POST" action="TsAdminMemDelete">
						<c:forEach var="n" items='${list}'>
							<tr>
								<td>${n.id}</td>
								<td>${n.pw}</td>
								<td>${n.name}</td>
								<td>${n.email}</td>
								<td><fmt:formatDate value="${n.regDate}"
										pattern="yyyy-MM-dd" /></td>
								<td>
									<!-- <input type="submit" value="수정" href="TSMemberModi.jsp" />
								<input type="submit" value="취소" /> --><%--  <a
									href="tsMemberModi?c=${n.id}">수정</a> --%><input type="submit"
									value="삭제하기" /> <input type="checkbox" name="check"
									value="{n.id}" />
								</td>

							</tr>
						</c:forEach>
					</form>
				</tbody>
			</table>
		</section>

		<nav>
			<h1>페이지목록</h1>
			<ul>
				<li><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
			</ul>
		</nav>
	</section>


	</main>


</body>
</html>