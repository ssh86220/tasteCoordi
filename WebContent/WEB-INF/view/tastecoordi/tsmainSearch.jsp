<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



	<div id="back-pop">
				<form action="tsmainSearch" method="POST" id="search-form">

					<div id="search-btn">
						<input type="submit" value="검색"><br> <a
							href="javascript:closeWin();">취소</a>
					</div>


					<fieldset>
						<legend>검색정보</legend>
						<h3>스타일검색</h3>
						<label>스타일</label> <select name="style">
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
						<label>색상필드</label> <select name="color">
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
			</div>
		
