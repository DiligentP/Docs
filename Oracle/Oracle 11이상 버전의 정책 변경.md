Oracle 11g 이상 버전에서 사용자명 앞에 `c##`  을 붙여줘야한다.

아래의 명령을 사용하면 이전처럼 사용가능 하다.

```sql
ALTER SESSION SET "_ORACLE_SCRIPT" = true;
```

Oracle  계정 생성

```sql
create user book_ex identified by book_ex
default tablespace users
temporary tablespace temp;
grant connect, resource, dba to book_ex;
```