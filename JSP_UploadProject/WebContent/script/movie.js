function movieCheck(){
	if(document.frm.title.value.length == 0) {
		alert("제목을 써주세요");
		frm.name.focus();
		return false;
	}
	if(document.frm.price.value.length == 0) {
		alert("가격을 써주세요");
		frm.price.focus();
		return false;
	}
	if (isNaN(document.frm.price.value)){
		alert("숫자로 입력해야 합니다");
		frm.price.focus();
		return false;
	}
	if(document.frm.director.value.length == 0) {
		alert("감독을 써주세요");
		frm.price.focus();
		return false;
	}
	if(document.frm.actor.value.length == 0) {
		alert("배우을 써주세요");
		frm.price.focus();
		return false;
	}
	return true;
}