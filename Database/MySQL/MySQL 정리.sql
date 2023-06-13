#데이터베이스 접속
$ mysql -u root -p

mysql> SHOW databases;
mysql> SHOW tables;
mysql> CREATE database [데이터베이스];
mysql> CREATE TABLE [테이블];
mysql> USE [데이터베이스];
mysql> DROP database [데이터베이스];

# 유저 생성
mysql> CREATE user <user-name>@'<host>' identified by '<password>';
mysql> CREATE user park@'%' identified by 'park';

# 권한 부여
mysql> GRANT ALL PRIVILEGES ON *.* to '<user-name>'@'<host>';
mysql> GRANT ALL PRIVILEGES ON *.* to 'park'@'%';

# 특정 권한 부여
mysql> GRANT ALL PRIVILEGES ON <DB>.* to '<user-name>'@'<host>';
mysql> GRANT ALL PRIVILEGES ON capstone.* to 'park'@'localhost';

# 적용하기
mysql> flush privileges;


DESCRIBE city;	#city 테이블 열 정보 확인
DESCRIBE country;  # country 테이블 열 정보
DESC city;		# DESC == DESCRIBE

# <SELECT [열] FROM [테이블]>			데이터베이스 내 테이블에서 원하는 정보를 가져옴.
SELECT * FROM city;	# city 테이블에 모든 열을 가지고옴. 


SELECT name, Population FROM city; # city 테이블의 name 열과 population 열만 가지고옴,

# <SELECT [열] FROM [테이블] WHERE[조건문]>
SELECT name,Population FROM city WHERE Population >= 8000000;
SELECT name,Population FROM city WHERE Population < 8000000 AND Population > 7000000;

# ex) 한국에 있는 도시들 보기 
SELECT * FROM city WHERE CountryCode = 'KOR';
# ex) 미국에 있는 도시들 보기
SELECT * FROM city WHERE CountryCode = 'USA';
# ex) 한국에 있는 도시들 중에 인구수가 1,000,000 이상인 도시보기
SELECT * FROM city WHERE CountryCode = 'KOR' AND Population >= 1000000;
# ex) 한국에 있는 도시들 중에 인구수가 700000 ~ 800000 사이인 도시보기
SELECT * FROM city WHERE CountryCode = 'KOR' AND Population BETWEEN 700000 AND 800000;
# ex) 서울, 뉴욕, 도쿄, 도시 보기
SELECT * FROM city WHERE Name IN ('Seoul','New York','Tokyo');
# ex) 한국, 미국, 일본 의 도시 보기
SELECT * FROM city WHERE CountryCode IN ('KOR','USA','JPN');
# ex) 한국, 미국, 일본 중에서 인구수가 70만 ~ 80만 사이인 도시
SELECT * FROM city WHERE CountryCode IN ('KOR','USA','JPN') AND Population BETWEEN 700000 AND 800000;

# LIKE 
SELECT * FROM city WHERE Name LIKE 'Tel %';			# 'Tel' 로 시작하는 도시
SELECT * FROM city WHERE CountryCode LIKE 'KO_';	# 도시코드가 KO_ 로 시작하는데 기억이 안날때, 
# 도시코드가 KOR 이고, 이름이 S로 시작하는 도시
SELECT * FROM city WHERE name LIKE 'S%' AND CountryCode IN ('KOR');

# 서브 쿼리
# 쿼리 ( 쿼리 ) 
# SELECT * FROM city WHERE countryCode = (	SELECT CountryCode From City WHERE name = "Seoul"	 ) 		=		SELECT * FROM city WHERE countryCode = ('KOR');  
SELECT * FROM city WHERE countryCode = (	SELECT CountryCode From City WHERE name = "Seoul"	 ); 
SELECT * FROM city WHERE countryCode = ('KOR');

