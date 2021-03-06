function selectLocation1(locaNum){
	// location select 옵션 채우기 함수
	
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

function reviewModalOpen (event){
//	event.stopImmediatePropagation();

	let hidden_boardDetail_mmid = document.getElementById("hidden_boardDetail_mmid");
	let mmId=hidden_boardDetail_mmid.value;
	
	if(mmId == null || mmId ==''){
		url = '/login';	
		window.location.href= url;		
	}
	document.getElementById('modal_boardDetail').style.display = 'block';	
	document.getElementById('modalBack_boardDetail').style.display = 'block';	
}

function reviewModalClose(){
	document.getElementById('form_boardModal').reset();
	document.getElementById('modal_boardDetail').style.display = 'none';
	document.getElementById('modalBack_boardDetail').style.display = 'none';	
}

//document.getElementById("modalBack_boardDetail").addEventListener("click", reviewModalClose);


// 리뷰 제출
function createReview(){
	
	let formData = new FormData(document.getElementById("form_boardModal"));
	let data = {
		"contentid" : formData.get('contentid'),
		"mmId" : formData.get('mmId')
	};
		
	//1. 한번 작성했던 적 있는 사람인가 확인
	let request = new XMLHttpRequest();
	request.open('POST', '/festival/reviewCheck', true);
	request.setRequestHeader("Content-Type", "application/json");
	request.send(JSON.stringify(data));
	request.onreadystatechange = function(event) {
		if (request.readyState == 4) {
			if (request.status == 200) {
				if(request.responseText =='success'){
					alert("성공");
					formData.submit();
					
				}else{
					alert('실패');
				}
				
			}
		}
	}	
	
	//2. 제목, 내용 있는지 확인
	
	
	//3. 제출

	
}

// 더보기 눌렀을 때

function boardListViewMore(){
	let hidden_boardList_totalCount = document.getElementById("hidden_boardList_totalCount");
	let totalCnt = hidden_boardList_totalCount.value;
	
	let searchKeyword = document.getElementById("searchKeyword");
	let keyword = searchKeyword.value;
	
	let location = document.getElementById("hidden_boardList_location").value;
	
	
	let div_boardList_article = document.getElementById("div_boardList_article");
	let length = div_boardList_article.children.length;
	
	let numOfRows = length+8;
	
	if(keyword !== '' && keyword !== undefined){
		let form_boardList_searchKeyword = document.getElementById("form_boardList_searchKeyword");
		let hidden_boardList_numOfRows = document.getElementById("hidden_boardList_numOfRows");
		hidden_boardList_numOfRows.value = numOfRows;
		form_boardList_searchKeyword.submit();
	}else{
		 festivalBoardLoad(numOfRows, location);
	}
	document.getElementById("span_boardList_totalCount").innerText = String(numOfRows);

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

function changeLocation(){
	let selectLoca = document.getElementById("select_boardList");
	let locaNum =selectLoca.options[selectLoca.selectedIndex].value;
	
	festivalBoardLoad(8, locaNum);
	document.getElementById("hidden_boardList_location").value = locaNum;
}

function doSearchKey(){
	let searchKeyword = document.getElementById("searchKeyword");
	let val = searchKeyword.value;
	let form_boardList_searchKeyword = document.getElementById("form_boardList_searchKeyword");
	if(val !== '' && val !== undefined){
		form_boardList_searchKeyword.submit();
	}else{
		alert("검색어를 입력해 주세요.");
	}

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
//리뷰작성 팝업창 열기
function brwPopup(mmid,fvno){
	if(!mmid){
	alert('로그인이 필요한 서비스입니다.');
	location.href='/sign/login.jsp';
	}else{
	var width = 550;
	var height = 400;
	var left = Math.ceil(( window.screen.width - width )/2);
	var top = Math.ceil(( window.screen.height - height )/2); 
	
	window.open('/board/boardReviewWritePopup.jsp?fvNo='+fvno,'리뷰삭제하는팝업','width='+width+', height='+height+', top='+top+', left='+left);
	}
	
}
//찜 추가
function fvLkSelect(contentid, contentTypeId, fvLk, mapx, mapy){
	let form_fvLk = document.getElementById("form_fvLk");
	document.getElementById("input_form_fvLk_contentid").value = contentid;
	document.getElementById("input_form_fvLk_contenttypeid").value = contentTypeId;
	document.getElementById("input_form_fvLk_mapx").value = mapx;
	document.getElementById("input_form_fvLk_mapy").value = mapy;
	document.getElementById("input_form_fvLk_fvLk").value = fvLk;
	form_fvLk.submit();	
}
	