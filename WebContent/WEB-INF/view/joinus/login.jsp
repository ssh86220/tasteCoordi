<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>    
 
 <style>
 #item-list{
  background :  none;
  border : 1px solid red;
 }
 
 
 #coordies-list input{
 border : 1px solid red;
 width: 230px;
 height: 25px;

 }
 
  #coordies-list{
  padding-left: 70px;
  }
 
 
  #coordies-list tr{
   padding-bottom: 10px;
  
  }

 
 #loginLogo img {
	padding-left: 65px;
	width: 70%;
	height: 70%;
}
 
 </style>
 
   
		<main id="item-list">
		
		
	<nav id="loginLogo">
		<h1>
			<a > <img
				src="../resource/image/css/logo.png" alt="TASTES COORDI" />
			</a>
		</h1>
	</nav>	
			<section>
				<h1 class="Hidden">로그인</h1>
				
				<section id="coordies-list">
								
					<h1 class="Hidden">로그인</h1>
					
					<form method="post" action="${ctxName}/j_spring_security_check">
						<table cellpadding=5 cellspacing=0 border="1">
						<tr>
							<!-- <td bgcolor=#99CCFF> 아이디</td> -->
							<td> <!-- <input type="text" name="id" size=20> --><input name="j_username" class="text" /></td>
						</tr>
						<tr>
							<!-- <td bgcolor=#99CCFF>비밀번호</td> -->
							<td><!-- <input type="password" name="pw" size=20> --><input type="password" name="j_password" class="text" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<input type="submit" name="submit" value="Sing up"></td>
						</tr>
						
						</table>
						
						<h1>아직 회원이 아니신가요? 회원가입</h1>
					</form>	
					
				</section>
					
			</section>	
		</main>