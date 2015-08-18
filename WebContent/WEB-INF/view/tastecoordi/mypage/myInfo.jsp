<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script type="text/javascript">
	
	function checkedID(){
		var idCheck = document.querySelector("#id-check");
		idChedk.onclick = alert("test");
	}
	
	window.addEventListener("load", function(){
		checkedID();
		var btnInfo = document.querySelector("#btn-info");
		btnInfo.onclick = function(){
			//blankChecking();
			//var blank = document.querySelector("#info-form");
			
			var infoForm = document.querySelector("#info-form");
			imfoForm.method="post";
			infoForm.action = "myInfo";
			inforForm.submit();
			
			
		};
		
		
	});

</script>
    
		<main id="item-list">	
			<section>
				<h1 class="hidden">내 코디</h1>
				
				<section id="coordies-list">
								
					<h1 class="hidden">회원정보수정</h1>
					
					<article>
					
						<form id="info-form" enctype="multipart/form-data">
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
							<dd><input id="id-check" type="button" value="중복검사"/></dd>
							<dt>프로필사진</dt>
							<dd><input name="file" type="file"/></dd>
						</dl>
			
						<div>
						<input id="btn-info" type="button" value="수정"/></a>
						<a href="myInfo">취소</a>
						</div>
			
						</form>
					</article>
					
				</section>
			</section>	
		</main>