[[MySQL 기초] 9. AUTO\_INCREMENT 조회 및 초기화(변경) : 네이버 블로그](https://m.blog.naver.com/dldudcks1779/222006115309)


## 현재 Auto_increment 확인

```SQL
SHOW TABLE STATUS WHERE name = '테이블 이름';
```

```SQL
﻿mysql> ALTER TABLE 테이블 이름 AUTO_INCREMENT=변경할 숫자;
```

**AUTO_INCREMENT를 초기화(변경) 할 때는변경할 AUTO_INCREMENT의 값이 해당 컬럼에서 가장 큰 값보다 커야 합니다.**


## 문제 상황

AUTO_INCREMENT 를 변경할때, 시간이 생각 이상으로 많이 지체되는 경우가 생깁니다.
이때는 테이블의 데이터량이 많거나  테이블이 사용중일 수 있습니다. 

이런 경우에는 다음과 같이 테이블을 잠금 후 진행합니다.

```
LOCK TABLES vocas WRITE; 
ALTER TABLE vocas AUTO_INCREMENT = 6; 
UNLOCK TABLES;
```