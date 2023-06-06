```toc
```

## 장고 프로젝트
---
```shell
# 파이썬 패키지 매니저 pip를 통해 장고를 설치해 줍니다.
pip install django

# 장고 어드민으로 통해 빠르게 장고 프로젝트를 생성합니다.
django-admin startproject config .
```

### 애플리케이션 생성
```shell
# 장고는 하나의 프로젝트 안에 여러개의 애플리케이션으로 분리 할 수 있습니다.
python manage.py startapp [application]

# Settings.py 수정
INSTALLED_APPS = [ 
	..., 
	'[앱 이름]', 
]
```

### 서버 시작
```shell
# 포트를 입력하지 않으면 기본포트(8000)을 사용합니다.
python manage.py runserver [port]
```


```shell
# 가상환경 생성
python -m venv .venv

# 가상환경 접속
$ . .venv/bin/activate   # Linux
$ . .venv/Script/activate.bat

# 가상환경 pip 경로 확인
$ pip install requests
$ pip show requests

Name: requests
...
Location: D:\workspace\Django\venv\Lib\site-packages
...


```

## 장고 어드민 생성
```shell
(mysite) c:\projects\mysite> python manage.py createsuperuser 
사용자 이름 (leave blank to use 'pahke'): admin 
이메일 주소: admin@mysite.com 
Password: 
Password (again): 
비밀번호가 너무 짧습니다. 최소 8 문자를 포함해야 합니다. 
비밀번호가 너무 일상적인 단어입니다. 
비밀번호가 전부 숫자로 되어 있습니다. 
Bypass password validation and create user anyway? [y/N]: y 
Superuser created successfully. 
(mysite) c:\projects\mysite>
```


## Views.py
---
### HttpResponse
```python
from django.http import HttpResponse

def index(request):  
    return HttpResponse("Hello, world. This is park app.")
```

### Render

```python
render(request, template_name, context=None, content_type=None, status=None, using=None)
```

```python
from django.shortcuts import render

def index(request):
	return render(request, 'templates/index.html')
```

### redirect

```python
redirect (to, permanent=False, *args, **kwargs)
```

```python
from django.shortcuts import redirect

def index(request):
    ...
    return redirect('view-name')             # view_name 사용
    # return redirect('/some/url/')                  # 상대 경로 
      # return redirect('https://example.com/')# 절대 경로
```


## ERROR
---
1. django.template.exceptions.TemplateSyntaxError: Invalid block tag on line 8: 'static'. Did you forget to register or load this tag?

이 에러는 `{% static %}` 템플릿 태그를 사용하기 위해 필요한 설정이 이루어지지 않았거나, 설정이 잘못되어 있을 때 발생하는 에러입니다.

해결 방법으로는 `STATIC_URL`과 `STATICFILES_DIRS` 설정을 확인하고, `{% load static %}` 템플릿 태그를 사용하여 정적 파일을 불러올 수 있도록 해주는 것입니다.

```python
# settings.py  

STATIC_URL = '/static/' 

# static 파일이 위치한 경로를 지정 
STATICFILES_DIRS = [ 
	BASE_DIR / "static", 
]

```

그리고 HTML 파일 맨 위에 `{% load static %}` 태그를 추가해 주세요. 이제 `{% static %}` 템플릿 태그가 동작할 준비가 되었습니다.

```html
{% load static %}
...
<!DOCTYPE html>
<head>
	...
	<link rel="stylesheet" href="{% static 'style.css' %}">
...

```

위와 같이 설정하면 `{% static %}` 템플릿 태그가 정상적으로 동작하게 됩니다.