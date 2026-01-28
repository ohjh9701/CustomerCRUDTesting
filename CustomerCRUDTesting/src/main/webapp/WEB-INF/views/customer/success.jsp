<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 성공 | SHOP</title>
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
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.05);
    }
    .icon {
        font-size: 50px;
        color: #ff0000;
        margin-bottom: 20px;
    }
    h2 {
        margin-bottom: 15px;
        font-size: 24px;
    }
    p {
        color: #666;
        margin-bottom: 30px;
    }
    .btn {
        display: inline-block;
        padding: 12px 30px;
        background-color: #ff0000;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        font-weight: bold;
        transition: all 0.3s ease;
    }
    .btn:hover {
        background-color: #151515;
        transform: translateY(-3px);
    }
</style>
</head>
<body>

<div class="message-container">
    <div class="icon">Welcome!</div>
    <h2>${coment}</h2>
    <p>지금 바로 로그인하여 다양한 서비스를 이용해보세요.</p>
    <a href="/customer/loginForm" class="btn">로그인하러 가기</a>
</div>

</body>
</html>