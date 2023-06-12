## spring.datasource
```properties
# Data Source Properties
spring.datasource.driver-class-name=[JDBC DRIVER]
spring.datasource.url=[URL]
spring.datasource.username=[USERNAME]
spring.datasource.password=[PASSWORD]

# --- MariaDB ---
spring.datasource.driver-class-name=org.mariadb.jdbc.Driver
spring.datasource.url=jdbc:mariadb://diligentp.com:8106/capstone
spring.datasource.username=root
spring.datasource.password=qkrwjdgus

# --- Oracle ---
spring.datasource.driver-class-name=oracle.jdbc.OracleDriver  
spring.datasource.url=jdbc:oracle:thin:@orcl19c:1521:orcl19  
spring.datasource.username=park
spring.datasource.password=park
```

## spring.mvc
```properties
# Spring boot 2.6버전 이후에 spring.mvc.pathmatch.matching-strategy 값이 ant_apth_matcher에서 path_pattern_parser로 변경되면서 몇몇 라이브러리에서 오류가 발생하고 있다!

spring.mvc.pathmatch.matching-strategy=ant_path_matcher
```

## spring.jpa
```properties
  
# JPA Properties
## @entity가 명시된 클래스를 찾아서, 해당 클래스에 맞는 ddl을 생성하고 실행
spring.jpa.generate-ddl=true

# create-drop : 실행 시, 테이블 생성하고, 종료 시 drop
# create : 실행 시, 기존 테이블 drop하고 테이블 생성
# update : 실행 시, Entity 클래스와 스키마를 비교해서, DB에 없는 테이블, 컬럼만을 추가
spring.jpa.hibernate.ddl-auto=[OPTION]
# 시작 시 Entity 클래스와 스키마를 비교해서, 다르면 예외를 던진다.
spring.jpa.hibernate.ddl-auto=validate

# jpa.open-in-view : open in view 경고 억제
spring.jpa.open-in-view=false

## Hibernate가 DB에 날리는 모든 쿼리를 보여줌 (format_sql = 예쁘게 정렬)
spring.jpa.show-sql=true  // 콘솔에 JPA를 통해 실행되는 SQL문을 출력
spring.jpa.properties.hibernate.show-sql=true
spring.jpa.properties.hibernate.format_sql=true

## SQL의 파라미터 바인딩(?) 을 보여줌
logging.level.org.hibernate.SQL=DEBUG
logging.level.org.hibernate.type.descriptor.sql=DEBUG

```
