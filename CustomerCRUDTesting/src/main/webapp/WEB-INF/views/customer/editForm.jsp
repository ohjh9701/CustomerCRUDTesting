<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정 | SHOP</title>
<style>
    body {
        background-color: #ffffff;
        color: #151515;
        font-family: 'Pretendard', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
    }

    .edit-container {
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
    }

    h2 span { color: #ff0000; }

    .form-group { margin-bottom: 20px; }

    .form-group label {
        display: block;
        font-size: 14px;
        font-weight: 600;
        margin-bottom: 8px;
    }

    .form-group input {
        width: 100%;
        padding: 12px;
        border: 1px solid #e1e1e1;
        border-radius: 6px;
        box-sizing: border-box;
    }

    /* 아이디는 수정 불가능하도록 스타일 처리 */
    .form-group input[readonly] {
        background-color: #f5f5f5;
        color: #888;
        cursor: not-allowed;
    }

    .form-group input:focus:not([readonly]) {
        outline: none;
        border-color: #ff0000;
    }

    .btn-group {
        display: flex;
        gap: 10px;
        margin-top: 30px;
    }

    .btn {
        flex: 1;
        padding: 15px;
        border-radius: 6px;
        font-weight: bold;
        cursor: pointer;
        transition: all 0.3s ease;
        text-align: center;
        text-decoration: none;
    }

    .btn-submit {
        background-color: #ff0000;
        color: white;
        border: none;
    }

    .btn-submit:hover {
        background-color: #151515;
        transform: translateY(-2px);
    }

    .btn-cancel {
        background-color: #f5f5f5;
        color: #151515;
        border: 1px solid #ddd;
    }

    .btn-cancel:hover { background-color: #e0e0e0; }
</style>
</head>
<body>

<div class="edit-container">
    <h2>회원정보<span>수정</span></h2>
    
    <form action="/customer/update" method="post">
        <div class="form-group">
            <label>아이디 (수정 불가)</label>
            <input type="text" name="id" value="${loginUser.id}" readonly>
        </div>

        <div class="form-group">
            <label for="name">이름</label>
            <input type="text" id="name" name="name" value="${loginUser.name}" required>
        </div>

        <div class="form-group">
            <label for="password">새 비밀번호</label>
            <input type="password" id="password" name="password" placeholder="변경할 비밀번호를 입력하세요">
        </div>

        <div class="form-group">
            <label for="phone">연락처</label>
            <input type="tel" id="phone" name="phone" value="${loginUser.phone}">
        </div>

        <div class="form-group">
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" value="${loginUser.email}">
        </div>

        <div class="btn-group">
            <button type="submit" class="btn btn-submit">수정 완료</button>
            <a href="/customer/mypage" class="btn btn-cancel">취소</a>
        </div>
    </form>
</div>

</body>
</html>