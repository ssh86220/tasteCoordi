<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>       
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>            



<style>
	#myinfo > div > p:HOVER
	{cursor: pointer; text-decoration: underline;}
</style>
    
    
			<header id=logo>
				<h1><a href="../tsMain"><img src="${ctxName}/resource/image/css/logo.png" alt="TASTES COORDI" /></a></h1>
			</header>
		
			<aside id="customer-menu">
				<h1 class="hidden">마이페이지</h1>
				
				<section>
					<h1 class="hidden">회원/업체 메뉴</h1>
					
					<div id="customer-menu-text">
					<section>
						<h1 class="hidden">회원/업체 정보</h1>
						
						<article id="profile">
							
							<c:choose>
								<c:when test="${empty userImg}">
									<h1><img src="${ctxName}/resource/image/profile/pro.JPG" alt="회원/업체 프로필사진" ></h1>
								</c:when>
								<c:otherwise>
									<h1><img src="${ctxName}/resource/image/profile/${userImg}" alt="회원/업체 프로필사진" ></h1>
								</c:otherwise>
							</c:choose>
				
						</article>
						

						<nav id="myinfo">
							<h1 class="hidden">회원/업체 정보 수정</h1>
							<c:if test="${targetMid ne id}">	
								<p>${targetMid}</p>
							</c:if>	
							<c:if test="${targetMid eq id}">												
								<p><security:authentication property="name" /></p>
							</c:if>
							<div>
								<c:if test="${targetMid eq id}">	
									<!-- <a href="javascript:ViewLayer();">내 정보 수정</a> -->
									<p>내 정보 수정</p>
								</c:if>
							</div>
						</nav>
						
						<article id = "social-count">
							<h1 class="hidden">회원/업체 social 정보</h1>
							
							<table>
								<tr>
									<td>팔로워</td>
									<td>
									<c:if test="${targetMid ne id}">	
										<img src="${ctxName}/resource/image/css/nt.JPG">
										<p>${follower}</p>
									</c:if>	
									<c:if test="${targetMid eq id}">												
										<a href="myFollower">
										<img src="${ctxName}/resource/image/css/nt.JPG">
										<p>${follower}</p></a>
									</c:if>
									</td>
								</tr>
								<tr>
									<td>팔로잉</td>
									<td>
									<c:if test="${targetMid ne id}">	
										<img src="${ctxName}/resource/image/css/nt.JPG">
										<p>${follower}</p>
									</c:if>	
									<c:if test="${targetMid eq id}">												
										<a href="myFollowing">
										<img src="${ctxName}/resource/image/css/nt.JPG">
										<p>${following}</p></a>
									</c:if>
									</td>
								</tr>
								<tr>
									<td>댓글</td>
									<td>
									<img src="${ctxName}/resource/image/css/nt.JPG">
									<p>${commentCnt}</p>
									</td>
								</tr>
							</table>
							
						</article>
					</section>
					
					
					<nav>
						<h1 class="hidden">회원 선택 메뉴</h1>
						<ul id="cumtomer-select-menu">
							<c:if test="${targetMid ne id}">	
								<li><a href="myFollowingCodi?c=${targetMid}">내 코디</a></li>
							</c:if>	
							<c:if test="${targetMid eq id}">
								<li><a href="myCodi">내 코디</a></li>
							</c:if>
							
							<c:if test="${targetMid eq id}">			
								<li><a href="myClothes">내 옷장</a></li>
							</c:if>	
							
							<c:if test="${targetMid ne id}">	
								<li><a href="myFollowingLikes?c=${targetMid}">좋아요</a></li>
							</c:if>	
							<c:if test="${targetMid eq id}">
								<li><a href="myLikes">좋아요</a></li>
							</c:if>
							

							<c:if test="${targetMid ne id}">	
								<li><a href="myFollowingJjims?c=${targetMid}">찜한 아이템</a></li>
							</c:if>	
							<c:if test="${targetMid eq id}">						
								<li><a href="myJjims">찜한 아이템</a></li>
							</c:if>

						</ul>
					</nav>
					
				</div>
				</section>			
			</aside>   
