

## dockerfile
---
Docker File이란 Docker Image를 만들기 위한 설정 파일입니다. 도커 이미지를 빌드할 때 필요한 소프트웨어 설치, 설정, 파일 복사 등을 명시합니다. 여러가지 명령어를 토대로 Docker File을 작성하면 설정된 내용대로 Docker Image를 만들 수 있습니다. 이전 포스트에서도 설명했듯이 Docker File을 읽을줄 안다는 것은 해당 이미지가 어떻게 구성되어 있는지 알 수 있다는 의미입니다.

도커 파일을 작성하면 해당 파일을 사용하여 도커 이미지를 만들 수 있으며, 도커 이미지는 컨테이너를 실행하는 데 필요한 파일 시스템과 실행 환경을 제공합니다. 도커 파일은 소스 코드와 함께 버전 관리될 수 있어서 애플리케이션 배포의 일관성과 안정성을 유지할 수 있습니다.

```
--------------
- #           comment 주석
- FROM        컨테이너의 BASE IMAGE(운영환경)
- MAINTAINER  이미지를 생성한 사람의 이름 및 정보
- LABEL       컨테이너 이미지에 컨테이너의 정보를 저장

--------------
- RUN         컨테이너 빌드를 위해 base image에서 실행할 commands
- COPY        컨테이너 빌드시 호스트의 파일을 컨테이너로 복사
- ADD         컨테이너 빌드시 호스트 파일(tar, url포함)을 컨테이너로 복사
- WORKDIR     컨테이너 빌드시 명령을 실행할 기본경로 (CMD 명령의 기준)
- ENV         환경변수 지정
- USER        명령 및 컨테이너 실행시 적용할 유저 설정 (지정하지 않으면 root권한으로 수행)
--------------

- VOLUME      파일 또는 디렉토리를 컨테이너의 디렉토리로 마운트
- EXPOSE      컨테이너 동작(run) 시 외부에서 사용할 포트 지정
- CMD         컨테이너 동작(run) 시 자동으로 실행할 서비스나 스크립트 지정
- ENTRYPOINT  CMD와 함께 사용하면서 command 지정 시 사용
--------------
```


## .dockerignore
---
dockerignore 파일 생성시 Docker 이미지 생성 시 이미지안에 들어가지 않을 파일을 지정 할 수 있습니다.

```
$ vim dockerignore

node_modules
npm-debug.log
Dockerfile*
docker-compose*
.dockerignore
.git
.gitignore
README.md
LICENSE
.vscode
  
:wq!
```


## dockerfile 이미지 만들기
---
```
docker build -t [이미지 이름 및 태그]
```

[[(작성중) docker build]]


## 하나의 경로에서 여러개의 도커파일 사용하기
---

하나의 경로에 여러 개의 Dockerfile을 만들어서 선택하여 사용하려면, 먼저 해당 경로에 다양한 용도의 Dockerfile을 만들고, 이미지를 빌드하고 실행할 때 원하는 Dockerfile을 지정해야 합니다. 각 Dockerfile에 고유한 이름을 부여하고, `docker build`와 `docker run` 명령어에서 `-f` 또는 `--file` 옵션을 사용하여 원하는 Dockerfile을 지정할 수 있습니다.

예를 들어, 경로에 두 개의 Dockerfile이 있고, 이들을 각각 Dockerfile1, Dockerfile2라고 이름 지었다고 가정해보겠습니다.

1.  원하는 Dockerfile을 사용하여 이미지 빌드하기 Dockerfile1을 사용하여 이미지를 빌드하려면 다음 명령어를 실행하세요:
```
docker build -t my-image-1 -f Dockerfile1 .
```

2.  이미지 실행하기 빌드한 이미지를 실행하려면 다음 명령어를 실행하세요
```
docker run -d --name container-1 my-image-1
또는
docker run -d --name container-2 my-image-2
```

이렇게 하면 하나의 경로에서 여러 개의 Dockerfile을 사용하여 이미지를 빌드하고 실행할 수 있습니다.
