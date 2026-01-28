<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 | SHOHPPINGMALL</title>
<style>
    /* 기본 설정 */
    body {
        background-color: #ffffff;
        color: #151515;
        font-family: 'Pretendard', -apple-system, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
    }

    .join-container {
        width: 100%;
        max-width: 400px;
        padding: 40px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.08);
        border-radius: 12px;
    }

    h2 {
        text-align: center;
        font-size: 24px;
        margin-bottom: 30px;
        color: #151515;
    }

    h2 span {
        color: #ff0000; /* 포인트 컬러: 레드 */
    }

    /* 입력 폼 스타일 */
    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        font-size: 14px;
        font-weight: 600;
        margin-bottom: 8px;
    }

    .form-group input {
        width: 100%;
        padding: 12px 15px;
        border: 1px solid #e1e1e1;
        border-radius: 6px;
        box-sizing: border-box;
        transition: border-color 0.3s ease;
    }

    .form-group input:focus {
        outline: none;
        border-color: #ff0000;
    }

    /* 버튼 스타일 및 애니메이션 */
    .join-btn {
        width: 100%;
        padding: 15px;
        background-color: #ff0000; /* 레드 */
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: all 0.3s ease; /* 애니메이션 속도 */
    }

    /* 호버 효과: 색상 반전 및 위로 이동 */
    .join-btn:hover {
        background-color: #151515; /* 화이트 배경 대신 블랙으로 반전하여 강렬함 전달 */
        transform: translateY(-3px); /* 위로 살짝 이동 */
        box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    }

    .join-btn:active {
        transform: translateY(-1px);
    }

    /* 하단 보조 링크 */
    .footer-links {
        text-align: center;
        margin-top: 20px;
        font-size: 13px;
        color: #888;
    }

    .footer-links a {
        color: #151515;
        text-decoration: none;
        margin-left: 5px;
    }
</style>
</head>
<body>

<div class="join-container">
    <h2>SH<span>OH</span>PPING MALL 회원가입</h2>
    
    <form action="/customer/join" method="post">
        <div class="form-group">
            <label for="id">아이디</label>
            <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" required>
        </div>

        <div class="form-group">
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
        </div>

        <div class="form-group">
            <label for="name">이름</label>
            <input type="text" id="name" name="name" placeholder="이름을 입력하세요" required>
        </div>

        <div class="form-group">
            <label for="phone">연락처</label>
            <input type="text" id="phone" name="phone" placeholder="'-'을 빼고 숫자만 입력해주세요">
        </div>

        <div class="form-group">
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" placeholder="example@mail.com">
        </div>

        <input type="hidden" name="cash" value="0">

        <button type="submit" class="join-btn">가입하기</button>
    </form>

    <div class="footer-links">
        이미 회원이신가요? <a href="/customer/loginForm">로그인하기</a>
    </div>
</div>

</body>
</html>