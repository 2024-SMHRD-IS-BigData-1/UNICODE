document.addEventListener('DOMContentLoaded', (event) => {
    const itemsPerPage = 2; // 한 페이지 당 보여줄 아이템의 수
    const members = document.querySelectorAll('.paging'); // 모든 멤버 리스트 항목을 선택
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
    const paginationList = document.getElementById('pagination-list');
    // 기존 페이지 목록을 초기화
    paginationList.innerHTML = '';

    for (let i = 1; i <= totalPages; i++) {
        const li = document.createElement('li');
        const a = document.createElement('a');
        a.href = "#"; // 필요하다면 여기에 실제 페이지를 로드하는 링크를 설정할 수 있습니다.
        a.innerText = i;
        a.classList.add('page-link');
        a.classList.add('present-page');
        
        // 현재 페이지를 강조 표시하기 위해 클래스 추가
        // 예를 들어, 'i'가 현재 페이지 번호와 같다면, a.classList.add('present-page')를 추가할 수 있습니다.
        
        a.addEventListener('click', (event) => {
            event.preventDefault(); // 페이지 리로드 방지
            showPage(i);
        });

        li.appendChild(a);
        paginationList.appendChild(li);
    }
}


    setupPagination(totalPages);
    showPage(1); // 초기 페이지 로드
});