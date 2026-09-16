function in_check(){
	if(document.frm.registration_code.value==""){
		alert("타자선택란이 비어있습니다.");
		document.frm.registration_code.focus();
		return false;
	}
	if(document.frm.game_numbers.value==""){
		alert("게임수가 비어있습니다.");
		document.frm.game_numbers.focus();
		return false;
	}
	if(document.frm.appearance.value==""){
		alert("타석수가 비어있습니다.");
		document.frm.appearance.focus();
		return false;
	}
	if(document.frm.hit_numbers.value==""){
		alert("안타수가 비어있습니다.");
		document.frm.hit_numbers.focus();
		return false;
	}
	if(document.frm.home_runs.value==""){
		alert("홈런수가 비어있습니다.");
		document.frm.home_runs.focus();
		return false;
	}
	if(document.frm.put_out.value==""){
		alert("아웃카운트가 비어있습니다.");
		document.frm.put_out.focus();
		return false;
	}
	if(document.frm.double_play.value==""){
		alert("더블 플레이가 비어있습니다.");
		document.frm.double_play.focus();
		return false;
	}
	if(document.frm.error_count.value==""){
		alert("에러가 비어있습니다.");
		document.frm.error_count.focus();
		return false;
	}
	return true;	
}

function search_check(){
	if(document.frm.registration_code.value==""){
		alert("선수 등록 코드가 입력되지 않았습니다.");
		document.frm.registration_code.focus();
		return false;
	}
}

function rewrite(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.registration_code.focus();
}

function home(){
	location.href="index.jsp";	
}