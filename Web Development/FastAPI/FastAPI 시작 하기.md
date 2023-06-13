## 파이썬 설치

```sh
choco install python
```

## FastAPI 설치

```sh
pip install fastapi 'uvicorn[standard]'
```

## FastAPI 코드 작성

```python [main.py]
from typing import Union
from fastapi import FastAPI 

app = FastAPI()

@app.get("/") 
def read_root(): 
    return {"Hello": "World"}

@app.get("/items/{item_id}") 
def read_item(item_id: int, q: Union[str, None] = None): 
	return {"item_id": item_id, "q": q}
```

## FastAPI 구동
```sh
uvicorn main:app --reload

INFO: Uvicorn running on http://127.0.0.1:8000 (Press CTRL+C to quit)  
INFO: Started reloader process [28720]  
INFO: Started server process [28722]  
INFO: Waiting for application startup.  
INFO: Application startup complete.
```

만약 로컬호스트(localhost)가 아닌 특정 아이피와 포트를 지정하고 싶다면 다음과 같이 명령어를 수정할 수 있습니다.
```
uvicorn main:app --reload --host 192.168.0.34 --port 8000
```

## API 문서
```
# Swagger
http://127.0.0.1:8000/docs

# redoc
http://127.0.0.1:8000/redoc
```