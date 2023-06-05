```toc
```

## 이미지 다운로드
---
```shell
docker pull jenkins/jenkins
```


## 컨테이너 설치 및 실행
---
```shell
docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_data:/var/jenkins_home --name jenkins jenkins/jenkins

```

`tty`와 `stdin_open` 옵션을 설정하면, `docker-compose up` 명령어를 실행할 때 `-it` 옵션을 사용한 것과 같은 결과를 얻을 수 있습니다.

```yml
# docker-compose
version: '1'

services:
  jenkins:
    image: jenkins/jenkins
    ports:
      - "9090:8080"
    volumes:
      - jenkins-data:/var/jenkins_home
    user: root
    container_name: jenkins
    tty: true
    stdin_open: true

```

## 젠킨스 접속
---
```shell
# 컨테이너 쉘 접속
docker exec -it jenkins /bin/bash

# 패스워드 확인
cat /var/jenkins_home/secrets/initialAdminPassword
```