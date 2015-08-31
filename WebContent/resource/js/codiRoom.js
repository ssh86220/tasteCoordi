
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


/*clothes jjim, site, price*/
function clothesDetail(url){
	 var detailView = document.querySelector("#coordi-canvas");
	
	var request = new window.XMLHttpRequest();
	 
	request.onreadystatechange = function() {
		if (request.readyState == 4){
			detailView.innerHTML = request.responseText; 
			request.send(null);
		}
	}

	//요청
	request.open("GET", url, true);
	request.send(null);  
	//alert("ttt");
}


function showMenu(url){
	
	var view = document.querySelector("#coordi-item");
	
	var request = new window.XMLHttpRequest();
	 
	request.onreadystatechange = function() {
		if (request.readyState == 4){
			view.innerHTML = request.responseText; 
		}
	}

	//요청
	request.open("GET", url, true);
	request.send(null); 
	
	
}
window.addEventListener("load", function(){	
	
	//showMenu("codiRoom2");
	 var menu = document.querySelector("#item-menu").getElementsByTagName("li");
	document.querySelector("#item-menu").style.cursor="pointer";
	
	
	
	menu[0].onclick = function(){
		showMenu("codiRoom2");	
	}; 
	 
	menu[1].onclick = function(){
		showMenu("codiRoomMyClothes");
	};
	
	menu[2].onclick = function(){
		showMenu("codiRoomJjims");	
	};
	
	
	/*drag&drop*/	
	var itemBox = document.querySelectorAll("#item-img li");
	for(var i=0; i < itemBox.length; i++){
		itemBox[i].addEventListener("dragstart", function(event){
			if(event.target instanceof HTMLImageElement){
	   			var data = {
	   					src : event.target.dataset.src
	   					};
	   			
	   			event.dataTransfer.setData('text/plain',JSON.stringify(data));
	   			event.dataTransfer.effectAllowed = "move";
	   		} 
	   		else
	   			event.preventDefault();
		});
	}
	
	
	 var codiCanvas = document.querySelector("#coordi-canvas");
	 codiCanvas.addEventListener("dragover", function(event){
		 event.preventDefault();
     });
	 
	 var dragitem = null;
	 var mouseOffset = {x:0, y:0};
	 
	 codiCanvas.addEventListener("drop", function(event){
		 var data = JSON.parse(event.dataTransfer.getData("text/plain"));
	    	var img = document.createElement("img");
	    	img.src = data.src;
	    	img.draggable = false;
	    	img.style.position = "absolute";
	    	/*img.style.left= (event.offsetX-img.width/2) + "px";
	    	img.style.top=(event.offsetY-img.height/2)+"px";*/
	    	img.style.left= (event.offsetX) + "px";
	    	img.style.top=(event.offsetY)+"px";
	    	img.style.width="100px";
	    	img.style.height="100px";
	    	
	    	img.addEventListener("mousedown",function(event){
	    		dragitem = event.target;
	    		mouseOffset.x=event.offsetX;
	    		mouseOffset.y=event.offsetY;
	    			
	    	}); 
	    	
	    	event.target.appendChild(img);
		 
	 });
	 
	 document.addEventListener("mousemove", function(event){
		    
	    	// h1.textContent = event.x;
	    	   if(dragitem != null){
	    		   dragitem.style.left = event.pageX-mouseOffset.x + "px";
	    		   dragitem.style.top = event.pageY-mouseOffset.y + "px";
	    	 }  
	     });
	 
	 document.addEventListener("mouseup", function(event){
    	 if(dragitem != null)
    		 dragitem = null;    	 
     });
	
   
				

});