<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>    
    
		<main id="item-list">	
			<section>
				<h1>로그인</h1>
				
				<section id="coordies-list">
								
					<h1 class="hidden">로그인</h1>
					
					<form method="post" action="${ctxName}/j_spring_security_check">
						<table cellpadding=5 cellspacing=0 border="1">
						<tr>
							<td bgcolor=#99CCFF> 아이디</td>
							<td> <!-- <input type="text" name="id" size=20> --><input name="j_username" class="text" /></td>
						</tr>
						<tr>
							<td bgcolor=#99CCFF>비밀번호</td>
							<td><!-- <input type="password" name="pw" size=20> --><input type="password" name="j_password" class="text" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<input type="submit" name="submit" value="로그인"></td>
						</tr>
						</table>
					</form>	
					
				</section>
					
			</section>	
		</main>