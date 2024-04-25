document.addEventListener('DOMContentLoaded', function() {
    // 'project-done' 클래스를 가진 모든 요소를 찾습니다.
    var projectDone = document.querySelectorAll('.project-done');
    // 찾은 요소의 개수를 구합니다.
    var count = projectDone.length;
    // 'project-done-count' ID를 가진 <span> 태그를 찾아서 개수로 업데이트합니다.
    document.querySelector('#project-done-count').textContent = count;
    
    // 'money-cnt' 클래스를 가진 모든 요소를 찾습니다.
    var moneyCounts = document.querySelectorAll('.money-cnt span');
    // 숫자를 더합니다.
    var total = 0;
    moneyCounts.forEach(function(span) {
        // 쉼표를 제거하고 숫자로 변환한 뒤 total에 더합니다.
        total += parseInt(span.textContent.replace(/,/g, ''));
    });
    // 'money-cnt-total' ID를 가진 <span>에 최종 합계를 표시합니다.
    document.querySelector('#money-cnt-total').textContent = total.toLocaleString();
});

document.addEventListener('DOMContentLoaded', function() {
    // 'project-done2' 클래스를 가진 모든 요소를 찾습니다.
    var projectDone2 = document.querySelectorAll('.project-done');
    
    // 찾은 요소의 개수를 구합니다.
    var count = projectDone2.length;
    
    // 'total-cnt' 클래스 내부의 <span> 태그를 찾아서 개수로 업데이트합니다.
    document.querySelector('#project-done-count2').textContent = count;
});