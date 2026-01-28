<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 | SHOHPPINGMALL</title>
<style>
    body {
        background-color: #ffffff;
        color: #151515;
        font-family: 'Pretendard', sans-serif;
        margin: 0;
        padding: 0;
    }

    /* 상단 네비게이션 (메인과 동일하게 유지) */
    nav {
        background-color: #ffffff;
        border-bottom: 1px solid #eeeeee;
        padding: 20px 50px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .logo { font-size: 24px; font-weight: 900; text-decoration: none; color: #151515; }
    .logo span { color: #ff0000; }

    /* 마이페이지 컨테이너 */
    .mypage-wrapper {
        max-width: 800px;
        margin: 50px auto;
        padding: 0 20px;
    }

    .mypage-header {
        border-bottom: 2px solid #151515;
        padding-bottom: 20px;
        margin-bottom: 40px;
    }

    .mypage-header h2 {
        margin: 0;
        font-size: 28px;
    }

    /* 정보 섹션 */
    .info-card {
        background: #fcfcfc;
        border-radius: 15px;
        padding: 40px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.03);
    }

    .info-row {
        display: flex;
        padding: 20px 0;
        border-bottom: 1px solid #eee;
        align-items: center;
    }

    .info-row:last-child { border-bottom: none; }

    .info-label {
        width: 150px;
        font-weight: bold;
        color: #888;
        font-size: 14px;
    }

    .info-value {
        flex: 1;
        font-size: 16px;
        font-weight: 500;
    }

    .info-value strong {
        color: #ff0000;
    }

    /* 버튼 영역 */
    .btn-group {
        margin-top: 40px;
        display: flex;
        gap: 15px;
        justify-content: center;
    }

    .btn {
        padding: 15px 40px;
        border-radius: 8px;
        font-weight: bold;
        cursor: pointer;
        transition: all 0.3s ease;
        text-decoration: none;
        font-size: 15px;
    }

    .btn-edit {
        background-color: #ff0000;
        color: white;
        border: none;
    }

    .btn-edit:hover {
        background-color: #151515;
        transform: translateY(-3px);
    }

    .btn-withdraw {
        background-color: #fff;
        color: #888;
        border: 1px solid #ddd;
    }

    .btn-withdraw:hover {
        background-color: #f5f5f5;
        color: #ff0000;
    }
</style>
</head>
<body>

<nav>
    <a href="/customer/mainPage" class="logo">SH<span>OH</span>PPING MALL</a>
    <div class="nav-menu">
        <a href="/customer/mainPage" style="text-decoration:none; color:#151515; font-weight:600;">HOME</a>
    </div>
</nav>

<div class="mypage-wrapper">
    <div class="mypage-header">
        <h2>MY <span>PROFILE</span></h2>
    </div>

    <div class="info-card">
        <div class="info-row">
            <div class="info-label">아이디</div>
            <div class="info-value">${loginUser.id}</div>
        </div>
        <div class="info-row">
            <div class="info-label">이름</div>
            <div class="info-value">${loginUser.name}</div>
        </div>
        <div class="info-row">
            <div class="info-label">보유 캐시</div>
            <div class="info-value"><strong>${loginUser.cash} 원</strong></div>
        </div>
        <div class="info-row">
            <div class="info-label">연락처</div>
            <div class="info-value">${loginUser.phone}</div>
        </div>
        <div class="info-row">
            <div class="info-label">이메일</div>
            <div class="info-value">${loginUser.email}</div>
        </div>
    </div>

    <div class="btn-group">
        <a href="/customer/editForm" class="btn btn-edit">정보 수정하기</a>
        <a href="/customer/withdraw" class="btn btn-withdraw" onclick="return confirm('정말로 탈퇴하시겠습니까?')">회원 탈퇴</a>
    </div>
</div>

</body>
</html>