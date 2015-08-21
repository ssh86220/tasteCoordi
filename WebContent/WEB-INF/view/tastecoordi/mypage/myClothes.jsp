<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctxName" value="${pageContext.request.contextPath}"/>           

<html>
<head>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript" src="${ctxName}/resource/mypage/js/myClothesReg.js"></script>
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
<style type="text/css">

	#btn-right > p
	{display: inline-block;}
	#btn-right > p:HOVER {
	cursor: pointer;
	text-decoration: underline;
	}

</style>

</head>

	<body>
	
		<main id="item-list">	
			<section>
				<h1 class="hidden">내 옷장</h1>
				
				<section id="clothes-list">
								
					<h1 class="hidden">상품목록</h1>
					
					<form name="itemForm" method="post" action="myClothesDel">
						<div id = "item-btn">
							<div id="btn-left">
								<input type="checkbox" id="all-check">check all<br>
							</div>
							<div id="btn-right">
								<p data-code="${m.defaultRole}">아이템 등록</p>
								&emsp;
								<input type="submit" value="삭제">		
							</div>
						</div>
						
						<div id="items">	
												
							<ul>							
								<c:forEach var="clothes" items="${list}" varStatus="status">
									<li>
										<div>
											<input type="checkbox" name="check" value="${clothes.code}"/>
										</div>
										<div>	
											<img class="items" src="${ctxName}/resource/image/clothes/${clothes.image}">
										</div>
									</li>
											
								</c:forEach>
							</ul>
							
						</div>
				
					</form>		
					
				</section>
					
			</section>	
		</main>
		
	</body>

</html>