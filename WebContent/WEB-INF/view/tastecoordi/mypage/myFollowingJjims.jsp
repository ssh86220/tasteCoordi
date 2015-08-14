<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl(core lib: 대부분 제어와 관련) 접두사와 처리기 선언-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>    

		<main id="item-list">	
			<section>
				<h1 class="hidden">찜한 아이템</h1>
				
				<section id="clothes-list">
								
					<h1 class="hidden">상품목록</h1>

						<div id="items">	
												
							<ul>							
								<c:forEach var="followingJjim" items="${list}" >
									<li>
										<img class="items" src="${ctxName}/resource/image/clothes/${followingJjim.image}">
									</li>
		
								</c:forEach>
							</ul>
							
						</div>

					
				</section>
					
			</section>	
		</main>

