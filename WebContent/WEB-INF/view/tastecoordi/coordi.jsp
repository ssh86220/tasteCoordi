<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="titles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<%
%>

<!DOCTYPE html>
<!-- <html>
<head>
<meta charset="UTF-8">
<title>TASTES COORDI</title>
</head>
<body> -->

   <%-- <header id="header">
      <h1><img src="" alt="TASTES COORDI"></h1>

      <section>
         <h1>상태폼</h1>
         <form>
            <fieldset>
               <legend>
                  <a href="">관리자모드</a>
               </legend>
               <label>관리자모드</label><input type="submit" value="관리자모드" />
               <label>로그인</label><input type="submit" value="로그아웃" />
            </fieldset>
         </form>
      </section>
   </header>


   <aside>
      <nav>
         <h1>관리자메뉴</h1>
         <ul>
            <li><a href="">회원관리</a></li>
            <li><a href="">업체관리</a></li>
            <li><a href="">상품관리</a></li>
            <li><a href="">공지관리</a></li>

         </ul>
      </nav>
   </aside> --%>

   <main id="main">
   <section>
      <h1>메인메뉴</h1>

      <section>
         <h1>코디 검색폼</h1>
         <form>
            <fieldset>
               <legend>
                  <a href="">의류검색</a>
               </legend>
               <label>의류검색</label> <select>
                  <option>ALL</option>
                  <option>상의</option>
                  <option>하의</option>
               </select> <label>의류정보검색</label> <input type="text" /> <input type="submit"
                  value="검색" />
            </fieldset>
         </form>
      </section>
      
       <section>
         <h1>의류목록</h1>
         <table>
         <thead>
				<tr>
					<th>상품코드</th>
					<th>카테고리</th>
					<th>상품명</th>
					<th>가격</th>
					<th>업체명</th>
					<th>상품링크</th>
					<th>등록일</th>
					<th>이미지</th>
					<th>관리</th>
					
				</tr>
			</thead>
				
			<tbody>
	        	 <c:forEach var="n" items='${list}'>
	         		 <tr>
						<td>${n.code}</td>
						<td>${n.categories}</td>
						<td>${n.name}</td>
						<td>${n.price}</td>
						<td>${n.siteName}</td>
						<td>${n.link}</td>
						<td>${n.image}</td>
					
						<td><f:formatDate value="${n.regDate}" pattern="yyyy-MM-dd"/></td>
						
												
						<td>
						<div>
						<!-- <a href=""><img src="" alt="수정"/></a> -->
						<form method="post" action="coordiDelete?c=${n.code}">
						<input type="submit" value="삭제">
						</form>
						</div>
						
						</td>
					</tr>
	       		 </c:forEach>
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
<!-- 

</body>
</html> -->