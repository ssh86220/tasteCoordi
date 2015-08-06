<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl(core lib: 대부분 제어와 관련) 접두사와 처리기 선언-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

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
</head>
<body>
		<main id="item-list">	
			<section>
				<h1>내 코디</h1>
				
				<section id="coordies-list">
								
					<h1 class="hidden">상품목록</h1>
					
					<form name="itemForm" method="post" action="myJjimsDel">
						<input type="submit" value="삭제">
						
						<table>
							<thead>
								<tr>
									<th><input type="checkbox" id="all-check">check all<br></th>
									<th>코드</th>
									<th>이미지명</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="jjim" items="${list}">	
								<tr>
									<td><input type="checkbox" name="check" value="${jjim.clothesCode}"/></td>
									<td>${jjim.clothesCode}</td>
									<td><img src="${ctxName}/resource/image/clothes/${jjim.image}">${jjim.image}</td>
															
								</tr>
			
							</c:forEach>
							</tbody>
						</table>
					</form>		
					
				</section>
					
			</section>	
		</main>

</body>
</html>

