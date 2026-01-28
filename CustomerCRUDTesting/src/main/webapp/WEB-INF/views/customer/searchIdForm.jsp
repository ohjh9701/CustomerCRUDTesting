<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 | SHOP</title>
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
    .search-container {
        width: 100%;
        max-width: 400px;
        padding: 40px;
        text-align: center;
        box-shadow: 0 10px 30px rgba(0,0,0,0.05);
        border-radius: 12px;
    }
    .tab-menu {
        display: flex;
        margin-bottom: 30px;
        border-bottom: 2px solid #f5f5f5;
    }
    .tab-menu a {
        flex: 1;
        padding: 15px;
        text-decoration: none;
        color: #888;
        font-weight: bold;
        transition: 0.3s;
    }
    .tab-menu a.active {
        color: #ff0000;
        border-bottom: 2px solid #ff0000;
    }
    .form-group {
        text-align: left;
        margin-bottom: 20px;
    }
    .form-group label {
        display: block;
        font-size: 13px;
        font-weight: 600;
        margin-bottom: 8px;
    }
    .form-group input {
        width: 100%;
        padding: 12px;
        border: 1px solid #ddd;
        border-radius: 6px;
        box-sizing: border-box;
    }
    .form-group input:focus {
        outline: none;
        border-color: #ff0000;
    }
    .search-btn {
        width: 100%;
        padding: 15px;
        background-color: #ff0000;
        color: white;
        border: none;
        border-radius: 6px;
        font-weight: bold;
        cursor: pointer;
        transition: all 0.3s ease;
    }
    .search-btn:hover {
        background-color: #151515;
        transform: translateY(-2px);
    }
    .footer-link {
        margin-top: 20px;
        font-size: 13px;
    }
    .footer-link a {
        color: #888;
        text-decoration: none;
    }
</style>
</head>
<body>

<div class="search-container">
    <div class="tab-menu">
        <a href="/customer/searchIdForm" class="active">아이디 찾기</a>
        <a href="/customer/searchPwForm">비밀번호 찾기</a>
    </div>

    <form action="/customer/searchId" method="post">
        <div class="form-group">
            <label for="name">이름</label>
            <input type="text" id="name" name="name" placeholder="가입하신 이름을 입력하세요" required>
        </div>
        <div class="form-group">
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" placeholder="가입하신 이메일을 입력하세요" required>
        </div>
        <button type="submit" class="search-btn">아이디 확인</button>
    </form>
    
    <div class="footer-link">
        <a href="/customer/loginForm">로그인 화면으로 돌아가기</a>
    </div>
</div>

</body>
</html>