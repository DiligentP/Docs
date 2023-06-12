pom.xml

```xml
<dependency>
			<groupId>org.bgee.log4jdbc-log4j2</groupId>
			<artifactId>log4jdbc-log4j2-jdbc4.1</artifactId>
			<version>1.16</version>
		</dependency>
```

main/resources/log4jdbc.log4j2.properties

```
log4jdbc.spylogdelegator.name=net.sf.log4jdbc.log.slf4j.Slf4jSpyLogDelegator
```

root-context.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>

...

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

...
```

이렇게 설정을 마치면 시스템 로그를 통해 이전과 달리 JDBC와 관련된 로그들이 추가로 출력된다.