
2023-04-21 박정현

서버 환경
- Centos7
- Server P : 192.168.0.19
- Firewalld 비활성화

시나리오
- httpd 이미지를 사용하여 자신만의 고유한 이미지를 생성하여 docker hub에 올리는 작업을 한다.


1. 도커를 설치합니다.  (설치 되어 있으므로 생략합니다)

2. dockerfile을 생성합니다.
```shell
vi dockerfile

FROM httpd:latest
RUN echo "Hello my web" > /usr/local/apache2/htdocs/index.html
```

![[Pasted image 20230421164256.png]]

3. docker file 을 빌드합니다.
```shell
docker build -t diligentp/myweb .
```

![[Pasted image 20230421164327.png]]

4. 내 이미지를 도커 허브에 업로드 합니다.
```shell
docker login

docker push diligentp/myweb:latest
```
![[Pasted image 20230421105012.png]]
![[Pasted image 20230421105438.png]]

5. https://hub.docker.com/ 에 접속하여 이미지가 업로드 되었는지 확인합니다.
![[Pasted image 20230421164557.png]]

![[Pasted image 20230421164609.png]]