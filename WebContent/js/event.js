function number(num){

	const appear = () => {
		document.querySelector(num).classList.remove();
	}

	const disappear = () => {
		document.querySelector(num).classList.add("hidden");
	}

	document.querySelector(".openBtn").addEventListener("click", appear);
	document.querySelector(".closeBtn").addEventListener("click", disappear);
}