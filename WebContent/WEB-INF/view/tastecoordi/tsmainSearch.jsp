<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



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

	<form action="tsmainSearch" method="POST">
		<input type="submit" value="검색하기"><br>

 	<fieldset>
			<legend>검색정보</legend>
			<h3>스타일검색</h3>
			<label>스타일</label> 
			<select name="style">
				<option value="cj">캐쥬얼</option>
				<option value="dd">댄디</option>
				<option value="ro">로맨틱</option>
				<option value="cl">클래식</option>
				<option value="bo">보이쉬</option>
				<option value="hh">힙합</option>
				<option value="ss">섹시</option>
				<option value="vv">빈티지</option>
				<option value="of">오피스</option>
			</select>
		</fieldset>
		
	
		<fieldset>
			<h3>아이템검색1</h3>
			<label>카테고리</label> <select name="categories">
				<option value="top">상의</option>
				<option value="bot">하의</option>
				<option value="out">아우터</option>
				<option value="one">원피스</option>
				<option value="sho">신발</option>
				<option value="acc">잡화</option>
				</select>
		</fieldset>
		

		<fieldset>
			<label>색상필드</label>
			<select name="color">
				<option value="red">빨강</option>
				<option value="orange">주황</option>
				<option value="yellow">노랑</option>
				<option value="green">초록</option>
				<option value="blue">파랑</option>
				<option value="navy">남색</option>
				<option value="purple">보라</option>
				<option value="black">검정</option>
				<option value="gray">회색</option>
				<option value="pink">분홍</option>
				<option value="beg">베이지</option>
				<option value="brown">갈색</option>
				<option value="white">흰색</option>
				</select> 
		</fieldset>		
		</form> 
		<!-- <h3>아이템검색2</h3>
			<label>카테고리</label> <select>
				<option value=top>상의</option>
				<option value=bot>하의</option>
				<option value=out>아우터</option>
				<option value=dre>원피스</option>
				<option value=sho>신발</option>
				<option value=acc>잡화</option>
			</select> <label>색상필드</label><select>
				<option value=red>빨강</option>
				<option value=org>주황</option>
				<option value=yel>노랑</option>
				<option value=grn>초록</option>
				<option value=blu>파랑</option>
				<option value=nav>남색</option>
				<option value=pur>보라</option>
				<option value=blc>검정</option>
				<option value=gry>회색</option>
				<option value=pik>분홍</option>
				<option value=beg>베이지</option>
				<option value=brw>갈색</option>
				<option value=wht>흰색</option>
			</select>

			<h3>아이템검색3</h3>
			<label>카테고리</label> <select>
				<option value=top>상의</option>
				<option value=bot>하의</option>
				<option value=out>아우터</option>
				<option value=dre>원피스</option>
				<option value=sho>신발</option>
				<option value=acc>잡화</option>
			</select> <label>색상필드</label><select>
				<option value=red>빨강</option>
				<option value=org>주황</option>
				<option value=yel>노랑</option>
				<option value=grn>초록</option>
				<option value=blu>파랑</option>
				<option value=nav>남색</option>
				<option value=pur>보라</option>
				<option value=blc>검정</option>
				<option value=gry>회색</option>
				<option value=pik>분홍</option>
				<option value=beg>베이지</option>
				<option value=brw>갈색</option>
				<option value=wht>흰색</option>
			</select> -->
<!-- 
		</fieldset>
 -->

<%-- 	<section id="coordi-list" class="clearfix:after">
		<h1 class="Hidden">코디목록</h1>
		<c:forEach var="n" items="${searchList}">
		<a href="tsMainDetail?c=${n.code}">
			<ul id="coordi-box">
				<ul id="coordi">
					<!-- <a href="../tastecoordi/coordiDetailPage"/> -->
					<li><img src="../resource/image/css/codi1.JPG" alt="코디이미지">${n.img}</li>
					<li><img src="${ctxName}/resource/image/codi/${n.img}"></li>
				</ul>
				<ul id="profile">
					<li><img src="${ctxName}/resource/image/codi/${n.img}"></li>
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
				<c:if test="${status.count%3 eq 0}">

			</c:if>
			</a>
		</c:forEach>

	</section> --%>


	
</div>
