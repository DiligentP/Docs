`<!-- HikariConfig Bean -->` 추가

```xml
<!-- HikariConfig Bean -->
<bean id="hikariConfig" class="com.zaxxer.hikari.HikariConfig">
<!--		<property name="driverClassName" value="oracle.jdbc.OracleDriver"/>-->
<!--		<property name="jdbcUrl" value="jdbc:oracle:thin:@diligentp.com:1521:XE"/>-->
<!--		<property name="username" value="park"/>-->
<!--		<property name="password" value="park"/>-->
		<property name="driverClassName" value="net.sf.log4jdbc.sql.jdbcapi.DriverSpy"/>
		<property name="jdbcUrl" value="jdbc:log4jdbc:oracle:thin:@diligentp.com:1521:XE"/>
		<property name="username" value="park"/>
		<property name="password" value="park"/>
	</bean>

<!-- HikariConfig Configuration -->
	<bean id="dataSource" class="com.zaxxer.hikari.HikariDataSource" destroy-method="close">
		<constructor-arg ref="hikariConfig"/>
	</bean>
	<bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
		<property name="dataSource" ref="dataSource"/>
<!--		<property name="mapperLocations" value="classpath*:org/mnu/mapper/*.xml"/>-->
</bean>
```

`<!-- mybatis -->`

```xml
xmlns:mybatis-spring="<http://mybatis.org/schema/mybatis-spring>"
xsi:schemaLocation="<http://mybatis.org/schema/mybatis-spring> <http://mybatis.org/schema/mybatis-spring-1.2.xsd>
		<http://www.springframework.org/schema/beans> <https://www.springframework.org/schema/beans/spring-beans.xsd>
		<http://www.springframework.org/schema/context> <http://www.springframework.org/schema/context/spring-context.xsd>">

<!-- 가장 상위 디렉토리를 지정함으로써, 여러개의 매퍼를 모두 빈으로 등록 -->
	<mybatis-spring:scan base-package="org.mnu.mapper"/>
```

`<!-- Component-scan -->`