document.addEventListener('DOMContentLoaded', function() {
    // 체크박스 상태가 변경될 때 실행될 함수
    function filterItems() {
      // 선택된 직종 체크박스의 값을 배열로 가져옴
    const selectedJobs = Array.from(document.querySelectorAll('input[name="job"]:checked')).map(checkbox => checkbox.value);
    
      // 모든 항목 숨김
    document.querySelectorAll('.item').forEach(item => {
        item.style.display = 'none';
    });

      // 선택된 직종에 해당하는 항목만 표시
    selectedJobs.forEach(job => {
        document.querySelectorAll(`.item[data-job="${job}"]`).forEach(item => {
        item.style.display = 'block';
        });
    });
    }

    // 체크박스 상태 변경 감지
    document.querySelectorAll('input[name="job"]').forEach(input => {
    input.addEventListener('change', filterItems);
    });

    // 초기 상태에서도 필터링을 적용
    filterItems();
});
