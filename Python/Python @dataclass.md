
[이 파이썬 모듈은 시간을 아껴줍니다. 5분컷! - YouTube](https://www.youtube.com/watch?v=VY7akCnhQ9o)

파이썬 3.7부터 추가된 기능

## Class
```python
class Person:
	def __init__(self, name, last_name):
		self.name = name
		self.last_name = last_name

user = Person('Steve', 'Jobs')
```


## Dataclass
```python
from dataclases import dataclass

@dataclass
class Person:
	name:str
	last_name:str

user = Person('Steve', 'Jobs')
```