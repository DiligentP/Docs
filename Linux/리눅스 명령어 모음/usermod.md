#Linux 

**설명**
- 사용자의 계정 정보를 변경하기 위한 명령어 입니다.


**명령어**
```shell
usermod [OPTION] [사용자계정]
```

**옵션**
```shell
-g            : 그룹의 계정 사용자의 기본 소속 그룹을 변경합니다.
-l,  --login  : 사용자의 로그인 아이디를 변경합니다.
```

**사용 예**
```shell
# park2 유저의 로그인 아이디를 park 로 변경합니다.
usermod -l park2 park
```

**참고**
[[리눅스/유닉스] 사용자관리 usermod 명령어, 사용자 아이디 변경, 임시 계정 발급, usermod 옵션, 사용 예시 (tistory.com)](https://jhnyang.tistory.com/259)

