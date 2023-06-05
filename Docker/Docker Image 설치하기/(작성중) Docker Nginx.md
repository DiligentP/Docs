
설명
- nginx 이미지는 기본적으로 80 포트로 서비스 됩니다. 따라서 -p 옵션을 통해  `[외부접속포트]:80` 으로 지정해주어야합니다.
- nginx 는 서비스 프로세스 데몬입니다. 따라서 -d 옵션을 사용하여 백그라운드에서 실행해 주아여 합니다.

기본적인 명령
```shell
# 도커 컨테이너 생성 및 실행
docker run -d --name nginx -p 80:80 nginx:latest 

c14fa587eabf1a09b7f6463d2be1739e61333e23e468f326d7b50cdc8f43ca81

# nginx 컨테이서 잘 생성 됬는지 확인 
docker ps

CONTAINER ID   IMAGE          COMMAND                   CREATED          STATUS         PORTS                              
6d7b81c094e2   nginx:latest   "/docker-entrypoint.…"   11 seconds ago   Up 9 seconds   0.0.0.0:80->80 ..

# nginx 접속해보기
curl localhost

<!DOCTYPE html>
...
<title>Welcome to nginx!</title>
<style> ...
```



## nginx index.html 주소
---
- nginx 과 같은 웹서버는 기본적으로 정적파일을 가지고 있는 디렉토리가 존재합니다.  그 디렉토리가 nginx는 다음과 같습니다.

```
/usr/share/nginx/html/index.html
```




## Nginx 설정
---
Nginx 관련 디렉토리는 `/etc/nginx` 입니다.

기본적인 환경설정 파일의 경로는 `/etc/nginx/conf.d/`  또는 `/etc/nginx/sites-availabe/` 하위의 
`default.conf`라는 파일입니다.




