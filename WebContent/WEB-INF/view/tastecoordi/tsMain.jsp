
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value='${pageContext.request.contextPath}' />
<link href="../resource/css/test1.css" type="text/css" rel="stylesheet" />

<div class="content-wrapper">
	<section>
		<h1 class="Hidden">메인메뉴</h1>


		<section>
			<h3 class="Hidden">배너창</h3>
			<h1>
				<img src="../resource/image/css/bn.JPG" alt="배너">
			</h1>
		</section>

	</section>


	<section id="coordi-list" class="clearfix:after">
		<h1 class="Hidden">코디목록</h1>
		<c:forEach var="n" items="${list}">
<<<<<<< HEAD

=======
        <a href="coordiDetailPage?c=${n.codiCode}">
>>>>>>> branch 'master' of https://github.com/ssh86220/tasteCoordi.git
			<ul id="coordi-box">
				<ul id="coordi">
					<!-- <a href="../tastecoordi/coordiDetailPage"/> -->
					<%-- <li><img src="../resource/image/css/codi1.JPG" alt="코디이미지">${n.img}</li> --%>
					<li><a href="coordiDetailPage?c=${n.code}"><img src="${ctxName}/resource/image/codi/${n.img}"></a></li>
				</ul>
				<ul id="profile">
					<%-- <li><img src="${ctxName}/resource/image/codi/${n.img}"></li> --%>
					<li>${n.image}</li>
					<li>${n.mid}</li>
				</ul>
				<ul id="else">
					<li><img src="../resource/image/css/view.JPG" alt="뷰이미지"></li>
					<li>${n.hit}</li>
					<li><img src="../resource/image/css/like.JPG" alt="코디이미지"></li>
					<li>${n.likeCnt}</li>
					<li><img src="../resource/image/css/nt.JPG" alt="코디이미지"></li>
					<li>${n.cmtCnt}</li>
				</ul>
			</ul>
			<%-- 	<c:if test="${status.count%3 eq 0}"> --%>

			<%-- </c:if> --%>
		
		</c:forEach>

	</section>


	
	<section id="more">
		<input type="submit" value="more" />
	</section>
	<div class="fix"></div>
	<div class="fix"></div>
</div>
