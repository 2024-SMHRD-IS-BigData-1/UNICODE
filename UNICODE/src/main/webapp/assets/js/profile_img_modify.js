    // 이미지와 input 요소를 변수에 저장
    var userImage = document.querySelector('.user-img');
    var fileInput = document.getElementById('fileInput');

    // 이미지 클릭 시 실행되는 함수
    userImage.addEventListener('click', function() {
        // file input 클릭 트리거
        fileInput.click();
    });

    // input의 값이 변경될 때 실행되는 함수
    fileInput.addEventListener('change', function(event) {
        // 선택된 파일이 있는지 확인
        if (event.target.files && event.target.files[0]) {
            // 파일 리더 객체 생성
            var reader = new FileReader();

            // 파일이 로드될 때 실행될 함수 설정
            reader.onload = function(e) {
                // 이미지 src를 읽어온 파일로 변경
                userImage.src = e.target.result;
            }

            // 파일 읽기
            reader.readAsDataURL(event.target.files[0]);
        }
    });