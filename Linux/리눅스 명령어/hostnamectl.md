#Linux  #Command 


**설명**
- 호스트 설정 정보를 확인하는 명령어 입니다.

![[Pasted image 20230222132928.png]]

**명령어**
```
$ hostnamectl [OPTION]
```
``

**옵션**
```
set-hostname --static
```

**사용 예**
```sh
# hostname 정보 확인
$ hostnamectl

# hostname 변경
$ hostnamectl set-hostname --static [park]

# 변경 후 exit. (재접속을 해야 적용이됨.)
```

