<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>       

		<main id="item-list">	
			<section>
				<h1 class="hidden">좋아요</h1>
				
				<section id="clothes-list">
								
					<h1 class="hidden">상품목록</h1>
										
						<div id="items">	
												
							<ul>							
								<c:forEach var="followingLike" items="${list}">
									<li>
										<img class="items" src="${ctxName}/resource/image/clothes/${followingLike.img}">
									</li>		
								</c:forEach>
							</ul>
							
						</div>

					
				</section>
					
			</section>	
		</main>

