설명
- curl은 텍스트 기반의 웹브라우저 라고 할 수 있습니다. 도메인 아이피 또는 해당 주소를 적개 되면, 해당하는 주소의 데이터를 반환합니다.
- curl은 서버로 데이터를 전송하기 위한 명령줄 유틸리티 입니다.
- curl을 사용하면 HTTP, HTTPS, SCP, SFTP 및 FTP 등 지원되는 프로토콜 중 하나를 사용하여 데이터를 다운로드및 업로드 할 수 있습니다.

설치
```
# Ububtu / Debian
apt update
apt install curl

# CentOS / Redhat
yum install curl
```

명령어
```
curl [OPTIONS] <URL>
```

옵션
- `curl -v`를 실행하면 다음과 같은 추가 출력이 터미널에 표시됩니다:

1. DNS 해결 및 연결 설정에 대한 정보
2. 서버로 전송된 HTTP 요청 헤더
3. 서버로부터 수신한 HTTP 응답 헤더
4. 응답 본문의 내용(있는 경우)

```
curl -v https://example.com
```

- `curl -H` : 해더 값을 전달하기 위한 옵션

```
curl -H "Content-Type: application/json"
curl -H "Content-Length: 0"
```

- `curl -l` Header 정보만 필요한 경우
```

```



참고
[🐧 CURL 명령어 사용법 완전 총정리 (tistory.com)](https://inpa.tistory.com/entry/LINUX-%F0%9F%93%9A-CURL-%EB%AA%85%EB%A0%B9%EC%96%B4-%EC%82%AC%EC%9A%A9%EB%B2%95-%EB%8B%A4%EC%96%91%ED%95%9C-%EC%98%88%EC%A0%9C%EB%A1%9C-%EC%A0%95%EB%A6%AC)