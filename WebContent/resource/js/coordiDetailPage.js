
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
		var width = 300;
		var height = 200;
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
			view.style.textAlign = "center";	//가운데정렬
			//view.style.lineHeight = height+"px";//세로 가운데정렬
			/*		view.style.display="table-cell";
			view.style.verticalAlign="middle";*/	


			document.body.appendChild(view);
			
			
			/* ---------닫기 버튼 만들기------------------------------------ */
 			var btnClose = document.createElement("input");
 			btnClose.type= "button";
 			btnClose.value = "X";
 			btnClose.style.position = "absolute";
 			btnClose.style.right = "-10px";
 			btnClose.style.top = "-10px";
 			btnClose.onclick = function(){
 				document.body.removeChild(view);	//viewWrapper로 수정
 				document.body.removeChild(like);
 			};
			
 			
 			/* ---------비동기형 요쳥-------------------------------------------- */ 
 			var request = new XMLHttpRequest();
 	 		request.open("GET",url, true);	//showDialog 함수 url 쓴거
 	 		request.send(null);
 	 		
 	 		request.onreadystatechange = function(){
 	 			if(request.readyState == 4)	{//데이터 뿌리기. 작업 완료되면 실행
 	 				view.innerHTML += request.responseText;	//html 연결. +=는 추가(html을 꺼내서 누적), =는 기존거 대신 그냥
 	 				view.appendChild(btnClose);
 	 			}
 	 		}
 	   /*-------------여기까지 비동기 요청---------------------------------- */
 	 
 			
}
window.addEventListener("load", function() {
	
	var btnShowLike = document.querySelector("#btn-show-like");
	btnShowLike.onclick = function() {
		showDialog("likePop");	//바디도 없는 빈 조각파일 만들기(view에 나올 내용)

	};
});
