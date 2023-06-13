
## 설치 

```shell
# jq Library 설치
yum install jq -y

# 최신버전 환경변수로 등록
VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)
# 설치 경로 환경변수 등록
DESTINATION=/usr/bin/docker-compose

# docker-compose 설치 
curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION

# 실행 권한을 부여
chmod +x $DESTINATION

# 설치 확인
docker-compose --version
```

[Releases · docker/compose](https://github.com/docker/compose/releases) 최신버전 23-06 : `v2.18.1`

## docker-compose
---
도커 컴포즈는 여러 개의 도커 컨테이너를 하나의 애플리케이션으로 정의하고 실행하기 위한 도구입니다. 즉, 컨테이너 간의 상호 작용 및 구성을 정의하고 실행할 수 있습니다. 도커 컴포즈 파일은 YAML 포맷으로 작성되며, 애플리케이션을 구성하는 각 컨테이너에 대한 정보, 서비스 종속성, 컨테이너 설정 등을 정의할 수 있습니다. 이를 사용하면 개발, 테스트, 운영 환경에서 일관성 있게 애플리케이션을 배포하고 관리할 수 있습니다.

