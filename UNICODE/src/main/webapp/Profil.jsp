<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/Profil.css">
    <link rel="stylesheet" href="assets/css/Main.css">
    
</head>
<body>
<%
		String id = request.getParameter("id");
		String tel = request.getParameter("tel");
	%>

	<form action="ProfilService" method="post" enctype="multipart/form-data">
	    <div class="info_modification">
	        <div>
	            <h2 class="info_modification_h2">UNICODE 프로필</h2>
	            <!-- 회원 아이디 -->
	            <div style="margin-bottom:30px;">
	                <h3>
	                    <label for="name">아이디</label>
	                </h3>
	                <span>
	                    <input type="text" id="id" name="u_id" value="<%=id %>" readonly/>
	                </span>
	            </div>
	            
	            <!-- 이름 -->
	            <div>
	                <h3>
	                    <label for="name">이름</label>
	                </h3>
	                <span>
	                    <input type="text" id="name" name="profile_name" maxlength="20">
	                </span>
	            </div>
	
	            <!-- 연락처 -->
	            <div id="tel">
	                <h3>
	                    <label for="tel">연락처</label>
	                </h3>
	                <span>
	                    <input type="text" id="tel" name="profile_tel" value="<%=tel%>" readonly>
	                </span>
	            </div>
	
	            <!-- 보유기술 -->
	            <div>
	                <h3>
	                    <label for="h_tech">보유기술</label>
	                </h3>
	                <span>
	                    <input type="checkbox" name="profile_tech" value="java">JAVA
	                    <input style="margin-left:15px;" type="checkbox" name="profile_tech" value="C">C
	                    <input style="margin-left:15px;" type="checkbox" name="profile_tech" value="python">PYTHON
	                    <input style="margin-left:15px;" type="checkbox" name="profile_tech" value="html">HTML
	                    <input style="margin-left:15px;" type="checkbox" name="profile_tech" value="css">CSS
	                    <input style="margin-left:15px;" type="checkbox" name="profile_tech" value="db">DB
	                    <input style="margin-left:15px;" type="checkbox" name="profile_tech" value="jsp">JSP
	                </span>
	            </div>
	
	            <!-- 주소 -->
	            <div>
	                <h3>
	                    <label for="address">지역</label>
	                </h3>
	                <span>
	                    <select name="profile_region" id="address_list" style="margin-bottom: 10px;">
	                        <option value="서울">서울특별시</option>
	                        <option value="인천">인천광역시</option>
	                        <option value="대전">대전광역시</option>
	                        <option value="대구">대구광역시</option>
	                        <option value="울산">울산광역시</option>
	                        <option value="부산">부산광역시</option>
	                        <option value="광주">광주광역시</option>
	                        <option value="세종">세종특별자치시</option>
	                        <option value="경기도">경기도</option>
	                        <option value="강원도">강원도</option>
	                        <option value="충청남도">충청남도</option>
	                        <option value="충청북도">충청북도</option>
	                        <option value="경상북도">경상북도</option>
	                        <option value="전라북도">전라북도</option>
	                        <option value="경상남도">경상남도</option>
	                        <option value="전라남도">전라남도</option>
	                        <option value="제주도">제주도특별자치도</option>
	                        <option value="울릉도">울릉도</option>
	                        <option value="독도">독도</option>
	                    </select>
	                </span>
	            </div>
	

	            <div>
	                <h3>
	                    <label for="academic_ability">개발가능 기간</label>
	                </h3>
	                <span>
	                    <input type="text" id="academic_ability" name="profile_period" maxlength="20">
	                </span>
	            </div>
	
	            <!-- 원하는 임금 -->
	            <div>
	                <h3>
	                    <label for="">원하는 임금</label>
	                </h3>
	                <span>
	                    <input type="text" name="profile_wage" maxlength="20">
	                </span>
	            </div>
	
	            <!-- 상주 여부 -->
	            <div>
	                <h3>
	                    <label for="">상주 여부</label>
	                </h3>
	                <span>
	                    <input type="radio" name="profile_residence" value="상주">가능
	                    <input type="radio" name="profile_residence" value="외주">불가능
	                    <input type="radio" name="profile_residence" value="상주•외주">상관없음
	                </span>
	            </div>
	
	            <!-- 경력사항 -->
	            <div>
	                <h3 style="margin-top: 10px;">
	                    <label for="career">경력</label>
	                </h3>
	                <div id="careerList">
	                    <!-- 경력사항 추가되는 부분 -->
	                    <input type="text" name="profile_career">
	                </div>
	                <button type="button" id="ca_addButton">경력사항 추가</button>
	                <button type="button" id="ca_deleteButton">경력사항 삭제</button>
	            </div>
	
	
	            <!-- 자격증 -->
	            <div>
	                <h3>
	                    <label for="certificate">자격증</label>
	                </h3>
	                <div id="certificateList">
	                    <!-- 자격증 추가되는 부분 -->
	                    <input type="text" name="profile_license">
	                </div>
	                <button type="button" id="ce_addButton">자격증 추가</button>
	                <button type="button" id="ce_deleteButton">자격증 삭제</button>
	            </div>
	
	            <!-- 수상이력 -->
	            <div>
	                <h3>
	                    <label for="prime">수상이력</label>
	                </h3>
	                <div id="primeList">
	                    <!-- 수상이력 추가되는 부분 -->
	                    <input type="text" name="profile_award">
	                </div>
	                <button type="button" id="pr_addButton">수상이력 추가</button>
	                <button type="button" id="pr_deleteButton">수상이력 삭제</button>
	            </div>
	
	            <!-- 프로필 사진 -->
	            <div style="margin-top: 10px;">
	                <h3>
	                    <label for="">프로필 사진</label>
	                </h3>
	                <input type="file" name="profile_img">
	            </div>
	
	            <!-- 저장/취소 버튼 -->
	            <div class="sa_ca_button" style="padding: 30px;">
	            	<input type="submit" value="저장">
	            	<input type="submit" value="취소">
	                <!-- <button type="submit">저장</button>
	                <button type="submit">취소</button> -->
	            </div>
	
	        </div>
	    </div>
    </form>
    <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        const addButton_ca = {
            "ca": document.getElementById("ca_addButton")
        };
         const addButton_ce = {
                "ce": document.getElementById("ce_addButton")
        };
        const addButton_pr = {
                "pr": document.getElementById("pr_addButton")
        };
 
        const deleteButton = {
            "ca": document.getElementById("ca_deleteButton"),
            "ce": document.getElementById("ce_deleteButton"),
            "pr": document.getElementById("pr_deleteButton")
        };

        const textList = {
            "ca": document.getElementById("careerList"),
            "ce": document.getElementById("certificateList"),
            "pr": document.getElementById("primeList")
        };

        Object.keys(addButton_ca).forEach(function(key) {
            addButton_ca[key].addEventListener("click", function() {
                const newTextItem = document.createElement("input");
                newTextItem.type = "text";
                newTextItem.className = "textItem";
                 newTextItem.name ="profile_career"; 
                textList[key].appendChild(newTextItem);
       		});
            deleteButton[key].addEventListener("click", function() {
                const textItems = textList[key].querySelectorAll(".textItem");
                if (textItems.length > 0) {
                    const lastItemIndex = textItems.length - 1;
                    textList[key].removeChild(textItems[lastItemIndex]);
                }
            });
        });
         Object.keys(addButton_ce).forEach(function(key) {
            addButton_ce[key].addEventListener("click", function() {
                const newTextItem = document.createElement("input");
                newTextItem.type = "text";
                newTextItem.className = "textItem";
                newTextItem.name ="profile_license";
                textList[key].appendChild(newTextItem);
       		});
            deleteButton[key].addEventListener("click", function() {
                const textItems = textList[key].querySelectorAll(".textItem");
                if (textItems.length > 0) {
                    const lastItemIndex = textItems.length - 1;
                    textList[key].removeChild(textItems[lastItemIndex]);
                }
            });
        });
        Object.keys(addButton_pr).forEach(function(key) {
            addButton_pr[key].addEventListener("click", function() {
                const newTextItem = document.createElement("input");
                newTextItem.type = "text";
                newTextItem.className = "textItem";
                newTextItem.name ="profile_award";
                textList[key].appendChild(newTextItem);
       		});
            deleteButton[key].addEventListener("click", function() {
                const textItems = textList[key].querySelectorAll(".textItem");
                if (textItems.length > 0) {
                    const lastItemIndex = textItems.length - 1;
                    textList[key].removeChild(textItems[lastItemIndex]);
                }
            });
        }); 
    });

  	</script>
</body>
</html>