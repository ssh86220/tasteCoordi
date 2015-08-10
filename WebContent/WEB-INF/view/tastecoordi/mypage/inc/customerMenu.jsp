<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>            
    
    
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
							<div>
								<a href="myInfo">내 정보 수정</a>
							</div>
						</nav>
						
						<article id = "social-count">
							<h1 class="hidden">회원/업체 social 정보</h1>
							<p style="background: url('${ctxName}/resource/image/css/nt.JPG') no-repeat 121px;">팔로워  &emsp; <a href="myFollower">${follower}</a></p>
							<p style="background: url('${ctxName}/resource/image/css/nt.JPG') no-repeat 121px;">팔로잉  &emsp;  <a href="myFollowing">${following}</a></p>
							<p style="background: url('${ctxName}/resource/image/css/nt.JPG') no-repeat 121px;">&nbsp;&nbsp;&nbsp;댓글  &emsp;&nbsp;&nbsp;${commentCnt}</p>
						</article>
		
					</section>
					
					<nav>
						<h1 class="hidden">회원 선택 메뉴</h1>
						<ul id="cumtomer-select-menu">
							<li><a href="myCodi">내 코디</a></li>
							<li><a href="myClothes">내 옷장</a></li>
							<li><a href="myLikes">좋아요</a></li>
							<li><a href="myJjims">찜한 아이템</a></li>
						</ul>
					</nav>
				</div>
				</section>			
			</aside>    