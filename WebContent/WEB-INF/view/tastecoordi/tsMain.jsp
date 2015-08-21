
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value='${pageContext.request.contextPath}' />
<link href="../resource/css/test1.css" type="text/css" rel="stylesheet" />

<style>
#bannerBox img {
	width: 1000px;
	height: 300px;
}

#bannerBox li {
	float: left;
}

#bannerBox {
	width: 5000px;
}
</style>


<script>
	window.addEventListener("load", function() {
		var bannerBox = document.querySelector("#bannerBox ul");
		bannerBox.style.left = "0px";

		function move(target, by) {

			var from = parseInt(target.style.left); //시작값
			var to = from + by; //마지막값

			var id = setInterval(function() {
				/* 애니메이션을 위한 프레임 연산 */
				from += by / 10; //단위 이동 계산	 
				console.log(from); //콘솔찍어보기		

				if (to < 0) { 
				if (from <= to)
					clearInterval(id); //인터벌클리어
				}
				else if (to > 0) {
					if (from > to)
						clearInterval(id);
				} 
				target.style.left = from + "px"; //시작값에 top값 더하기

			}, 100); //초설정

		}

		var btnPrew = document.querySelector("#bannerBox > div:first-child");
		btnPrew.addEventListener("click", function() {
			move(bannerBox, 1000);
		});

		var btnNext = document.querySelector("#bannerBox > div:last-child");
		btnNext.addEventListener("click", function() {
			/* alert("이후"); */
			move(bannerBox, -1000);

		});

	});
</script>


<div class="content-wrapper">
	<section>
		<h1 class="Hidden">메인메뉴</h1>


		<section>
			<div id="bannerBox">
				<div style="cursor: pointer;">이전</div>
				<h3 class="Hidden">배너창</h3>
				<div
					style="height:250px; width: 1000px; border: 1px black solid; overflow: hidden; position: relative;">
					<ul style="position: absolute; width: 5000px;">
						<li><img src="../resource/image/css/bn.JPG" alt="배너" /></li>
						<li><img src="../resource/image/css/banner2.JPG" alt="배너" /></li>
					</ul>
				</div>
				<div style="cursor: pointer;">이후</div>
			</div>
		</section>

	</section>


	<section id="coordi-list" class="clearfix:after">
		<h1 class="Hidden">코디목록</h1>
		<c:forEach var="n" items="${list}">

			<ul id="coordi-box">
				<ul id="coordi">
					<!-- <a href="../tastecoordi/coordiDetailPage"/> -->
					<%-- <li><img src="../resource/image/css/codi1.JPG" alt="코디이미지">${n.img}</li> --%>
					<li><a href="coordiDetailPage?c=${n.codiCode}"><img
							src="${ctxName}/resource/image/codi/${n.img}"></a></li>
				</ul>
				<ul id="profile">
					<li><img src="${ctxName}/resource/image/profile/${n.image}"></li>
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
