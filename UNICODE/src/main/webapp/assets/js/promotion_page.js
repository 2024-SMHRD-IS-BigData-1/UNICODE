document.addEventListener('DOMContentLoaded', (event) => {
    const itemsPerPage = 5; // 한 페이지 당 보여줄 아이템의 수
    const members = document.querySelectorAll('.member-listup'); // 모든 멤버 리스트 항목을 선택
    const totalPages = Math.ceil(members.length / itemsPerPage); // 전체 페이지 수 계산

    function showPage(page) {
        const start = (page - 1) * itemsPerPage;
        const end = start + itemsPerPage;
        members.forEach((member, index) => {
            if (index >= start && index < end) {
                member.style.display = ''; // 현재 페이지에 해당하는 항목만 표시
            } else {
                member.style.display = 'none'; // 그 외 항목은 숨김
            }
        });
    }

    function setupPagination(totalPages) {
        const paginationContainer = document.getElementById('pagination');
        for (let i = 1; i <= totalPages; i++) {
            const btn = document.createElement('button');
            btn.innerText = i;
            btn.addEventListener('click', () => showPage(i));
            paginationContainer.appendChild(btn);
        }
    }

    setupPagination(totalPages);
    showPage(1); // 초기 페이지 로드
});