# 서브쿼리 (ANY, SOME, ALL)
# ANY, SOME = 서브쿼리의 여러 개의 결과중 한가지만 만족해도 가능  (ANY 구문은 IN  과 동일한 의미)
# ALL = 서브 쿼리의 모든 결과를 만족시켜야함.
SELECT * FROM city WHERE Population > ANY ( SELECT Population FROM city WHERE District = 'New York');
SELECT * FROM city WHERE Population > SOME ( SELECT Population FROM city WHERE District = 'New York');

SELECT * FROM city WHERE Population > ALL ( SELECT Population FROM city WHERE District = 'New York' );

# 정렬
# ORDER BY = 결과가 출력되는 순서를 조절하는 구문 (default =  오름차순) {내림차순은 열 이름뒤에 DESC를 적어주어야함.}
SELECT * FROM city ORDER BY Population ;
SELECT * FROM city ORDER BY Population DESC;

# 인구수로 내림차순 하여 한국에 있는 도시보기
SELECT * FROM city WHERE CountryCode = ('KOR') ORDER BY Population;

# 국가 면적(SurfaceArea) 크기로 내림차순하여 나라보기
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC;

# DISTINCT = 중복된 것을 1개 씩만 보여주면서 출력 (테이블의 크기가 클 수록 효율적임.)
SELECT DISTINCT CountryCode FROM city;

# LIMIT = 출력개수를 제한함. (LIMIT N) 상위의 N 개만 출력
SELECT * FROM city ORDER BY Population DESC LIMIT 10;

# GROUP BY = 그룹으로 묶어주는 역할
-- 집계 함수(Aggregate Function)를 함께 사용함.
-- 표율적인 데이터 그룹화 (Groping)
-- 읽기 좋게 하기 위한 별칭(Alias) 사용
/* # 집계 함수(Aggregate Function)
AVG(): 				= 평균
MIN():				= 최소값
MAX():				= 최대값
COUNT():			= 행의 개수
COUNT(DISTINCT):	= 중복 제외된 행의 개수
STDEV():			= 표준 편차
VARIANCE():			= 분산					
*/

SELECT CountryCode, MAX(Population) AS Population 
FROM city 
GROUP BY CountryCode;

# ex) 도시의 개수는 몇개인가?
SELECT Count(*) AS City FROM city;

# ex) 도시들의 평균 인구수는?
SELECT AVG(Population) FROM city;
 
# HAVING = WHERE과 비슷한 개념으로, 집계함수에 대한 조건을 제한 할때 사용함.
-- HAVING 은 반드시 GROUP BY 절 이후에 나와야함.
SELECT CountryCode, MAX(Population)
FROM city
GROUP BY CountryCode
HAVING MAX(Population) > 8000000;
 
 # ROLLUP = 총합 또는 중간합계가 필요할 경우 사용.
 -- GROUP BY 절과 함께 WITH ROLLUP 문 사용
 SELECT CountryCode, Name, SUM(Population)
 FROM city
 GROUP BY CountryCode, Name WITH ROLLUP;
 
 # JOIN = 데이터 베이스 내의 여러 테이블에서 가져온 레코드를 조합하여 하나의 태이블이나 결과 집합으로 표현.
 SELECT *
 FROM city
 JOIN country ON city.CountryCode = country.Code;
 
 
# [MYSQL 내장함수]
SELECT length("djksajdlkas");				-- 문자열의 길이를 반환한다,
SELECT concat("My","SQL");					-- 문자열을 합쳐준다.
SELECT locate("abc","zzzzzabczz");			-- 문자열이 처음으로 나타내는 위치를 찾아서 해당 위치를 반환해준다.
SELECT left("MySQL is and open source",5);	-- 문자열의 왼쪽부터 지정한 개수만큼의 문자를 반환
SELECT right("MySQL is and open source",6);	-- 문자열의 오른쪽부터 지정한 개수만큼의 문자를 반환
SELECT lower("ABCDEFGHIJKLM");				-- 문자열의 문자를 모두 소문자로 변경
SELECT upper("abcdefghijklm");				-- 뮨자열의 문자를 모두 대문자로 변경
SELECT replace("MSSQL","MS","MY");			-- 문자열에서 특정 문자열을 대체 문자열로 교체
SELECT trim("	MYSQL	");					-- 문자열의 앞이나 뒤,또는 양쪽 모두에 있는 특정문자를 제거	
SELECT format(123123123123.123000,3);		-- 숫자타입의 데이터를 세자리마다 쉼표를 사용하는 형식으로 변환
SELECT floor(10.95);						-- 내림
SELECT ceil(10.95);							-- 올림
SELECT round(10.95);						-- 반올림

