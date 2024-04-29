<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        *{
            font-family: "NotoSansKR", "Sans-serif";
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            padding: 0;
            margin: 0;
            border: none;
        }
        body{
            font-size: 14px;
            font-family: 'Roboto', sans-serif;
            background-color: #e7e7e7;
        }

    a {
        color: inherit;
        cursor: pointer;
        text-decoration: none;
        }
    .abox{
        background-color:#8910ec;
        color: #FFF;
        
        padding: 20px;
        border-radius: 8px;
        
    }
    .abox:hover{
        background-color:#57009e;
        color: #FFF;
        
    }
    
    </style>
</head>
<body>
    
    <div style="margin-top: 261px; display: grid; align-items: center; ">
        <div style="margin: 0 auto; width: 70%;">
            <img src="./img/UNICODE.png" style="margin: 0 auto; width: 70%;" alt="">
        </div>
        <div style="text-align: center; font-size: xx-large; margin-top: 60px;">
            <button class="abox"><b>카카오페이 결제</b></button>
            
        </div>
    </div>
    
    <% 
    String prize = request.getParameter("prize");
    %> 
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    <script type="text/javascript">
	    IMP.init("imp41664822"); // 가맹점 식별코드 초기화
	    
	    const button = document.querySelector("button");
	    const generateMerchantUID = () => {
	        return `uid_${new Date().getTime()}`;
	    }

	    const onClickPay = () => {
	        IMP.request_pay({
	            pg: "kakaopay",
	            pay_method: "card",
	            amount: "<%=prize%>",
	            name: "UNICODE",
	            merchant_uid: generateMerchantUID(), // 여기서 함수를 호출하여 고유한 UID 생성
	        }, function(response) {
	            // 결제 완료 후 콜백 함수
	            if (response.success) {
	                alert("결제가 성공적으로 완료되었습니다.");
	                window.location.href = "Contest.jsp";
	            } else {
	                alert("결제에 실패하였습니다. 에러 메시지: " + response.error_msg);
	            }
	        });
	    };
	    
	    button.addEventListener("click", onClickPay);
	</script>


</body>
</html>
