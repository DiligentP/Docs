```
...
[java]
|--- Controler
|--- Service
|--- Repository
|--- Domain
[resources]
|--- Application.properies
```

컨트롤러 : 웹 MVC의 컨트롤러 역할
서비스 : 핵심 비지니스 로지 구현
리포지토리 : 데이터베이스에 접근, 도메인 객체를 DB에 저장하고 관리
도메인 : 비지니스 도메인 객체, 예) 회원, 주문, 쿠폰, 등등 주로 데이터베이스에 저장하고 관리됨