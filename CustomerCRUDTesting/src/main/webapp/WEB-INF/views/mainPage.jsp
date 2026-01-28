<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지 | SHOP</title>
<style>
/* 기본 레이아웃 */
body {
	background-color: #ffffff;
	color: #151515;
	font-family: 'Pretendard', sans-serif;
	margin: 0;
	padding: 0;
}

/* 상단 네비게이션 바 */
nav {
	background-color: #ffffff;
	border-bottom: 1px solid #eeeeee;
	padding: 20px 50px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: sticky;
	top: 0;
	z-index: 1000;
}

.logo {
	font-size: 24px;
	font-weight: 900;
	color: #151515;
	text-decoration: none;
}

.logo span {
	color: #ff0000;
}

.nav-menu a {
	margin-left: 30px;
	text-decoration: none;
	color: #151515;
	font-weight: 600;
	font-size: 14px;
	transition: color 0.3s;
}

.nav-menu a:hover {
	color: #ff0000;
}

/* 히어로 섹션 (환영 문구) */
.hero-section {
	background-color: #fcfcfc;
	padding: 100px 50px;
	text-align: center;
}

.welcome-msg {
	font-size: 40px;
	font-weight: 800;
	margin-bottom: 20px;
}

.welcome-msg span {
	color: #ff0000;
}

.user-stats {
	display: inline-flex;
	gap: 20px;
	background: white;
	padding: 20px 40px;
	border-radius: 50px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
}

.stat-item {
	font-size: 16px;
}

.stat-item strong {
	color: #ff0000;
}

/* 쇼핑몰 콘텐츠 영역 (예시) */
.content-area {
	padding: 50px;
	max-width: 1200px;
	margin: 0 auto;
}

.product-grid {
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
	gap: 30px;
	margin-top: 40px;
}

.product-card {
	background: #f9f9f9;
	height: 300px;
	border-radius: 12px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-weight: bold;
	color: #ccc;
	transition: all 0.3s;
	cursor: pointer;
	border: 1px solid transparent;
}

/* 호버 애니메이션: 테두리 강조 및 살짝 커짐 */
.product-card:hover {
	border-color: #ff0000;
	color: #ff0000;
	transform: scale(1.03);
	background: #ffffff;
	box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
}

.logout-btn {
	border: solid 1px #ff0000;
	color: white;
	padding: 8px 16px;
	border-radius: 4px;
	font-size: 12px !important;
}
/* 카드의 높이 설정을 'auto'로 변경하여 내용물에 맞게 늘어나게 합니다 */
.product-card {
    background: #ffffff;
    height: auto; /* 고정 높이 해제 */
    border-radius: 12px;
    display: flex;
    flex-direction: column; /* 세로 정렬 */
    overflow: hidden; /* 이미지가 둥근 모서리를 벗어나지 않게 */
    transition: all 0.3s;
    cursor: pointer;
    border: 1px solid #eee;
}

/* 이미지 박스 설정 */
.product-img-box {
    width: 100%;
    height: 200px; /* 이미지 영역 높이 고정 */
    overflow: hidden;
    background-color: #f5f5f5;
}

.product-img-box img {
    width: 100%;
    height: 100%;
    object-fit: cover; /* 이미지 비율을 유지하며 꽉 채움 */
    transition: transform 0.3s; /* 이미지 확대 애니메이션 */
}

/* 호버 시 이미지 살짝 확대 효과 */
.product-card:hover .product-img-box img {
    transform: scale(1.1);
}

/* 상품 정보 텍스트 */
.product-info {
    padding: 15px;
    text-align: left;
}

.product-name {
    font-size: 15px;
    margin: 0 0 5px 0;
    color: #151515;
}

.product-price {
    font-size: 16px;
    font-weight: bold;
    color: #ff0000; /* 포인트 컬러 레드 */
    margin: 0;
}
</style>
</head>
<body>

	<nav>
		<a href="#" class="logo">SH<span>OH</span>PPING MALL
		</a>
		<div class="nav-menu">
			<a href="#">BEST</a> <a href="#">NEW</a> <a href="/customer/mypage">MY PAGE</a> <a
				href="/customer/logout" class="logout-btn">LOGOUT</a>
		</div>
	</nav>

	<div class="hero-section">
		<div class="welcome-msg">
			<span>${loginUser.name}</span>님! 환영합니다
		</div>
		<div class="user-stats">
			<div class="stat-item">
				ID: <strong>${loginUser.id}</strong>
			</div>
			<div class="stat-item">
				보유 캐시: <strong>${loginUser.cash}원</strong>
			</div>
		</div>
	</div>

	<div class="content-area">
		<h2>오늘의 <span style="color: #ff0000">BEST</span> 추천 상품</h2>
		<div class="product-grid">
			<div class="product-card">
				<div class="product-img-box">
					<img src="/resources/images/item1.jpg" alt="상품이미지">
				</div>
				<div class="product-info">
					<p class="product-name">T1 레드 유니폼</p>
					<p class="product-price">129,000원</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-img-box">
					<img src="/resources/images/item2.jpg" alt="상품이미지">
				</div>
				<div class="product-info">
					<p class="product-name">T1 홈 유니폼</p>
					<p class="product-price">89,000원</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-img-box">
					<img src="/resources/images/item3.jpg" alt="상품이미지">
				</div>
				<div class="product-info">
					<p class="product-name">T1 홈 유니폼[FAKER]</p>
					<p class="product-price">99,000원</p>
				</div>
			</div>
			<div class="product-card">
				<div class="product-img-box">
					<img src="/resources/images/item4.png" alt="상품이미지">
				</div>
				<div class="product-info">
					<p class="product-name">월즈 우승 기념 유니폼</p>
					<p class="product-price">159,000원</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>