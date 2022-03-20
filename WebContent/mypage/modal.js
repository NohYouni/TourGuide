	const open = document.querSelector(".open");
	const close = document.querSelector("modal__closeBtn");
	const modal = document.querSelector(".modal");
	
	function init(){
		
		open.addEventListener("click",function(){
			modal.classList.remove("hidden")
			
		});
		close.addEventListener("click",function(){
			modal.classList.add("hidden");
			
		})
	}
	init();