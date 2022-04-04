let data = 
	[
		{"locaNum": 0, "locaName":"전국"},
		{"locaNum": 1, "locaName":"서울"},
		{"locaNum": 2, "locaName":"인천"},
		{"locaNum": 3, "locaName":"대전"},
		{"locaNum": 4, "locaName":"대구"},
		{"locaNum": 5, "locaName":"광주"},
		{"locaNum": 6, "locaName":"부산"},
		{"locaNum": 7, "locaName":"울산"},
		{"locaNum": 8, "locaName":"세종"},
		{"locaNum": 31, "locaName":"경기도"},
		{"locaNum": 32, "locaName":"강원도"},
		{"locaNum": 33, "locaName":"충청북도"},
		{"locaNum": 34, "locaName":"충청남도"},
		{"locaNum": 35, "locaName":"경상북도"},
		{"locaNum": 36, "locaName":"경상남도"},
		{"locaNum": 37, "locaName":"전라북도"},
		{"locaNum": 38, "locaName":"전라남도"},
		{"locaNum": 39, "locaName":"제주도"}
	]
	
	
function selectLocation(locaNum){
	// location select 옵션 채우기 함수
	let mydata = JSON.parse(JSON.stringify(data));
	let selectLoca = document.getElementById("select_boardList");
	let options = '';
	for (let i=0; i<mydata.length;i++){
		if(locaNum == mydata[i].locaNum){
			options += '<option value="'+mydata[i].locaNum+'" selected="selected">'+mydata[i].locaName+'</option>'
		}else{
			options += '<option value="'+mydata[i].locaNum+'">'+mydata[i].locaName+'</option>'
		}
	}
	console.log(mydata);
	
	selectLoca.innerHTML = options;
}


window.onload = function () {
	selectLocation(0);
	// 네비바의 메뉴명 선택해서 진하게 만들기
	let a_header_fv = document.getElementById("a_header_fv");
	a_header_fv.className = "selected_menu"
}

// 맨 위로 버튼
$(function() { // 보이기 | 숨기기 
	$(window).scroll(function() { 
		if ($(this).scrollTop() > 150) { //250 넘으면 버튼이 보여짐니다. 
			$('.tothetop').fadeIn(); 
		} else { 
			$('.tothetop').fadeOut(); 
		} }); 
			
	// 버튼 클릭시 			
	$(".tothetop").click(function() {
		$('html, body').animate({ 
			scrollTop : 0 // 0 까지 animation 이동합니다.
		}, 400); // 속도 400 
	return false; 
	}); 
});	

function tabSwitch(event){
	let tab1_boardDetail = document.getElementById('tab1_boardDetail');
	let tab2_boardDetail = document.getElementById('tab2_boardDetail');
	let div_boardDetail_03 = document.getElementById('div_boardDetail_03');
	let target = event.target;
	if (target.id ==='tab_boardDetail_01'){
		target.classList= 'btn_tab selected_tab';
		target.parentElement.children[1].className = "btn_tab";
		tab1_boardDetail.className = 'tab_view';
		tab2_boardDetail.className = 'tab_hidden';
	}else{
		target.classList= 'btn_tab selected_tab'
		target.parentElement.children[0].className = "btn_tab";
		tab1_boardDetail.className = 'tab_hidden';
		tab2_boardDetail.className = 'tab_view';
		div_boardDetail_03.className = 'square_list';
	}
}

let reviewModalOpen = function (event){
//	event.stopImmediatePropagation();
	document.getElementById('modal_boardDetail').style.display = 'block';
	
}
function reviewModalClose(){
	document.getElementById('form_boardMdal').reset();
	document.getElementById('modal_boardDetail').style.display = 'none';
}

function openModal() {
	document.querySelector(".modal").classList.remove("hidden");
}
function closeModal() {
	document.querySelector(".modal").classList.add("hidden");
}

document.querySelector(".bg").addEventListener("click", closeModal);


// 더보기 눌렀을 때

function boardListViewMore(){
	
}

// 리스트에서 행사 눌러서 detail 보여주는 메서드
function viewDetailFestival(contentid, contentTypeId, mapx, mapy){
	let form_boardList = document.getElementById("form_boardList");
	document.getElementById("input_boardList_contentid").value = contentid;
	document.getElementById("input_boardList_contenttypeid").value = contentTypeId;
	document.getElementById("input_boardList_mapx").value = mapx;
	document.getElementById("input_boardList_mapy").value = mapy;
	
	form_boardList.submit();	
}

function viewDetailSeeSight(contentid, contentTypeId, mapx, mapy){
	let form_boardDetail = document.getElementById("form_boardDetail");
	document.getElementById("input_boardDetail_contentid").value = contentid;
	document.getElementById("input_boardDetail_contenttypeid").value = contentTypeId;
	document.getElementById("input_boardDetail_mapx").value = mapx;
	document.getElementById("input_boardDetail_mapy").value = mapy;
	
	form_boardDetail.submit();
	
}