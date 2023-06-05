2023-04-21 박정현

서버 환경
- Centos7
- Server P : 192.168.0.19
- Firewalld 비활성화

시나리오
- 다음 스크립트 파일을 실행하여 portainer 컨테이너를 실행하고, 그 다음에 Portainer에서 container를 서비스할 수 있도록 구성한다.   http://down.cloudshell.kr/docker/portainer.sh

요구사항
- 초기 접속 사용자 이름 : admin
- 암호 : P@ssw0rd1234
- 서비스할 이미지 :
	1) jesuswithme/nginxdemos
	2) pengbai/docker-supermario


1. 도커를 설치합니다.  (설치 되어 있으므로 생략합니다)

2. wget을 사용하여 http://down.cloudshell.kr/docker/portainer.sh 에서 쉘 스크립트를 다운로드 합니다.
```shell
wget http://down.cloudshell.kr/docker/portainer.sh
```

![[Pasted image 20230421164913.png]]

3.  요구사항을 만족하기 위해서  `portainer.sh` 를 다음과 같이 수정합니다.
```shell
vi portainer.sh

#!/bin/bash

# 초기 사용자이름과 암호를 "admin", "P@ssw0rd1234" 로 설정합니다.
...
sleep 10 
curl --location --request POST 'http://127.0.0.1:9000/api/users/admin/init' \ 
--header 'Content-Type: application/json' \ 
--data-raw '{ "Username": "admin", "Password": "P@ssw0rd1234" }'

# jesuswithme/nginxdemos, pengbai/docker-supermario 서비스를 구성합니다.
docker pull jesuswithme/nginxdemos
docker pull pengbai/docker-supermario

docker run -d --name nginxdemos -p 8080:80 jesuswithme/nginxdemos 
docker run -d --name supermario -p 8081:8080 pengbai/docker-supermario
```

![[Pasted image 20230421170714.png]]

4.  수정한  `portainer.sh`파일에 실행 권한을 부여하고 실행합니다.
```shell
chmod +x portainer.sh
./portainer.sh
```

![[Pasted image 20230421165135.png]]

5. Portainer 서비스가 제대로 구동중인지 확인하고 접속합니다.
```shell
docker ps 
```

![[Pasted image 20230421170933.png]]

6. Portainer 서비스로 접속해 봅니다.
![[Pasted image 20230421171047.png]]

Portainer 를 포함한 3가지 서비스가 정상적으로 동작중인 것을 확인 할 수 있었습니다.