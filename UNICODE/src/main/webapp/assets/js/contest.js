
function initializePagination() {
    const rows = document.querySelectorAll('.contest-box ul li a');
    console.log(rows);
    if (rows.length === 0) {
        console.error("No pagination items found.");
        return;
    }

    const rowsPerPage = 5;
    const rowsCount = rows.length;
    const pageCount = Math.ceil(rowsCount / rowsPerPage);
    let pageActiveIdx = 0; //현재 보고 있는 페이지그룹번호
    let currentPageNum = 0; // 현재 보고 있는 페이지네이션의 번호
    let maxPageNum = 5; // 페이직 그룹 최대 개수

    // 페이지네이션 번호 생성 및 초기화
    const numbers = document.querySelector('#numbers');
    numbers.innerHTML = ''; // Clear previous pagination numbers
    for (let i = 1; i <= pageCount; i++) {
        numbers.innerHTML += '<li><a href="#">' + i + '</a></li>';
    }
    const numberBtn = numbers.querySelectorAll('a');
    numberBtn.forEach((item, idx) => {
        item.addEventListener('click', (e) => {
            e.preventDefault();
            displayRow(idx, rows, rowsPerPage);
        });
    });
    displayRow(0, rows, rowsPerPage); // Initialize first page display
}

function displayRow(pageIndex, rows, rowsPerPage) {
    const start = pageIndex * rowsPerPage;
    const end = start + rowsPerPage;
    rows.forEach((row, idx) => {
        row.style.display = (idx >= start && idx < end) ? '' : 'none';
    });
}
