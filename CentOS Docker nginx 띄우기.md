2023-04-21 박정현

서버 환경
- Centos7
- Server P : 192.168.0.19
- Firewalld 비활성화


시나리오
- https://www.nginx.com 의 index.html 파일을 다운로드하여 nginx 이미지의 홈페이지 초기 화면으로 구성한 후 도커 호스트 IP로 서비스하도록 구성한다.


1. 도커를 설치합니다.
```shell
curl -sSL http://get.docker.com | bash

systemctl start docker     # 도커를 시작합니다.
systemctl enable docker    # 도커를 시스템 부팅시 자동으로 활성화 합니다.

systemctl status docker    # 도커가 구동 중인지 확인합니다.
```

![[Pasted image 20230421163018.png]]

2. https://www.nginx.com 의 index.html 파일을 다운로드합니다.
```shell
wget https://www.nginx.com/index.html
```

![[Pasted image 20230421163101.png]]


4. docker file을 생성합니다.
```shell
vi dockerfile

FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]
```

![[Pasted image 20230421163501.png]]

5. dockerfile 을 빌드하고 실행합니다.
```shell
docker build -t mynginx .
docker run -p 80:80 mynginx
```

![[Pasted image 20230421163633.png]]

![[Pasted image 20230421163658.png]]

7. nginx 접속을 확인합니다. 
```shell
curl 192.168.0.19

또는 

웹 브라우저에서 
192.168.0.19
```

![[Pasted image 20230421163731.png]]

