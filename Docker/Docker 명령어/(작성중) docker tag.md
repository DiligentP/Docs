설명
- 도커 이미지의 태그를 바꿀 때 사용하는 명령어입니다.

명령어
```
docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
```

사용 예
```shell
# 태그를 myweb:v1 -> diligentp/myweb:v1 로 변경

docker tag myweb:v1 diligentp/myweb:v1
```

상세 설명(docker tag --help)
```
Usage:  docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]

Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE

Aliases:
  docker image tag, docker tag
```