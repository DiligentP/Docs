설명
Lambda는 이벤트에 반응하여 코드를 실행하고 컴퓨팅 리소스를 자동으로 관리하는 컴퓨팅 서비스 입니다.


Lambda의 탄생 목적은 함수 형태의  경량화된 서비스 제공입니다.


## AWS Serverless Framework 사용하기

**npm 및 aws cli 설치 여부 확인**
```
npm -v
9.5.1

aws --version
aws-cli/2.11.16 Python/3.11.3 Windows/10 exe/AMD64 prompt/off
```

**serverless 모듈 설치**
```
npm install -g serverless
```


**serveless 명령어**
```
serverless --help   # 사용법 확인
```


**작업에 사용할 사용자 계정 생성**

![[Pasted image 20230621142117.png]]

![[Pasted image 20230621142413.png]]

![[Pasted image 20230621142506.png]]

![[Pasted image 20230621142534.png]]

![[Pasted image 20230621142616.png]]

**생성한 사용자의 크리덴셜 AWS CLI에서 사용할 수 있도록 등록**

```cmd
PS D:\Project\mastere_ramda> aws configure --profile serverless-admin

AWS Access Key ID [None]: AKIAYF***********

AWS Secret Access Key [None]: OQF1efzQM94****************a9X22Ca

Default region name [None]: ap-northeast-2

Default output format [None]: json
```


**serverless 서비스 생성**
```shell
PS D:\Project\mastere_ramda> serverless create --template aws-python --path .

✔ Project successfully created in "." from "aws-python" template (7s)
PS D:\Project\mastere_ramda> 
```


**handler.py 코드에 로그를 남기는 코드를 추가**
```python
import json

def hello(event, context):

    print("Hello!")
    print(event)
   
    body = {
        "message": "Go Serverless v1.0! Your function executed successfully!",
        "input": event
    }


    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }


    return response


    # Use this code if you don't use the http event with the LAMBDA-PROXY
    # integration
    """
    return {
        "message": "Go Serverless v1.0! Your function executed successfully!",
        "event": event
    }
    """

```

**serverless.yml 내용을 수정**
```yml
    ... (생략) ... 
provider:
  name: aws
  runtime: python3.7
  profile: serverless-admin
  region: ap-northeast-2
    ... (생략) ...
```


**작성한 코드를 Lamda로 배포**
```
PS D:\Project\mastere_ramda> serverless deploy

Deploying mastere-ramda to stage dev (ap-northeast-2)

✔ Service deployed to stack mastere-ramda-dev (96s)

functions:
  hello: mastere-ramda-dev-hello (664 B)

Need a faster logging experience than CloudWatch? Try our Dev Mode in Console: run "serverless dev"
PS D:\Project\mastere_ramda>
```

## Serverless Framework 를 이용한 람다함수 호출, 수정, 업데이트 삭제

```
PS D:\Project\mastere_ramda> serverless invoke -f hello
{
    "statusCode": 200,
    "body": "{\"message\": \"Go Serverless v1.0! Your function executed successfully!\", \"input\": {}}"
}
PS D:\Project\mastere_ramda> 
```

```
PS D:\Project\mastere_ramda> serverless invoke -f hello --data "{'name':'park'}"
{
    "statusCode": 200,
    "body": "{\"message\": \"Go Serverless v1.0! Your function executed successfully!\", \"input\": \"{'name':'park'}\"}"
}
PS D:\Project\mastere_ramda> 
```

**함수 업데이트**
```
**
C:\serverless\hello-world-python> serverless deploy function -f hello 

C:\serverless\hello-world-python> serverless invoke -f hello --data "{ \"name\": \"hong\", \"age\": 23 }"

"Hello, hong... 23 years old."
**
```

**로그 확인**
```
C:\serverless\hello-world-python> serverless logs -f hello
```

**함수 삭제**
```
C:\serverless\hello-world-python> serverless remove

Removing hello-world-python from stage dev (ap-northeast-2)

  

✔ Service hello-world-python has been successfully removed (16s)
```



## 람다 패키지 설치

```
pip install --target . pymysql
```


## AWS Lamda에서 SQLAlchemy 사용하기

https://xo.dev/articles/python-lambda-function-and-mysql-driver

