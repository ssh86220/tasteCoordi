
/*MyClothesUpload*/
function showDialog(url) {
		var screen = document.createElement("div");

		screen.style.width = "100%";
		screen.style.height = "100%";
		screen.style.position = "fixed";
		screen.style.left = "0px";
		screen.style.top = "0px";
		screen.style.background = "black";
		screen.style.opacity = "0.7";
		screen.style.zIndex = "2";

		document.body.appendChild(screen);

	 	 var docHeight = window.innerHeight;
		var docWidth = window.innerWidth;
		var width = "300";
		var height = "300";
		var top = docHeight / 2 - height / 2;
		var left = docWidth / 2 - width / 2;

		var dialog = document.createElement("div");
		dialog.style.width = "300px";
		dialog.style.height = "300px";
		dialog.style.position = "fixed";
		dialog.style.left = left + "px";
		dialog.style.top = top + "px";
		dialog.style.background = "rgb(255,255,255)";
		dialog.style.zIndex = "2";

		document.body.appendChild(dialog);

		var view = document.createElement("div");
		view.style.background="#f8deec"; 
		view.style.width = "100%";
		view.style.height = "100%";
		dialog.appendChild(view); 


		 var btnClose = document.createElement("input");
		btnClose.type = "button";
		btnClose.value = "X";
		btnClose.style.position = "absolute";
		btnClose.style.right = "-5px";
		btnClose.style.top = "-5px";
		btnClose.style.padding = "3px";

		dialog.appendChild(btnClose);

		btnClose.onclick = function() {

			document.body.removeChild(dialog);
			document.body.removeChild(screen);
		} 



		 var request = new window.XMLHttpRequest();

		//비동기 반응
		request.onreadystatechange = function() {
			if (request.readyState == 4){
				view.innerHTML = request.responseText; 
	    		request.send(null);
			}
		}

		//요청
		request.open("GET", url, true);
		request.send(null); 

		//반응 (기다리면 동기 안기다리면 비동기)	 
	}