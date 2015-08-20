<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<main id="main">
	<div class="content-wrapper clearfix">
	<section>
		<h1 class="Hidden">메인메뉴</h1>


		<section id="lecture-search-form">
			<h1 class="Hidden">상태폼</h1>
			<form method="post" action="adminMemberSearch">
				<fieldset>
					<label>회원검색</label> 
						<select name = "field">
							<option value="id">ID</option>
							<option value="defaultRole">회원등급</option>
							<option value="email">이메일</option>
						</select> 
					<label>회원정보검색</label> 
						<input type="text" name="query" />
						<input type="submit" value="검색" />
				</fieldset>
			</form>
		</section>


		<section>
			<h1 class="Hidden">회원목록</h1>
			<table>
				<thead>
					<tr>
						<th></th>
						<th>ID</th>
						<th>PW</th>
						<th>닉네임</th>
						<th>이메일</th>
						<th>회원등급</th>
						<th>가입일자</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>				
						<c:forEach var="member" items='${list}'>
							<tr>
								<td>
								<c:if test="${not empty member.requestDate && empty member.allowDay}">
								업체등록신청
								</c:if>
								</td>
								<td>${member.id}</td>
								<td>${member.pw}</td>
								<td>${member.name}</td>
								<td>${member.email}</td>
								<td>${member.defaultRole}</td>
								<td><fmt:formatDate value="${member.regDate}"
										pattern="yyyy-MM-dd" /></td>
								<td><%-- <a href="tsMemberModi?id=${n.id}">수정</a> --%>
								<form method="POST" action="adminMemberDelete?c=${member.id}">
							    <input type="submit" value="삭제하기" /> 
							    </form>
								</td>
							</tr>
						</c:forEach>		
				</tbody>
			</table>
		</section>

		<nav>
			<h1 class="Hidden">페이지목록</h1>
			<ul>
				<li><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
			</ul>
		</nav>
	</section>
    </div>
	</main>
