<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	function del(){
		var f = document.itemForm;
		f.method = "post";
		f.action = "myCodiDel";
		f.submit();
	}
	
	function state(){
		var f = document.itemForm;
		f.method = "post";
		//f.action = "mypageMyCodiState";
		f.action = "myCodiState";
		f.submit();
	}
	
 	window.addEventListener("load", function(){
		var img = document.getElementById("codi-item");
		
		if(img.alt == 0){
			img.style.borderStyle="solid";
			img.style.borderColor="red";
			img.style.borderWidth="1px";			
		}
		
	});
	
</script>
<style type="text/css">

	/*-----아이템 리스트-----*/
	#items{
	/* border: solid red 1px; */
	display: inline-block;
	padding-top: 30px;
	padding-left: 10px;
	margin-left: 15px;
	}
	
	#item-btn{
	/* border: solid red 1px; */
	/* width: 830px; */
	}
	
	#item-btn > *{
	float:left;
	/* border: solid red 1px; */
	width: 380px;
	text-align: right;
	}
	
	#btn-left{
	text-align: left;
	margin-left: 30px;
	}
	
	#items li{
	float: left;
	/* border: solid green 1px; */
	width: 200px;
	height: 200px;
	}
	
	
</style>

</head>

<body>    

	<main id="item-list">	
		<section>
			<h1 class="hidden">내 코디</h1>
			
			<section id="coordies-list">
							
				<h1 class="hidden">상품목록</h1>
				
				<form name="itemForm">
					<div id = "item-btn">
						<div id="btn-left">
							<input type="checkbox" id="all-check">check all<br>
						</div>
						<div>
							<input type="button" value="삭제" onclick="del()">
							<input type="button" value="공개/비공개" onclick="state()">				
						</div>
					</div>
					
					<div id="items">
											
						<ul>							
							<c:forEach var="codi" items="${list}" varStatus="status">
								<li>
									<div>
										<input type="checkbox" name="check" value="${codi.code}"/>
									</div>
									<div>									
										${codi.open}
										<img id="codi-item"  class="items" alt="${codi.open}" src="${ctxName}/resource/image/codi/${codi.img}" >
									</div>
								</li>
								<c:if test="${status.count%4 eq 0}"><br></c:if>			
							</c:forEach>
						</ul>
						
					</div>
					
				</form>		
				
			</section>
				
		</section>	
		</main>  
	
</body>

</html>    		  