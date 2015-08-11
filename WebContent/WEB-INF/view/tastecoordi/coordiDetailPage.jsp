
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="ctxName" value='${pageContext.request.contextPath}'/> 

<%
	/* CommentsDao commentsDao = new MybatisCommentsDao();
	List<Comments> list = commentsDao.getComments();
	request.setAttribute("list", list); */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코디 상세페이지</title>
<link href="../resource/css/reset.css" type="text/css" rel="stylesheet"/>
<link href="../resource/css/layout.css" type="text/css" rel="stylesheet"/>
<link href="../resource/css/coordidetail.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript"></script>


</head>

<div id = "top"></div>

<body id = "body">
		<header id="header">
		<h1 class="Hidden">로고</h1>
			<nav class="content-wrapper">
				<h1>
					<img src="../resource/image/css/logo.png" alt="TASTES COORDI">
				</h1>
			</nav>

	</header>

	<aside id = "aside">

		<h1 class = "Hidden">메인메뉴</h1>

		<ul>
		
			<li><a href=""><img src="../resource/image/css/mypage-icon.png" alt="Mypage"></a></li>
			<li><a href=""><img src="../resource/image/css/login-icon.png" alt="Log Out"></a></li>
			<li><a href=""><img src="../resource/image/css/coordi-icon.png" alt = "Coordi"></a></li>
			<li><a href=""><img src="../resource/image/css/search-icon.png" alt="Serch"></a></li>
			<li><a href=""><img src="../resource/image/css/q&a-icon.png" alt="Q&A"></a></li>
			<li><a href=""><img src="../resource/image/css/company-icon.png" alt ="company"></a></li>
		</ul>
	</aside>

	<div class="fix"></div>
	

	<section>


		<main id = "main">

		<h1 class = "Hidden">코디 상세페이지</h1>
<!-- -----------------1. 코디 상세페이지 상단 -------------------->
		<!-- ---------2. 상단 좌측 코디 이미지 -------------------->
				<section id = "coordi-img" >
					<h1 class = "Hidden">코디 이미지</h1>
					<img src="" alt="코디 이미지">
				</section>
		<!------------2. 상단 좌측 코디 이미지 끝 -------------------->

		
		<!-- ---------2. 상단 우측 칸 ----------------->
				<section id = "coordi-contents">
					<h1 class = "Hidden">코디설명</h1>
				<!------------3. 상단 우측 두번째 나누기----------->		
					<section id = "coordi-copyright">
						<h1>코디 저작정보</h1>
						
					${codi.title} created by ${codi.mid}<br>
								<h1 class = "Hidden">설명</h1>
								설명 :
								<p>
									${codi.title}
								</p>
								<!-- 코디네이션의 타이틀. 코디 룸 등록시 입력한거 불러와야 함. -->
		
						<%-- <c:forEach var="d" items="${codilist}">
							${d.title} created by ${d.mid}<br>  <!-- 코디네이션의 제목? 코드?, 아이디 -->
						</c:forEach> --%>
					</section>
					
					
					<nav id = "coordi-like">
						<h1 class = "Hidden">프로필 사진, 좋아요</h1>
						<ul>
							<li><a href=""><img src="" alt="프로필 사진"></a></li>
							<li id="sns"><a href=""><img src="../resource/image/css/follow.jpg" alt="팔로우 이미지"></a></li>
							
							<!-- 좋아요 팝업창, 마이페이지로 이동 -->
							<li id="sns">							
							<a href=""
								onclick="javascript:window.open('likePop.jsp','popup','scrollbars=no, resizable=no, width=300,height=200')"; return false">
								<img src="../resource/image/css/like.JPG" alt="좋아요 이미지">
									
									
									
									
									
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
		
		
		
						<p>
						<section id="comment-list">
							<h1 class = "Hidden">댓글 목록</h1>
							<table>
								<thead>
		
									<tr>
										<th>코드</th>
										<th>작성자</th>
										<th>코디코드</th>
										<th>날짜</th>
										<th>내용</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="n" items="${list}">
										<tr>
											<td>${n.code}</td>
											<td>${n.mid}</td>
											<td><a href="coordiDetailPage?c=${n.codiCode}">${n.codiCode}</td>
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
	<section>
		<nav id= "overview">
			<h1><img src="../resource/image/css/overview.jpg" alt="Overview"></h1>
			
			<ul>
				<li><a href=""><img src="" alt="이미지1"></a></li>
				<li><a href=""><img src="" alt="이미지2"></a></li>
				<%-- <li><img src="${ctxName}/resource/image/clothes/${c.image}"></li> --%>
				
			<!-- --------코디코드, 코디 이미지 리스트 출력--------- -->
			<c:forEach var="co" items="${codilist}">
				<%-- <li>${n.code}</li> --%>
				<li>${co.code}
					<img src="${ctxName}/resource/image/codi/${co.img}" width="200" alt="이미지1">				
				</li>
				<li>${co.img}</li>
				
			</c:forEach>
				
				
				
			</ul>
		</nav>

	<div id="clear"></div>

		<nav id= "coordi-item">
			<h1><img src="../resource/image/css/coordi-item.jpg" alt="해당 코디에 사용된 아이템"></h1>
			<!-- 이미지 리스트로 출력 가로 5개, 줄바꿈. css로-->
			<ul>
				<li><a href=""><img src="" alt="이미지1"></a></li>
				<li><a href=""><img src="" alt="이미지2"></a></li>
											
			<c:forEach var="cl" items="${clotheslist}">
				<li>${cl.clothesCode}
					<img src="${ctxName}/resource/image/clothes/${cl.image}" width="200" alt="이미지1">
				</li>
				<%-- <li>${cl.image}</li> --%>
			</c:forEach>	
				
			</ul>
		</nav>
	</section>
<!-- ---------1. 코디 상세페이지 하단 끝---------------------->


		</main>
	</section>


	<footer id = "footer">
		<section>
			<h1 class="Hidden">저작권 정보</h1>
			<p>FreeStyle Copyrightⓒ2015</p>
		</section>
	</footer>


</body>
</html>