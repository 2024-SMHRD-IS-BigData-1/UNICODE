
// JavaScript
document.addEventListener('DOMContentLoaded', function () {
    const pageButtons = document.querySelectorAll('.page-btn');
    const nextPageButton = document.querySelector('.next-page');
    const articles = document.querySelectorAll('.contest-box');

    // 각 페이지 버튼에 클릭 이벤트 추가
    pageButtons.forEach(function (button) {
        button.addEventListener('click', function (event) {
            event.preventDefault();
            const pageNumber = parseInt(this.getAttribute('data-page'));
            showPage(pageNumber);
    });
});

    // 다음 페이지 버튼에 클릭 이벤트 추가
    nextPageButton.addEventListener('click', function (event) {
        event.preventDefault();
        const currentPage = getCurrentPage();
        const nextPage = currentPage + 1;
        showPage(nextPage);
    });

    // 해당 페이지의 데이터 표시 함수
    function showPage(pageNumber) {
        articles.forEach(function (article) {
            article.style.display = 'none';
        });

    const startIndex = (pageNumber - 1) * 5; // 5는 페이지당 보여지는 항목 수
    const endIndex = startIndex + 5;

    for (let i = startIndex; i < endIndex; i++) {
        if (articles[i]) {
            articles[i].style.display = 'block';
        }
    }
}

// 현재 표시 중인 페이지 번호를 가져오는 함수
    function getCurrentPage() {
        let currentPage = 1;
        articles.forEach(function (article, index) {
            if (article.style.display === 'block') {
                currentPage = Math.ceil((index + 1) / 5);
            }
        });
        return currentPage;
    }
});

