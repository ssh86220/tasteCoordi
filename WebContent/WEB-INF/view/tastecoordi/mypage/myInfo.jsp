<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
		<main id="item-list">	
			<section>
				<h1 class="hidden">내 코디</h1>
				
				<section id="coordies-list">
								
					<h1 class="hidden">회원정보수정</h1>
					
					<article>
					
						<form method="post" enctype="multipart/form-data">
						<dl>
						<!-- 뽑는게 목록이면 [] 속성이면 둘다 -->
							<dt>아이디</dt>
							<dd>${m.id}</dd>
							<dt>닉네임</dt>
							<dd><input name="name"/></dd>
							<dd><input type="button" value="중복검사"/></dd>
							<dt>비밀번호</dt>
							<dd><input name="pw"/></dd>
							<dt>비밀번호 확인</dt>
							<dd><input name="pw-check"/></dd>
							<dt>이메일</dt>
							<dd><input name="email"/></dd>
							<dd><input type="button" value="중복검사"/></dd>
							<dt>프로필사진</dt>
							<dd><input name="file" type="file"/></dd>
							<!-- <dd><input name="image"/></dd> -->
						</dl>
			
						<div>
						<!-- <a href="mypageMyCodi"> --><input type="submit" value="수정"/></a>
						<a href="myInfo">취소</a>
						</div>
			
						</form>
					</article>
					
				</section>
			</section>	
		</main>