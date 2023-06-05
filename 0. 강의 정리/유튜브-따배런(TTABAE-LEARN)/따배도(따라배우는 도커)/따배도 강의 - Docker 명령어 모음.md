#Docker 

## Docker 정보 확인
---
```shell
# docker 서버 및 클라이언트 버전 확인
docker version

# Docker 세부 정보 확인
docker info

# Docker 의 Root Directory 내용 확인
ls -l /var/lib/docker

# Docker image 모여있는 디렉토리
ls -l /var/lib/docker/overlay2
```

## Docker 명령어
---
``` bash
# 컨테이너 찾기
$ docker search <컨테이너>  #  hub.docker.com 에  컨테이너 이미지가 있는지 확인하고 알려줍니다.

# 컨테이너 가져오기
$ docker pull [nginx:latest]  # 컨테이너 이미지를 다운 받습니다.

# 컨테이너 목록 확인
$ docker image ls  # 로컬에 있는 컨테이너 이미지 목록을 확인합니다.
$ docker images 
$ docker images --no-trunc # 로컬에 있는 이미지명(IMAGE ID)을 풀네임으로 출력합니다.

# 컨테이너 생성 
$ docker create --name app -p 80:8080 smlinux/nodeinfo:v1  # create는 -d 옵션을 기본으로 가집니다.

# pull -> create -> start 플로우를 모두 실행합니다. (다운 생성 실행)
$ docker run -d --name web -p 80:80 nginx:latest  # - detach

# 컨테이너 시작 및 종료
$ docker start app
$ docker stop app

# 컨테이너 제거
$ docker rm [containerName]  # 만들어진 컨테이너를 제거합니다.
$ docker rm web
$ docker rm -f web # 동작 중인 도커에 관계없이 삭제합니다. -force

# 컨테이너 이미지 제거
$ docker rm image [nginx]
$ docker rmi [nginx]  # rm image

# 컨테이너 프로세스 확인
$ docker ps  # 도커 에서 실행중인 컨테이너 프로세스를 보여줍니다.
$ docker ps -a # 모든 컨테이너를 표시합니다. -all

$ docker top <container>  # 컨테이너에 동작중인 프로세스에 대해 확인합니다.

# 컨테이너 로그확인
$ docker logs <container> # 컨테이너의 로그를 확인합니다.
$ docker logs -f <container> # 컨테이너의 로그상태를 실시간으로 확인합니다. -follow

# 컨테이너 상세정보 확인
$ docker inspect [옵션] <image> # 컨테이너 이미지의 상세 정보룰 출력합니다.
$ docker inspect [옵션] <container> # 컨테이너의 상세 정보룰 출력합니다.
- # 세부정보에서 원하는 요소만 확인 할수 있습니다. (alias 등록하여 많이 사용함.)
$ docker inspect --format '{{.NetworkSettings.IPAddress}}' webserver # 컨테이너의 원하는 요소만 확인


# 컨테이너 쉘 환경 접속
$ docker exec -it [container] /bin/bash # 컨테이너에서 /bin/bash 프로그램을 추가로 실행합니다.
$ docker attach [container] # 백그라운드로 터미널이 구동되고 있다면 사용할 수 있습니다.

# Docker hub 업로드
# 컨테이너를 업로드 핧때는 계정이름/컨테이너이름 형태로 지정해야합니다.
$ docker build -t smlinux/nodeinfo:v1  # 도커 이미지를 빌드합니다. 빌드된 이미지가 로컬에 생성됩니다.
$ docker images # 빌드가 잘 되었는지 확인합니다.
$ docker login    # docker Hub에 로그인 합니다.
$ docker push smlinux/nodeinfo:v1 # 컨테이너를 푸쉬합니다.


# 컨테이너 태그 이름 변경 (IMAGE ID는 그대로)
$ docker tag webserver diligentp/webserver

```

### 명령어 OPTION
---
| 커멘드 | 풀네임 |설명| 예시|
|---|---|---|---|
| -f | --force  | 강제로 수행하는 옵셥|$ docker rm -f web|
| -f | --follow | 실시간 확인 |$ docker logs -f web|
| -d | --detach | 백그라운드로 컨테이너를 실행| $ docker run -d --name web -p 80:80 nginx:latest|


## Docker-Compose
---
Docker-compose, 도커 명령을 yml 파일로 만들어 관리하기 

```yml
version "3.7"

services:
	db:
		image: mysql:5.7
		volume:
			~ ./db_data:/var/lib/mysql
		restart: always
		environment:
			MYSQL_ROOT_PASSWORD: root
			MYSQL_DATABASE: wordpress
			MYSQL_USER: wordpress_user
			MYSQL_PASSWORD: root
	app:
		depends_on:
			- db
		image: wordpress:latest
		volume:
			~ ./app_data:/var/www/html
		ports:
			~ "8080:80"
		restart: always
		environment:
			WORDPRESS_DB_HOST: db:3306
			WORDPRESS_DB_NAME: wordpress
			WORDPRESS_DB_USER: wordpress_user
			WORDPRESS_DB_PASSWORD: root
```

### Docker-Compose 명령어
```
docker-compose up
docker-compose up -d
docker-compose down

```




## 컨테이너 네트워크
---
docker0 
- virtual ethernet bridge:172.17.0.0/16
- L2 통신기반
- container 생성 시 veth 인타페이스 생성(sandbox)
- 모든 컨테이너틑 외부 통신을 docker0 통해 진행
- container running 시에 172.17.X.Y 로 IP 주소 할당

### 컨테이너의 port-forwarding
- 컨테이너 포트를 외부로 노출시켜 외부 연결을 허용하는 방법

iptables rule 을 통한 포트 노출
```sh
-p hostPort:containerPort
-p containerPort

-P # 대문자 컨테이너 이미지의 default 포트로 지정

<예시>
$ docker run --name web -d -p 80:80 nginx:latest
$ iptables -t nat -L -n -v
```

### user-defined bridge network 생성
```sh
$ docker network create --driver bridge \
	--subnet 192.168.100.0/24 \
	--gateway 192.168.100.254 \
	mynet
	
$ docker network ls

$ docker run -d --name web -p 80:80 \
	nginx:1.14

$ curl localhost

$ docker run -d --name appjs \
	--net mynet --ip 192.168.100.100 \
	-p 8080:8080 \
	smlinux/appjs

$curl localhost:8080
```

## Docker-Machine
---
 내 VM에 docker 프로비저닝 

## TIP
---
[[Docker] 실행 중인 컨테이너 모두 강제 삭제 - CRM(alias)](https://kjun.kr/1607)