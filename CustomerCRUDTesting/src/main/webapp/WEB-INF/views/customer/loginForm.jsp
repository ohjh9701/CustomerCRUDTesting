<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 | SHOP</title>
<style>
    /* 전체 배경 및 폰트 설정 */
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

    .login-box {
        width: 100%;
        max-width: 380px;
        padding: 50px 40px;
        border-radius: 15px;
        box-shadow: 0 20px 40px rgba(0,0,0,0.06);
        text-align: center;
    }

    .login-box h2 {
        font-size: 28px;
        font-weight: 800;
        margin-bottom: 40px;
        letter-spacing: -1px;
    }

    .login-box h2 span {
        color: #ff0000; /* 레드 포인트 */
    }

    /* 입력 필드 스타일 */
    .input-group {
        margin-bottom: 15px;
        text-align: left;
    }

    .input-group input {
        width: 100%;
        padding: 15px;
        border: 1px solid #eee;
        border-radius: 8px;
        background-color: #f9f9f9;
        box-sizing: border-box;
        transition: all 0.3s ease;
    }

    .input-group input:focus {
        outline: none;
        background-color: #fff;
        border-color: #ff0000;
        box-shadow: 0 0 8px rgba(255, 0, 0, 0.1);
    }

    /* 로그인 버튼 - 기본 레드 */
    .login-btn {
        width: 100%;
        padding: 16px;
        margin-top: 20px;
        background-color: #ff0000;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    }

    /* 호버 애니메이션: 색상 반전 + 약간 커지는 효과 */
    .login-btn:hover {
        background-color: #151515; /* 블랙으로 반전 */
        transform: scale(1.02);
        box-shadow: 0 10px 20px rgba(0,0,0,0.15);
    }

    /* 하단 보조 메뉴 */
    .sub-menu {
        margin-top: 25px;
        display: flex;
        justify-content: center;
        gap: 20px;
        font-size: 13px;
        color: #888;
    }

    .sub-menu a {
        color: #888;
        text-decoration: none;
        transition: color 0.2s;
    }

    .sub-menu a:hover {
        color: #ff0000;
        text-decoration: underline;
    }

    .join-link {
        margin-top: 30px;
        padding-top: 20px;
        border-top: 1px solid #f5f5f5;
        font-size: 14px;
    }

    .join-link a {
        color: #ff0000;
        font-weight: bold;
        text-decoration: none;
        margin-left: 8px;
    }
</style>
</head>
<body>

<div class="login-box">
    <h2>SH<span>OH</span>PPING MALL 로그인</h2>
    
    <form action="/customer/login" method="post">
        <div class="input-group">
            <input type="text" name="id" placeholder="아이디" required>
        </div>
        
        <div class="input-group">
            <input type="password" name="password" placeholder="비밀번호" required>
        </div>

        <button type="submit" class="login-btn">로그인</button>
    </form>

    <div class="sub-menu">
        <a href="/customer/searchIdForm">아이디 찾기</a>
        <a href="/customer/searchPwForm">비밀번호 찾기</a>
    </div>

    <div class="join-link">
        아직 회원이 아니신가요? <a href="/customer/joinForm">회원가입</a>
    </div>
</div>

</body>
</html>