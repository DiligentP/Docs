
SQLAlchemy는 Python에서 사용할 수 있는 유명한 ORM(Object-Relational Mapping) 라이브러리입니다. ORM은 객체와 관계형 데이터베이스 간의 상호 변환을 도와주는 도구로, 데이터베이스에 대한 쿼리 및 조작 작업을 객체 지향적인 방식으로 수행할 수 있도록 합니다. SQLAlchemy를 사용하여 데이터베이스에 연결하고 쿼리를 실행하는 방법에 대해 알아보겠습니다.

먼저, SQLAlchemy를 설치해야 합니다. 다음과 같이 pip를 사용하여 설치할 수 있습니다.

Copy code

`pip install sqlalchemy`

설치가 완료되면 다음과 같이 SQLAlchemy를 임포트합니다.

`import sqlalchemy`

1.  데이터베이스에 연결하기

SQLAlchemy를 사용하여 데이터베이스에 연결하려면 `create_engine` 함수를 사용합니다. 다음은 SQLite 데이터베이스에 연결하는 예시입니다.

pythonCopy code

`from sqlalchemy import create_engine  # SQLite 데이터베이스에 연결`
`engine = create_engine('sqlite:///database.db')`

위의 코드에서 'sqlite:///database.db'는 SQLite 데이터베이스 파일인 'database.db'에 연결한다는 의미입니다. 다른 데이터베이스에 연결하려면 해당 데이터베이스의 URL을 사용하면 됩니다.

2.  테이블 정의하기

SQLAlchemy에서는 클래스를 사용하여 테이블을 정의합니다. 각 클래스는 데이터베이스 테이블에 대한 매핑을 나타내며, 클래스의 속성은 테이블의 열(Column)에 해당합니다. 다음은 간단한 사용자(User) 테이블을 정의하는 예시입니다.

```python
from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base  

Base = declarative_base()  

class User(Base):
	__tablename__ = 'users'
	id = Column(Integer, primary_key=True)
	name = Column(String)
	email = Column(String)

```

위의 코드에서 `User` 클래스는 `Base` 클래스를 상속받고, `__tablename__` 속성을 통해 테이블 이름을 지정합니다. `id`, `name`, `email`은 각각 열(Column)을 나타내며, `Column` 함수를 사용하여 열의 데이터 타입을 정의합니다.

3.  테이블 생성하기

테이블을 생성하기 위해서는 `Base.metadata.create_all` 메서드를 사용합니다. 이 메서드에 앞서 정의한 `engine`을 전달하여 테이블을 생성할 수 있습니다.

`Base.metadata.create_all(engine)`

4.  데이터 조작하기

SQLAlchemy를 사용하여 데이터를 추가, 조회, 수정, 삭제하는 작업을 수행할 수 있습니다. 예를 들어, 다음은 사용자를 추가하는 예시입니다.

```python
from sqlalchemy.orm import sessionmaker  # 세션 생성 
Session = sessionmaker(bind=engine)
```
