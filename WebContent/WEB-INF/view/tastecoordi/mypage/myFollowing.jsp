<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl(core lib: 대부분 제어와 관련) 접두사와 처리기 선언-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<c:set var="ctxName" value="${pageContext.request.contextPath}"/> 

<html>
<head>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
	//jquery 복붙 소스
	$(function(){
	    //전체선택 체크박스 클릭
		$("#all-check").click(function(){
			//만약 전체 선택 체크박스가 체크된상태일경우
			if($("#all-check").prop("checked")) {
				//해당화면에 전체 checkbox들을 체크해준다
				$("input[type=checkbox]").prop("checked",true);
			// 전체선택 체크박스가 해제된 경우
			} else {
				//해당화면에 모든 checkbox들의 체크를해제시킨다.
				$("input[type=checkbox]").prop("checked",false);
			}
		})
	})
	
</script>

<style>
#items img
{border-radius:100px; display: block; margin-left: auto; margin-right: auto;}
#items p
{text-align: center;}
</style>

</head>
<body>
		<main id="item-list">	
			<section>
				<h1 class="hidden">팔로잉</h1>
				
				<section id="clothes-list">
								
					<h1 class="hidden">팔로잉목록</h1>
					
					<form name="itemForm" method="post" action="myFollowingDel">
						<div id = "item-btn">
							<div id="btn-left">
								<input type="checkbox" id="all-check">check all<br>
							</div>
							<div>
								<input type="submit" value="삭제">		
							</div>
						</div>
					
						<div id="items">	
												
							<ul>							
								<c:forEach var="following" items="${list}" varStatus="status">
									<li>
										<div>
											<input type="checkbox" name="check" value="${following.tagetMid}"/>
										</div>
										<div>
											<c:choose>
												<c:when test="${empty following.followingImg}">
													<h1><img src="${ctxName}/resource/image/profile/pro.JPG" alt="팔로워이미지" ></h1>
												</c:when>
												<c:otherwise>
													<h1><img src="${ctxName}/resource/image/profile/${following.followingImg}" alt="팔로워이미지" ></h1>
												</c:otherwise>
											</c:choose>
										</div>
										<p>${following.tagetName}</p>
									</li>
									<%-- <c:if test="${status.count%5 eq 0}"><br></c:if>	 --%>		
								</c:forEach>
							</ul>
							
						</div>
				
					</form>		
					
				</section>
					
			</section>	
		</main>

</body>
</html>