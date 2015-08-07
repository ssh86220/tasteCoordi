<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>   
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <c:set var="ctxName" value='${pageContext.request.contextPath}'/>  
    
 <c:set var="ctxName" value='${pageContext.request.contextPath}'/>  
	<aside id="aside">
		<!-- <div class="content-wrapper"> -->
		<h1 class="Hidden">전체메뉴</h1>
		<nav>
			<h1 class="Hidden">메뉴</h1>
			<ul>
				<li><a href="${ctxName}/tastecoordi/mypage/myCodi"><img
						src="${ctxName}/resource/image/css/mypage-icon.png" alt="Mypage"></a></li>			 
				<%-- <li><a href=""><img
						src="${ctxName}/resource/image/css/login-icon.png" alt="Login"></a></li> --%>
				
				<c:if test="${empty pageContext.request.userPrincipal.name}">
						<li><a href="${ctxName}/joinus/login"><img
						src="${ctxName}/resource/image/css/login-icon.png" alt="Login"></a></li>
					</c:if>
					<c:if test="${not empty pageContext.request.userPrincipal.name}">
						<%-- <security:authentication property="authorities" var="authorities" />
						<c:forEach items="${authorities}" var="auth">
							${auth.authority}
						</c:forEach> 
						<a href="${ctxName}/j_spring_security_logout"><security:authentication property="name" />--%>
						<a href="${ctxName}/j_spring_security_logout"><img
						src="${ctxName}/resource/image/css/logout.png" alt="Logout"></a>	
					</c:if>		
						
						
				<li><a href="codiRoom"><img
						src="${ctxName}/resource/image/css/coordi-icon.png" alt="Coordi"></a></li>
				<li><a href="tsmainSearch"><img
						src="${ctxName}/resource/image/css/search-icon.png" alt="Search"></a></li>

				<!-- <form>

						<fieldset> -->
				<!-- 			<legend>검색정보</legend>
							<h3>스타일검색</h3>
							<label>스타일</label> <select>
								<option value=cj>캐쥬얼</option>
								<option value=dd>댄디</option>
								<option value=ro>로맨틱</option>
								<option value=cl>클래식</option>
								<option value=bo>보이쉬</option>
								<option value=hh>힙합</option>
								<option value=ss>섹시</option>
								<option value=vv>빈티지</option>
								<option value=of>오피스</option>
							</select>
							<h3>아이템검색1</h3>
							<label>카테고리</label> <select>
								<option value=top>상의</option>
								<option value=bot>하의</option>
								<option value=out>아우터</option>
								<option value=dre>원피스</option>
								<option value=sho>신발</option>
								<option value=acc>잡화</option>
							</select> <label>색상필드</label><select>
								<option value=red>빨강</option>
								<option value=org>주황</option>
								<option value=yel>노랑</option>
								<option value=grn>초록</option>
								<option value=blu>파랑</option>
								<option value=nav>남색</option>
								<option value=pur>보라</option>
								<option value=blc>검정</option>
								<option value=gry>회색</option>
								<option value=pik>분홍</option>
								<option value=beg>베이지</option>
								<option value=brw>갈색</option>
								<option value=wht>흰색</option>
							</select>

							<h3>아이템검색2</h3>
							<label>카테고리</label> <select>
								<option value=top>상의</option>
								<option value=bot>하의</option>
								<option value=out>아우터</option>
								<option value=dre>원피스</option>
								<option value=sho>신발</option>
								<option value=acc>잡화</option>
							</select> <label>색상필드</label><select>
								<option value=red>빨강</option>
								<option value=org>주황</option>
								<option value=yel>노랑</option>
								<option value=grn>초록</option>
								<option value=blu>파랑</option>
								<option value=nav>남색</option>
								<option value=pur>보라</option>
								<option value=blc>검정</option>
								<option value=gry>회색</option>
								<option value=pik>분홍</option>
								<option value=beg>베이지</option>
								<option value=brw>갈색</option>
								<option value=wht>흰색</option>
							</select>

							<h3>아이템검색3</h3>
							<label>카테고리</label> <select>
								<option value=top>상의</option>
								<option value=bot>하의</option>
								<option value=out>아우터</option>
								<option value=dre>원피스</option>
								<option value=sho>신발</option>
								<option value=acc>잡화</option>
							</select> <label>색상필드</label><select>
								<option value=red>빨강</option>
								<option value=org>주황</option>
								<option value=yel>노랑</option>
								<option value=grn>초록</option>
								<option value=blu>파랑</option>
								<option value=nav>남색</option>
								<option value=pur>보라</option>
								<option value=blc>검정</option>
								<option value=gry>회색</option>
								<option value=pik>분홍</option>
								<option value=beg>베이지</option>
								<option value=brw>갈색</option>
								<option value=wht>흰색</option>
							</select>

						</fieldset> -->
				<li><a href=""><img
						src="${ctxName}/resource/image/css/company-icon.png" alt="Company"></a></li>
				<li><a href="qna"><img
						src="${ctxName}/resource/image/css/q&a-icon.png" alt="Q&A"></a></li>
			</ul>
		</nav>
		<!-- </div> -->
	</aside>