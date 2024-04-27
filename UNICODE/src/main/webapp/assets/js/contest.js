const rowsPerPage = 5;
const rows = document.querySelectorAll('.contest-box ul li a');
const rowsCount = rows.length;
const pageCount = Math.ceil(rowsCount / rowsPerPage);
const numbers = document.querySelector('#numbers');

// 페이지 네이션 생성부분 수정
for (let i = 1; i <= pageCount; i++) {
    let li = document.createElement('li');
    let a = document.createElement('a');
    a.href = "#";
    a.textContent = i; // 페이지 번호를 텍스트로 설정
    a.addEventListener('click', (e) => { // 각 링크에 이벤트 리스너 추가
        e.preventDefault();
        document.querySelectorAll('#numbers a').forEach(el => el.classList.remove('active'));
        a.classList.add('active');
    });
    li.appendChild(a);
    numbers.appendChild(li);
}