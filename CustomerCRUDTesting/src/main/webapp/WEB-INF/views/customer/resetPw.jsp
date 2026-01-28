<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정 | SHOP</title>
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
    .reset-container {
        width: 100%;
        max-width: 400px;
        padding: 40px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.08);
        border-radius: 12px;
        text-align: center;
    }
    h2 {
        font-size: 22px;
        margin-bottom: 10px;
    }
    h2 span { color: #ff0000; }
    .user-info {
        background-color: #f9f9f9;
        padding: 10px;
        border-radius: 6px;
        margin-bottom: 25px;
        font-size: 14px;
        color: #666;
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
    .reset-btn {
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
    .reset-btn:hover {
        background-color: #151515;
        transform: translateY(-2px);
    }
    #msg {
        font-size: 12px;
        margin-top: 5px;
        display: block;
    }
</style>
</head>
<body>

<div class="reset-container">
    <h2><span>비밀번호</span> 재설정</h2>
    <div class="user-info">
        <strong>${customer.id}</strong>님의 비밀번호를 재설정합니다.
    </div>

    <form action="/customer/updatePw" method="post" onsubmit="return validateForm()">
        <input type="hidden" name="id" value="${customer.id}">

        <div class="form-group">
            <label for="password">새 비밀번호</label>
            <input type="password" id="password" name="password" placeholder="새 비밀번호를 입력하세요" required>
        </div>

        <div class="form-group">
            <label for="passwordConfirm">비밀번호 확인</label>
            <input type="password" id="passwordConfirm" placeholder="비밀번호를 한 번 더 입력하세요" required>
            <span id="msg"></span>
        </div>

        <button type="submit" class="reset-btn">비밀번호 변경하기</button>
    </form>
</div>

<script>
    function validateForm() {
        const pw = document.getElementById('password').value;
        const pwConfirm = document.getElementById('passwordConfirm').value;
        const msg = document.getElementById('msg');

        if (pw !== pwConfirm) {
            msg.style.color = '#ff0000';
            msg.innerText = '비밀번호가 일치하지 않습니다.';
            return false;
        }
        return true;
    }
</script>

</body>
</html>