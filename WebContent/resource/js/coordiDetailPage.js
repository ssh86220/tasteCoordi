//팝업 장막 만들기
function showDialog(url) {
		//장막 div 생성
		var like = document.createElement("div"); 
		//dlg를 bady에 추가 ; 
		like.style.position = "fixed";	//스크롤 내려도 장막 전체 유지.
		like.style.left = "0px";
		like.style.top = "0px";
		like.style.width = "100%";
		like.style.height = "100%";
		like.style.background = "black";
		like.style.opacity = "0.5";

		document.body.appendChild(like);
		
		//반응형 웹-브라우저의 크기 구하기
		var docwidth = window.innerWidth;
		var docheight = window.innerHeight;
		var width = 500;
		var height = 300;
		var left = (docwidth/2) - (width/2);
		var top = (docheight/2) - (height/2);
			
		
			//팝업창 div 생성
			var view = document.createElement("div");

			//view를 bady에 추가 ; 
			view.style.position = "fixed";	//스크롤 내려도 view 유지
			view.style.left = left + "px";
			view.style.top = top + "px";
			view.style.width = width + "px";
			view.style.height = height + "px";
			view.style.background = "rgb(255,255,255)";
			

			document.body.appendChild(view);
}

window.addEventListener("load", function() {
	
	var btnShowLike = document.querySelector("#btn-show-like");
	btnShowLike.onclick = function() {
		showDialog("LikePop.html");	//바디도 없는 빈 조각파일 만들기(view에 나올 내용)
	};
});