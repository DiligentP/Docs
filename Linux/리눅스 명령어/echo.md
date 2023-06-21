
설명
- echo 명령어는 문자열을 터미널에 출력하기 위한 명령어 입니다.
- echo 명령어는 환경변수, 또는 시스템의 변수 ($) 의 내용을 출력하기위해 많이 사용합니다.

설치

명령어
```
$ echo [OPTION] [문자열]
```

옵션
	-e : 백슬래시 이스케이프를 해석할 수 있습니다. `(\b, \c, \n, \t, \r, \v, \a)`
	-n : 후행 줄바꿈을 생략합니다.


사용 예
```
$ echo [문자열]

[root@localhost ~]# echo echo Test ~~ echo Test ~~

[root@localhost ~]#

$ echo -n [문자열]

[root@localhost ~]# echo -n Test!!!

Test!!![root@localhost ~]#
```

기타
