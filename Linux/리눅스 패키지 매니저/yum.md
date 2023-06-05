#Linux 


```shell
# Yum repository update 
$ yum update -y

# 리눅스 종류 및 버전 확인
$ grep. /etc/*-release
$ cat /etc/*-release | uniq

# 배포판의 버전을 가장 쉽게 확인할 수 있는 명령어
$ grep . /etc/issue*

# 설치할 수 있는 패키지 목록
$ yum list installed
$ yum list installed | wc -l  # 패키지 갯수 확인

# 설치된 패키지 확인
$ yum list installed []    # ex) yum list installed nginx

# 패키지 업데이트
$ yum update   #  패키지명을 생략하면 all 과 같음.
$ yum update []   # ex) yum update nginx

# 패키지 삭제
$ yum remove []    # ex) yum remove nginx

# 패키지 찾기
$ yum list []    # 
$ yum search []  # yum list 보다 더 많이 보여줌
```

# yum group
---
```
yum groupinstall []
```

# yum repolist
---
```

```


yum clean all
