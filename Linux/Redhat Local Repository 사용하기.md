#Linux #RHEL #Repository 

## 간단한 순서
1.  ISO 파일을 마운트 하여, 안에 있는 LocalRepo를 복사합니다. (언마운트 되면 날라가므로.)
2. 복사한 디렉토리를 새로운 repo로 경로로 등록합니다.


## 1. 이미지 iso 마운트
---
Redhat의 LocalRepo는 이미지파일(iso)에 내장 되어있는 패키지(라이브러리) 들을 의미합니다.

외부와 통신이 되지 않는 서버를 위해, 그리고 보안을 위해, 단절된 통신환경에서 라이브러리를 다운받고 사용하기 위해 쓰입니다.

Vmware환경 또는 Hyper-V 환경이라면  Redhat ISO 디스크를 물리적으로 인식 시킵니다. (RHEL*.iso)

`lsblk` 명령어를 입력하면 추가한 광학 드라이브가 보입니다.

![[Pasted image 20230222111003.png]]

디스크 인식이 되지 않은경우에는 다음과 같이 1024M 라고만 뜹니다.

![[Pasted image 20230222134339.png]]

대략 iso 이미지 크기 10.2G 라고 뜨면 인식이 된 것입니다. 이제 마운트 작업을 거치겠습니다.
![[Pasted image 20230222135843.png]]

해결 방법
mount: ... WARNING: device write-protected, mounted read-only.
`sudo mount -o remount,rw /dev`
[[pi] Read-only file system 오류 해결 (tistory.com)](https://gomguk.tistory.com/86)



루트에 /dvd 폴더를 생성한다.
`mkdir /dvd`

아까 추가한 광학드라이브(sr0)를 /dvd 에 마운트한다.
`mount /dev/sr0 /dvd`

repository 로컬 저장소로 사용할 디렉토리를 생성한다.
`mkdir /repo`

/dvd 에 마운트된 모든 패키지를 로컬저장소 /repo 에 복사한다.
`cp -av /dvd/* /repo`

yum 저장소 항목을 생성한다
`vi /etc/yum.repos.d/local.repo`

아래 문자열를 입력한다

```sh
# 7.x 버전의 경우
[local-repo-RHEL7.9]
name=Local Repository RHEL7.9
baseurl=file:///repo
enabled=1
gpgcheck=0

# 8.x 이상의 경우
[Iocal-repo-RHEL8.5-BaseOS]
name=Local Repository RHEL8.5 - BaseOS
gpgcheck=0
enabled=1
baseurl=file:///repo/BaseOS/
[Iocal-repo-RHEL8.5-AppSteam]
name=AppStream
gpgcheck=0
enabled=1
baseurl=file:///repo/AppStream/
```

```
yum clean all
yum repolist

```


참고
[RHEL에서 ISO로 Local Repository 만들기 (velog.io)](https://velog.io/@zdevowl/RHEL%EC%97%90%EC%84%9C-ISO%EB%A1%9C-Local-Repository-%EB%A7%8C%EB%93%A4%EA%B8%B0)