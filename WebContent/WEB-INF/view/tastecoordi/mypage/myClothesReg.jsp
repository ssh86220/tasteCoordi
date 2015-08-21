<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<style>
	
	#clothes-form
	{margin-left: 15px; margin-top: 20px;}
	#clothes-form td
	{height: 30px; width: 170px; text-align: center;}
	#clothes-form td + td
	{width: 300px; text-align: left; padding-left: 10px;}
	
	
			
	#clothes-btn
	{margin-top: 20px; text-align: center;}
	
</style> 

				
		<form method="post" enctype="multipart/form-data" action="myClothesReg">
		
			<table id="clothes-form">
				<tr>
					<td>상품명</td>
					<td><input name="itemName"/></td>
				</tr>
				<tr>
					<td>카테고리</td>
					<td>
						<select name="categories">
							<option value="top">상의</option>
							<option value="bot">하의</option>
							<option value="one">원피스</option>
							<option value="out">아우터</option>
							<option value="sho">신발</option>	
							<option value="acc">패션잡화</option>					
						</select>
					</td>
				</tr>
				<tr>
					<td>색상</td>
					<td>
						<select name="color">
							<option value="red">빨강</option>
							<option value="orange">주황</option>
							<option value="yellow">노랑</option>
							<option value="green">초록</option>
							<option value="blue">파랑</option>	
							<option value="navy">남색</option>
							<option value="purple">보라</option>	
							<option value="black">검정</option>	
							<option value="white">흰색</option>	
							<option value="gray">회색</option>
							<option value="pink">분홍</option>	
							<option value="beige">베이지</option>
							<option value="brown">갈색</option>							
						</select>
					</td>
				</tr>
				<tr>
					<td>이미지</td>
					<td><input name="file" type="file"/></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input name="price"/></td>
				</tr>
				<tr>
					<td>상세주소</td>
					<td><input name="link"/></td>
				</tr>
				
			</table>
	
			<div id="clothes-btn">
				<input type="submit" value="등록하기"/>
				<!-- <input type="button" value="취소"/> -->
			</div>
	
		</form>
					


