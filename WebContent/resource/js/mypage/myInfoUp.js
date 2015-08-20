
    function createPopup(url){
		var screen = document.createElement("div");//검은바탕

		screen.style.position = "fixed";
		screen.style.left = "0px";
		screen.style.top = "0px";
		screen.style.width = "100%";
		screen.style.height = "100%";
		screen.style.background = "black";
		screen.style.opacity = "0.3";
		screen.style.overflow = "hidden";
	   
		document.body.appendChild(screen);
		
		//중앙좌표를 계산하기 위함
		var docWidth = window.innerWidth; //창의 너비 및 높이		
		var docHeight = window.innerHeight;
		var width = 400; //view의 너비 및 높이
		var height = 230;
		var left = docWidth/2 - width/2;
		var top = docHeight/2 - height/2;
		
		var dialog = document.createElement("div");//뷰
		
		dialog.style.position = "fixed";
		dialog.style.left = left + "px";
		dialog.style.top = top + "px";
		dialog.style.width = width + "px";
		dialog.style.height = height + "px";
		dialog.style.background = "rgb(249, 227, 236)"; //분홍
		
		document.body.appendChild(dialog);
		
		var viewContent = document.createElement("div");//내용
		
		
		//닫기버튼
		dialog.appendChild(viewContent);
		
		var btnCloseView = document.createElement("input");
		btnCloseView.type="button";
		btnCloseView.value="창닫기";
		btnCloseView.style.position = "absolute";
		btnCloseView.style.right="-10px";
		btnCloseView.style.top="-10px";
		/* btnCloseView.style.right="160px";
		btnCloseView.style.bottom="16px"; */
		
		dialog.appendChild(btnCloseView);
		
		btnCloseView.onclick = function(){
			document.body.removeChild(dialog);
			document.body.removeChild(screen);
			document.body.style.overflow = "auto";
		};
		
		/*var btnEnterView = document.createElement("input");
		btnEnterView.type = "button";
		btnEnterView.value = "업체등록신청";
		btnEnterView.style.position = "absolute";
		btnEnterView.style.right = "50px";
		btnEnterView.style.bott0  = "30px";
		
		dialog.appendChild(btnEnterView);
		
		btnEnterView.onclick = function(){
			alert("test");
		};*/
		
		
		var request = new XMLHttpRequest(); 
		//완료된 다음에 넘겨라
		request.onreadystatechange = function(){
			if (request.readyState == 4){
				
				viewContent.innerHTML = request.responseText; //기다리지않으므로 출력결과가 없다.	
				//= 대치, += 추가
				
		    	//inner에서 닫아짐
		    	var myinfoBtn = document.querySelector("#myinfo-btn > input[type='button']:last-child");
		    	myinfoBtn.onclick = function(){
					document.body.removeChild(dialog);
					document.body.removeChild(screen);
				};
				
				var myinforEnter = document.querySelector("#myinfo-btn > input[type='button']:first-child");
				myinforEnter.onclick = function(){
		    		viewContent.innerHTML = request.open("GET", "myInfoEnter", true);
		    		request.send(null);	
		    		
				};

			}
		}
		
		//주소창 입력
		request.open("GET", url , true); //비동기가 기본형
		//전달
		request.send(null);
		
						
    }
    
    window.addEventListener("load", function(){
    	var btnMyinfo = document.querySelector("#myinfo input[type='button']");
    	var myInfo = document.querySelector("#myinfo > div > p");
    	
    	myInfo.onclick = function(){
    		createPopup("myInfoUp");
    		document.body.style.overflow = "hidden";
    		
    	};
    	
    });
