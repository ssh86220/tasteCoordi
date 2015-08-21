
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="../resource/css/coordidetail.css" type="text/css" rel="stylesheet" />

<script src = "../resource/js/coordiDetailPage.js" type="text/javascript">
		//js 파일로 링크
</script>

<c:set var="ctxName" value='${pageContext.request.contextPath}'/> 



		<h1 class = "Hidden">코디 상세페이지</h1>
<!-- -----------------1. 코디 상세페이지 상단 -------------------->
		<!-- ---------2. 상단 좌측 코디 이미지 -------------------->
			
				<section id = "coordi-img" >
					<h1 class = "Hidden">코디 이미지</h1>
				
					<img src="${ctxName}/resource/image/codi/${codi.img}" width=420px height=420px>
					
						
				
				</section>
			
		<!------------2. 상단 좌측 코디 이미지 끝 -------------------->

		
		<!-- ---------2. 상단 우측 칸 ----------------->
				<section id = "coordi-contents">
					<h1 class = "Hidden">코디설명</h1>
				<!------------3. 상단 우측 두번째 나누기----------->		
					<section id = "coordi-copyright">
						<h1><img src="../resource/image/css/codicopyright.jpg" alt="코디 저작정보"></h1>
						
					${codi.title} <img src = "../resource/image/css/created.jpg" alt = "created by"> ${codi.mid}<br>
								<br>
								<h1 class = "Hidden">설명</h1>
								<img src = "../resource/image/css/codiiform.jpg" alt ="코디 설명">
								<p>
									${codi.title}
								</p>
								<!-- 코디네이션의 타이틀. 코디 룸 등록시 입력한거 불러와야 함. -->
		
					</section>
					
					
					<nav id = "coordi-like">
						<h1 class = "Hidden">프로필 사진, 좋아요</h1>
						<ul >
							<!-- 프로필 사진 회원정보에 맟춰 불러오기 -->
						 	<%-- 	<c:forEach var="profile" items="${profile}"> --%>
							<li><img id = "profile" src="${ctxName}/resource/image/profile/${profile.image}" width=200px height=200px alt="프로필 사진"></li>
							
							<%-- </c:forEach> --%>
							
							
							<!-- 팔로우 카운트 추가 -->
							<li id = "sns"><a href=""><img src="../resource/image/css/follow.jpg" alt="팔로우 이미지"></a></li>
							
							<!-- 좋아요 카운트 추가 팝업창, 마이페이지로 이동 -->
							<li id = "sns">							
							<!-- <a href=""
								onclick="javascript:window.open('likePop.jsp','popup','scrollbars=no, resizable=no, width=300,height=200')"; return false"> -->
								<img src="../resource/image/css/like.JPG" alt="좋아요 이미지" id="btn-show-like"/>
									
									
									
									
									
							</a></li>
						
						</ul>
					</nav>
				<!------------3. 상단 우측 두번째 나누기 끝----------->		
		
					<div id="clear"></div>
					<section>
					<!-- 코디 댓글 입력 폼 -->
						<form>
							<fieldset>
								<legend>댓글</legend>
								<dl>
									<dd>
										<textarea cols="50" rows="5" name="content"></textarea>
									</dd>
								</dl>					
								<div>
									<input type="submit" value="입력"/>
								</div>
							</fieldset>
						</form>
		
		
		
						<br><br>
						<section id="comment-list">
							<h1 class = "Hidden">댓글 목록</h1>
							<table>
								<thead>
		
									<tr>
										<!-- <th>코드</th> -->
										<th>작성자</th>
										<th>코디코드</th>
										<th>날짜</th>
										<th>내용</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="n" items="${list}">
										<tr>
											<%-- <td>${n.code}</td> --%>
											<td>${n.mid}</td>
											<td><a href="coordiDetailPage?c=${n.codiCode}">${n.codiCode}</a></td>
											
											<td>${n.regDate}</td>
											<td>${n.content}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
		
						</section>
						</p>
		
					</section>
		
		
					
				</section>
		<!-- ---------2.코디 상세페이지 우측 칸 끝---------------------->


<!-- ---------1.코디 상세페이지 하단---------------------->
	<div id="clear"></div>
<br><br><br>

	<section>
		
		<nav id= "coordi-item">
			<h1><img src="../resource/image/css/overview.jpg" alt="Overview"></h1>
			
			<ul>
				<li><a href=""><img src="" alt="이미지1"></a></li>
				<li><a href=""><img src="" alt="이미지2"></a></li>
				
			<!------ 아이템 이미지 불러오기 ----->							
			<c:forEach var="cl" items="${clotheslist}">
				<li>
					<img src="${ctxName}/resource/image/clothes/${cl.image}" width="100px" alt="이미지1">
					${cl.clothesCode}
				</li>
				<%-- <li>${cl.image}</li> --%>
			</c:forEach>	
				
			</ul>
		</nav>

	<div id="clear"></div>


<br><br>
		<nav id= "overview">
			<h1><img src="../resource/image/css/coordi-item.jpg" alt="해당 아이템이 사용된 코디"></h1>
			
			
			<!-- --------코디코드, 코디 이미지 리스트 출력. 안나옴ㅠ 왜일까--------- -->
			<ul>
				<li><a href=""><img src="" alt="이미지1"></a></li>
				<li><a href=""><img src="" alt="이미지2"></a></li>
				<%-- <li><img src="${ctxName}/resource/image/clothes/${c.image}"></li>  --%>
				<li><img src="${ctxName}/resource/image/profile/${profile.image}" width=100px height=100px alt="프로필 사진"></li>
				<%-- <li><img src="${ctxName}/resource/image/codi/${codilist.img}" width=100px height=100px alt="프로필 사진"></li> --%>
			
			<c:forEach var="co" items="${codilist}">
				<%-- <li>${n.code}</li> --%>
				<%-- <li>${co.code}--%>
					<li><img src="${ctxName}/resource/image/codi/${codilist.img}" width="200px" alt="이미지1"></li> 
				<li>${co.img}</li>
				
			</c:forEach>
				
				
				
			</ul>
		</nav>



	</section>
<!-- ---------1. 코디 상세페이지 하단 끝---------------------->
