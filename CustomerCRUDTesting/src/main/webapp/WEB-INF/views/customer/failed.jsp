<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 실패 | SHOP</title>
<style>
    body {
        background-color: #ffffff;
        color: #151515;
        font-family: 'Pretendard', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .message-container {
        text-align: center;
        padding: 50px;
        border: 1px solid #eee;
        border-radius: 12px;
    }
    .icon {
        font-size: 50px;
        color: #151515;
        margin-bottom: 20px;
    }
    h2 {
        margin-bottom: 15px;
        font-size: 24px;
        color: #ff0000; /* 실패 메시지도 강조를 위해 레드 사용 */
    }
    .btn-group {
        margin-top: 30px;
    }
    .btn-back {
        padding: 12px 30px;
        background-color: #151515;
        color: white;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-weight: bold;
        transition: opacity 0.3s;
    }
    .btn-back:hover {
        opacity: 0.8;
    }
</style>
</head>
<body>

<div class="message-container">
    <div class="icon">!</div>
    <h2>${coment}</h2>
    <p>입력하신 정보를 다시 확인해 주세요.</p>
    
    <div class="btn-group">
        <button onclick="history.back()" class="btn-back">다시 시도하기</button>
    </div>
</div>

</body>
</html>