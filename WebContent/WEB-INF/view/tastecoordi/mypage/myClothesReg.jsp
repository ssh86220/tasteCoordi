<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
</head>
<body>

		<main id="item-list">	
			<section>
				<h1>내 코디</h1>
				
				<section id="coordies-list">
								
					<h1 class="hidden">상품목록</h1>
					
						<form method="post" enctype="multipart/form-data">
						
							<dl>
								<dt>아이템 이름</dt>
								<dd><input name='itemName'/></dd>
							
								<dt>카테고리</dt>
								<select name="categories">
									<option value="top">상의</option>
									<option value="bot">하의</option>
									<option value="one">원피스</option>
									<option value="out">아우터</option>
									<option value="sho">신발</option>	
									<option value="acc">패션잡화</option>					
								</select>
													
								<dt>색상</dt>
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
								
								<dt>아이템 이미지</dt>
								<dd><input type='file' name='file' /></dd>
								
								<dt>가격</dt>
								<dd><input name='price'/></dd>
								
								<dt>상세주소</dt>
								<dd><input name='link'/></dd>
								
							</dl>
							<div><input type="submit" value="등록하기"/></div>
						</form>
					
				</section>
			</section>	
		</main>



</body>
</html>