
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
		
		dialog.appendChild(viewContent);
		
		
		var btnClose = document.createElement("input");
		btnClose.type = "button";
		btnClose.value = "닫기";
		btnClose.style.position="absolute";
		btnClose.style.right = "-10px";
		btnClose.style.top = "-10px";

		dialog.appendChild(btnClose);
		
		btnClose.onclick = function(){
			document.body.removeChild(dialog);
			document.body.removeChild(screen);
			document.body.style.overflow = "auto";
		};
		
		
		var request = new XMLHttpRequest(); 
		//완료된 다음에 넘겨라
		request.onreadystatechange = function(){
			if (request.readyState == 4){
				
				viewContent.innerHTML = request.responseText; //기다리지않으므로 출력결과가 없다.	
				//= 대치, += 추가
				
		    	//inner에서 닫아짐
		    	/*var myinfoBtn = document.querySelector("#myinfo-btn > input[type='button']:last-child");
		    	myinfoBtn.onclick = function(){
					document.body.removeChild(dialog);
					document.body.removeChild(screen);
					document.body.style.overflow = "auto";
				};	*/					
				
				var myinforEnter = document.querySelector("#myinfo-btn > input[type='button']:first-child");
				
				if(myinforEnter.dataset.code != "ROLE_USER")
					myinforEnter.style.display = "none";		
				else{
					
					myinforEnter.onclick = function(){
						viewContent.innerHTML = request.open("GET", "myInfoEnter", true);
						request.send(null);	
						
					};
				}				
				

			}
		}
		
		//주소창 입력
		request.open("GET", url , true); //비동기가 기본형
		//전달
		request.send(null);
		
						
    }
    
    window.addEventListener("load", function(){
    	
    	var myInfo = document.querySelector("#myinfo > div > p");
    	
    	myInfo.onclick = function(){
    		createPopup("myInfoUp");
    		document.body.style.overflow = "hidden";
    		
    	};
    	
    });
