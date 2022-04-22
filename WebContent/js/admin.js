$(document).ready(function() {
	var tab = sessionStorage.getItem('tabSelect');
	$(".tab_title li").removeClass("on");
	$(".tab_title li").eq(tab).addClass("on");
	$(".tab_cont > div").hide();
	$(".tab_cont > div").eq(tab).show();
});

$(document).ready(function() {
	$(".tab_title li").click(function() {
		var idx = $(this).index();
		location.href = "/admins/page?page=1&tab="+idx;
		
		$(".tab_title li").removeClass("on");
		$(".tab_title li").eq(idx).addClass("on");
		$(".tab_cont > div").hide();
		$(".tab_cont > div").eq(idx).show();
		sessionStorage.setItem('tabSelect', idx);
	})
});	

let winX = 400;
let winY = 330;
let x = (window.innerWidth)/2 - (winX/2);
let y = (window.innerHeight)/2 - (winY/2);

function memberDelete(mmId) {	
	const myWin = window.open('/adminMemDel?id=' + mmId + ' ','win0','left=' + x + '  ,top=' + y +' , width='+ winX +',height='+ winY +',status=no,toolbar=no');	
}
function memberDeleteRsn(rsn) {
	const myWin = window.open('/adminDeleteRsn?rsn=' + rsn + '&type=mm ','win0','left=' + x + '  ,top=' + y +' , width='+ winX +',height='+ winY +',status=no,toolbar=no');	
}

function reviewDelete(rmmId, rfvno) {
	const myWin = window.open('/adminRvDel?id=' + rmmId + '&no=' + rfvno + ' ','win0','left=' + x + '  ,top=' + y +' , width='+ winX +',height='+ winY +',status=no,toolbar=no');	
}
function reviewDeleteRsn(rsn) {
	const myWin = window.open('/adminDeleteRsn?rsn=' + rsn + '&type=rv ','win0','left=' + x + '  ,top=' + y +' , width='+ winX +',height='+ winY +',status=no,toolbar=no');	
}
function memberDetail(mmId) {
	console.log(mmId);
	const myWin = window.open('/admins/detail?mmId=' + mmId + ' ','win0','left=' + x + '  ,top=' + y +' , width='+ winX +',height='+ winY +',status=no,toolbar=no');	
}

function pageClose() {
	window.close();
}
function check(){
	let ch = false;
	for(var i =0; i<8; i++){
		if(document.frm.elements[i].checked)
			ch = true;									
	}
	
	let rsnwinX = 400;
	let rsnwinY = 150;
	let rsnx = opener.window.innerWidth/2;
	let rsny = opener.window.innerHeight/2 - rsnwinY/2;
	
	if(ch == false){
		const myWin2 = window.open('/admin/deleteInfo.jsp','win1','left=' + rsnx + '  ,top=' + rsny +' , width='+ rsnwinX +',height='+ rsnwinY +',status=no,toolbar=no');
		return false;
	}else{
		return true;
	}		
}
