
# 문제 발생

평소와 같이  `git add .`  명령을 치는데,
```
git add .
```

다음과 같은 에러를 발생시켰다.

```
warning: in the working copy of 'AWS/AWS Lambda.md', LF will be replaced by CRLF the next time Git touches it
```

```
경고 : AWS/AWS Lambda.md 에서 LF는CRLF로 대체됩니다. 파일은 작업 디렉토리에 원래 줄 끝이 있습니다.
```

# 원인 분석

### LF(Line-Feed)

- Mac, Linux (Unix 계열) 줄바꿈 문자열 = \n 
- ASCII 코드 = 10
- 커서 위치는 그대로 두고 종이의 한라인 위로 올리는 동작
- 현재 위치에서 바로 아래로 이동
- 종이를 한칸올리기

### CR(Carriage-Return)

- Mac 초기 모델 줄바꿈 문자열 = \r
- ASCII 코드 = 13
- 커서 위치를 맨앞으로 옮기는 동작
- 커서 위치를 앞으로 이동 

### CRLF (Carriage-Return+Line-Feed)

- Windows, DOS 줄바꿈 문자열 = \r\n
- CR(\r) + LR(\n) 두 동작을 합쳐서 (\r\n)
- 커서를 다음라인 맨앞으로 옮겨주는 동작


이렇게 플랫폼(OS)마다 줄바꿈을 바라보는 문자열이 다르기에  
형상관리를 해주는 Git이 바라볼 땐 둘 중 어느 쪽을 선택할지 몰라 경고 메세지를 띄워준 것.

# 해결방안

`autocrlf`는 check-in, check-out할 때 파일을 어떻게 처리할지 설정하는 변수이다.

_+ 시스템 전체 적용하고 싶다면_ _--global 옵션 추가하고_ ,
_전체가 아닌 해당 프로젝트에만 적용하고싶다면 옵션을 빼주면 됩니다._

```shell
# LF > CRLF
git config --global core.autocrlf true

# CRLF > LF 변경
git config --global core.autocrlf false
```


참고
https://dabo-dev.tistory.com/13