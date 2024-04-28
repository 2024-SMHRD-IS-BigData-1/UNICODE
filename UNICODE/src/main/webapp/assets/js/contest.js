const rowsPerPage = 5;
const rows = document.querySelectorAll('.contest-box ul li a');
const rowsCount = rows.length;
const pageCount = Math.ceil(rowsCount/rowsPerPage);
const numbers = document.querySelector('#numbers');
const prevPageBtn = document.querySelector('.pagination .fa-arrow-left')
const nextPageBtn = document.querySelector('.pagination .fa-arrow-right')
let pageActiveIdx = 0; //현재 보고 있는 페이지그룹번호
let currentPageNum = 0; // 현재 보고 있는 페이지네이션의 번호
let maxPageNum = 5; // 페이직 그룹 최대 개수

//페이지 네이션 생성부분
for(let i = 1;i <= pageCount;i++){
	numbers.innerHTML += '<li><a href="">'+i+'</a></li>';
}
const numberBtn = numbers.querySelectorAll('a');

// 페이지네이션 번호 감추기
for(nb of numberBtn){
	nb.style.display = 'none';
}

numberBtn.forEach((item,idx)=>{
	item.addEventListener('click',(e)=>{
		e.preventDefault();
		displayRow(idx);
	});
});
function displayRow(idx){
	let start = idx*rowsPerPage;
	let end = start+rowsPerPage;
	let rowsArray = [...rows];
	
	for(ra of rowsArray){
		ra.style.display = 'none';
	}
	
	let newRows = rowsArray.slice(start,end);
	for(nr of newRows){
		nr.style.display = '';
	}
	for(nb of numberBtn){
		nb.classList.remove('active');
	}
	numberBtn[idx].classList.add('active');
}// displayRow
displayRow(0);

// 페이지네이션 그룹 표시 함수
function displayPage(pageActiveIdx) {
    let totalPageCount = Math.ceil(pageCount / maxPageNum);
    let pageArr = [...numberBtn];
    let start = pageActiveIdx * maxPageNum;
    let end = Math.min(start + maxPageNum, pageCount);

    // 모든 페이지 번호를 숨깁니다.
    pageArr.forEach(item => item.style.display = 'none');

    // 현재 페이지 그룹의 페이지 번호만 표시합니다.
    pageArr.slice(start, end).forEach(item => item.style.display = 'block');

    // 버튼 상태 업데이트
    prevPageBtn.style.display = pageActiveIdx > 0 ? 'block' : 'none';
    nextPageBtn.style.display = pageActiveIdx < totalPageCount - 1 ? 'block' : 'none';
}
displayPage(0);

nextPageBtn.addEventListener('click', () => {
    // 다음 페이지 그룹으로 이동이 가능한 경우에만 동작
    if (pageActiveIdx < Math.ceil(pageCount / maxPageNum) - 1) {
        pageActiveIdx++;
        displayRow(pageActiveIdx * maxPageNum);
        displayPage(pageActiveIdx);
    }
});

prevPageBtn.addEventListener('click', () => {
    // 이전 페이지 그룹으로 이동이 가능한 경우에만 동작
    if (pageActiveIdx > 0) {
        pageActiveIdx--;
        displayRow(pageActiveIdx * maxPageNum);
        displayPage(pageActiveIdx);
    }
});
