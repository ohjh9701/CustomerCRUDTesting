# Spring Boot & JDBC Board Project (Legacy DB Access)

본 프로젝트는 **JDBC(Java Database Connectivity)**를 활용하여 데이터베이스와 직접 통신하며, SQL 쿼리를 직접 작성하고 제어하는 방식으로 구축된 게시판 프로젝트입니다. 데이터베이스와의 연결 흐름을 깊이 있게 이해하고, **Raw SQL**을 통한 세밀한 데이터 제어를 목표로 합니다.

## 핵심 기술 스택
* **Backend**: Java 17, Spring Boot 5.0
* **Data Access**: **JDBC**, Spring JDBC (JdbcTemplate)
* **Database**: Oracle DB
* **Frontend**: JSP(Custom Red & White Design)
* **Library**: Lombok, Spring Web

---

## JDBC 활용 핵심 포인트

### 1. Raw SQL 제어 및 쿼리 최적화
* JPA와 같은 ORM 프레임워크를 사용하지 않고, 직접 **SQL 쿼리**를 작성하여 데이터베이스에 전달합니다.
* 간단한 CURD 작업이 가능하도록 하였으며, 키워드와 타입값을 받아서 제목, 작성자, 내용 별로 검색할 수 있는 기능도 추가했습니다.


### 2. DAO (Data Access Object) 패턴 적용
* 비즈니스 로직과 데이터베이스 접근 로직을 분리하기 위해 **DAO 패턴**을 적용했습니다.
* 인터페이스 기반의 DAO 설계를 통해 코드의 결합도를 낮추고 유지보수성을 높였습니다.

---

## 주요 기능

### 회원 관리 (Customer) - JDBC 기반
* **로그인/회원가입**: `SELECT`, `INSERT` 쿼리를 직접 실행하여 회원 인증 및 저장 로직 구현.
* **정보 수정/탈퇴**: `UPDATE`, `DELETE` 문을 활용한 직관적인 데이터 변경 처리.
* **아이디/비밀번호 찾기**: 'SELECT' 문을 활용하여 DB에 저장되어있는 정보들을 검색하여 ID를 찾고 PW는 재설정 할 수 있도록 'UPDATE' 실행
* **세션 관리**: `HttpSession`을 활용하여 로그인된 회원의 상태를 유지.

### 쇼핑몰 메인 (MainPage)
* **리스트 렌더링**: JDBC로 추출한 리스트 데이터를 JSTL `<c:forEach>`를 통해 동적으로 출력.(등록된 상품이 없다면 "상품없음"관련 메시지가 나오도록 코딩)
* **디자인**: 레드 포인트 컬러와 호버 애니메이션이 적용된 반응형 UI.

---

## 🎨 Design Concept
* **Point Color**: `Red` (#ff0000)
* **Background**: `White`
* **Font Color**: `#151515`
* **Features**: 사용자 경험(UX)을 고려한 부드러운 버튼 호버링 및 모던한 레이아웃.

---

## ⚙️ 실행 방법 (Settings)
1. **Database**: Oracle DB 접속 정보를 `application.properties`에 설정합니다.
2. **DataSource 설정**:
   ```properties
   spring.datasource.url=jdbc:oracle:thin:@localhost:1521/xe
   spring.datasource.username=사용자명
   spring.datasource.password=비밀번호
   spring.datasource.driver-class-name=oracle.jdbc.OracleDriver
