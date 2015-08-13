<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<style>
#items img
{border-radius:100px; display: block; margin-left: auto; margin-right: auto;}
#items p
{text-align: center;}
</style>


		<main id="item-list">	
			<section>
				<h1 class="hidden">팔로워</h1>
				
				<section id="clothes-list">
								
					<h1 class="hidden">팔로워</h1>
					
					
					<div id="items">	
												
							<ul>							
								<c:forEach var="follower" items="${list}" varStatus="status">
									<li>
										<div>
											<c:choose>
												<c:when test="${empty follower.followerImg}">
													<h1><img src="${ctxName}/resource/image/profile/pro.JPG" alt="팔로워이미지" ></h1>
												</c:when>
												<c:otherwise>
													<h1><img src="${ctxName}/resource/image/profile/${follower.followerImg}" alt="팔로워이미지" ></h1>
												</c:otherwise>
											</c:choose>
										</div>
										<p>${follower.mName}</p>
									</li>
									<%-- <c:if test="${status.count%5 eq 0}"><br></c:i --%>f>			
								</c:forEach>
							</ul>
							
						</div>
						
				</section>
					
			</section>	
		</main>