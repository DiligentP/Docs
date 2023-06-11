
패키지 다운로드

```
apt update
apt install wget -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
```

패키지 설치

```
dpkg -i ./google-chrome-stable_current_amd64.deb
```

실행

```
google-chrome-stable
```

---

다음과 같은 에러 발생 시 
`ERROR:zygote_host_impl_linux.cc(100)] Running as root without --no-sandbox is not supported.`  

`--no-sandbox `

옵션을 사용해 샌드박스(sandbox)를 비활성화하고 실행합니다.

```
google-chrome-stable --no-sandbox
```


샌드박스(sandbox) 란 

	Chrome 실행 환경을 격리하여 보안 취약성으로부터 시스템을 보호하기 위한 정책입니다.
	위의 에러 메시지는 샌드박스가 활성화되지 않은 상태에서 root 권한으로 Chrome을 실행하려고 시도할때 발생합니다.

