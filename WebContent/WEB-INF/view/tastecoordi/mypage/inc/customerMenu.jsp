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
								<!-- <a href="myInfo">내 정보 수정</a> -->
								<a href="javascript:ViewLayer();">내 정보 수정</a>
							</div>
						</nav>
						
						<article id = "social-count">
							<h1 class="hidden">회원/업체 social 정보</h1>
							
							<table>
								<tr>
									<td>팔로워</td>
									<td><a href="myFollower">
									<img src="${ctxName}/resource/image/css/nt.JPG">
									<p>${follower}</p></a></td>
								</tr>
								<tr>
									<td>팔로잉</td>
									<td><a href="myFollowing">
									<img src="${ctxName}/resource/image/css/nt.JPG">
									<p>${following}</p></a></td>
								</tr>
								<tr>
									<td>댓글</td>
									<td>
									<img src="${ctxName}/resource/image/css/nt.JPG">
									<p>${commentCnt}</p></td>
								</tr>
							</table>
							
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
			
			<div id="myinfo-pop">
			
				<form method="post" enctype="multipart/form-data" action="myInfo">
					
					<table id="myinfo-form">
						<tr>
							<td>닉네임</td>
							<td><input name="name"/><input type="button" value="중복검사"/></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input name="pw"/></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input name="pw-check"/></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input name="email"/><input type="button" value="중복검사"/></td>
						</tr>
						<tr>
							<td>프로필사진</td>
							<td><input name="file" type="file"/></td>
						</tr>
					</table>
		
					<div id="myinfo-btn">
						<input type="submit" value="수정"/></a>
						<a href="javascript:closeWin();">취소</a>
					</div>
		
				</form>
			
			</div>
				
			
			<div id="mask"></div>
			
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script> 
     function ViewLayer(){
            
            document.getElementById("myinfo-pop").style.visibility="visible";
    	}
     function closeWin(){
    	 document.getElementById("myinfo-pop").style.visibility="hidden";
     }
     
     
    /* 검은막을 구하는 jQuery */
    /* function wrapWindowByMask(){
         //화면의 높이와 너비를 구한다.
         var maskHeight = $(document).height();  
         var maskWidth = $(window).width();  

         //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
         $('#mask').css({'width':maskWidth,'height':maskHeight});  

         //애니메이션 효과
         $('#mask').fadeIn(1000);      
         $('#mask').fadeTo("slow",0.8);    
 	} */

			</script> 
			
<style>
	#myinfo-pop
	{position:absolute;left:395px;top:100px;z-index:200; visibility:hidden;
	width: 430px; height:230px;	border:1px #666666 solid; background:white;
	padding-top: 20px; text-align: center;}
	
	#myinfo-form
	{margin-left: auto; margin-right: auto;}
	#myinfo-form td
	{height: 30px; width: 100px; text-align: center;}
	#myinfo-form td + td
	{width: 300px; text-align: left; padding-left: 10px;}
	#myinfo-form input[type=button]
	{margin-left: 10px;}
	
			
	#myinfo-btn
	{margin-top: 20px;}		
	
	/* 검은막 */
	/* #mask {  
	  position:fix;  
	  left:0;
	  top:0;
	  z-index:9000;  
	  background-color:#000;  
	  display:none;  
	} */
</style>
			
			 