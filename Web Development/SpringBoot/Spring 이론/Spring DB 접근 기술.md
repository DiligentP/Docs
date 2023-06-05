#Spring #DataBase

## 1. 순수 JDBC (Java DataBase Connectivity)
	자바어플리케이션에서 DB에 접근 할 수 있도록 해주는 자바 API를 사용하는 방법

## 2. Spring JDBC Template
	- MyBatis 
	- iBatis
	- JDBC Template

## 3. JPA (Java Persistence API)
	JPA는 자바 표준 ORM(Object Relational Mapping) 인터페이스를 말하며, 그 구현체로 하이버네이트를 많이 사용함. ORM은 객체와 관계형 데이터베이스를 맵핑하는 기술이다. JPA를 사용하면 데이터 중심 설계에서 객체 중심의 설계로 페러다임을 전환 할 수 있다. 이에 따라 개발 생산성이 향샹된다.

## 4. Spring Data JPA
	Spring Data JPA는 JPA 기술을 추상화 시킨 Repository Interface를 제공하여 개발자가 JPA 를 더 편하게 사용할 수 있게 하는 모듈이다.


참고
[JPA와 Spring Data JPA의 차이 (feat. Hibernate) (velog.io)](https://velog.io/@evelyn82ny/JPA-vs-Spring-Data-JPA)

JPA와 Spring Data JPA의 차이점
	- Spring Data JPA를 사용하지 않는다면 클래스에 @Repository를 작성하고 JPA를 적용한 다음 EntityManager의 API 를 직접 호출해야 Entity에 대한 CRUD가 처리된다.
	- Spring Data JPA의 Repository Interface (SimpleJpaRepository)에는 EntityManager가 포함되어 있기 때문에 직접 작성하지 않아도 내부에서 자동으로 호출된다. 또한 @Repository를 작성하지 않아도 Bean으로 등록된다. 

JPA와 MyBatis 차이점
	MyBatis는 SQL을 그대로 사용할 수 있음.
	JPA : ORM 이라는 것, 그리고 가장 빠르다는 것.