# (MATH)
SELECT sqrt(4);								-- 양의 제곱근
SELECT pow(2,3);							-- 첫 번째 인수로는 밑수를 전달하고, 두번째 인수로는 지수를 전달하여 거듭제곱 계산
SELECT exp(3);								-- 인수로 지수를 전달받아, e의 거듭제곱을 계산
SELECT log(3);								-- 자연로그 값을 계산
SELECT sin(PI()/2);							-- 사인값 반환
SELECT cos(PI());							-- 코사인값 반환
SELECT tan(PI()/4);							-- 탄젠트값 반환
SELECT abs(-3);								-- 절댓값 반환
SELECT rand();								-- 0.0보다 크거나 같고 1.0보다 작은 하나의 실수를 무작위로 생성

# (DAY and TIME)
SELECT now();								-- 현재 날짜와 시간을 반환 (YYYY-MM-DD:MM:SS)
SELECT curdate();							-- 현재 날짜를 반환		 (YYYY-MM-DD)
SELECT curtime();							-- 현재 시각을 반환		 (HH:MM:SS)
SELECT date_format(now(), "%D %y %a %d");	-- 전달받은 형식에 맞춰 날짜와 시간 정보를 문자열로 반환

SELECT monthname(now());					-- 월에 해당하는 이름을 반환
SELECT dayname(now());						-- 요일에 해당하는 이름을 반환
SELECT dayofweek(now());					-- 일자가 해당주에서 몇번째 날인지를 반환, 1부터 7사이의 값을 반환.
SELECT dayofmonth(now());					-- 일자가 해당 월에서 몇번째 날인지를 반환, 0부터 31사이의 값을 반환
SELECT dayofyear(now());					-- 일자가 해당 연도에서 몇번째 날인지를 반환, 1부터 366 사이의 값을 반환

#---------------------------------------------------------------------------------------------------------------
# CREATE TABLE AS SELECT  (새로운 데이터 베이스를 생성)
CREATE TABLE city2 AS select * FROM city;	-- city 와 같은 city2 이름의 테이블 생성.
CREATE DATABASE DP;							-- DP 라는 이름의 데이터베이스를 생성.
USE DP;										-- DP 라는 이름의 데이터베이스를 사용.test

CREATE TABLE test (							-- test 테이블 생성 예시
	id INT NOT NULL PRIMARY KEY,			-- id 은 NULL이 올 수 없고 int타입으로 설정및  primary key 로 설정
    col1 INT NULL,							-- col1 은 INT 형이고 NULL을 허용한다.
    col2 FLOAT NULL,						-- col2 은 FLOAT 형이고 NULL을 허용한다.
    col3 VARCHAR(45) NULL					-- col3 은 VARCHAR 형이고 NULL을 허용한다.
);

SELECT * FROM test;							-- test 테이블 보기
DESC test;									-- test 테이블의 컬럼(열) 세부정보

# 테이블 수정
ALTER TABLE test 							-- 컬럼추가
ADD col4 INT NULL;							

ALTER TABLE test 							-- 컬럼 타입 변경
MODIFY col4 VARCHAR(20) NULL;

## Youtube  " MySQL 데이터베이스 한번에 끝내기 SQL Full Tutorial Course using MySQL Database"
-- 54:00 까지 들음.

# https://www.youtube.com/watch?v=vgIc4ctNFbc&t=1196
