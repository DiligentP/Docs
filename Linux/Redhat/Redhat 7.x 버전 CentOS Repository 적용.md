#RedHat #Linux #CentOS  #Repository #RHEL 

## 1. 기존 Repository 백업
---
```sh
mkdir /etc/yum.repos.d.bak 
mv /etc/yum.repos.d/* /etc/yum.repos.d.bak
```


## 2. kakao.repo 적용
---
다음 레포지토리는 다음(카카오) 레포지토리를 적용했습니다.
```sh
vi /etc/yum.repos.d/Kakao.repo

[base]
name=CentOS-$releasever - Base
baseurl=http://ftp.daum.net/centos/7/os/$basearch/
gpgcheck=1
gpgkey=http://ftp.daum.net/centos/RPM-GPG-KEY-CentOS-7

[updates]
name=CentOS-$releasever - Updates
baseurl=http://ftp.daum.net/centos/7/updates/$basearch/
gpgcheck=1
gpgkey=http://ftp.daum.net/centos/RPM-GPG-KEY-CentOS-7

[extras]
name=CentOS-$releasever - Extras
baseurl=http://ftp.daum.net/centos/7/extras/$basearch/
gpgcheck=1
gpgkey=http://ftp.daum.net/centos/RPM-GPG-KEY-CentOS-7
```

## 3. yum repolist 확인
---
```
yum clean all
yum repolist

yum -y update
```


## 4. 설명
---

base , update, extras 는 각각의 라이브러리들의 모음이라고 할 수 있습니다

기본적인 프로그램들은 대부분 Base에 있고,  Update는 업데이트 된 라이브러리의 모음입니다.

Docker 등의 특수한 프로그램들은 Extras에 존재하므로, 설치하기위해서는 필요합니다.


-   버전이 만료되어 repository 접근 불가한 경우 vault 사용
    -   vault: 이전 버전에 대해 엑세스를 제공하는 보관용 사이트로, 보안 업데이트를 지원하지 않음
```sh
[base]
name=CentOS-$releasever - Base
baseurl=http://vault.centos.org//centos/7/os/$basearch/
gpgcheck=1
#released updates
[update]
name=CentOS-$releasever - Updates
baseurl=http://vault.centos.org//centos/7/updates/$basearch/
gpgcheck=1
```
