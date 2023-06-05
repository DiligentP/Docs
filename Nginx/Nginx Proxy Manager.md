
Nginx Proxy Manager는 Nginx를 기반으로 한 Reverse Proxy 서비스를 쉽게 관리할 수 있도록 도와주는 웹 어플리케이션입니다. 이를 Docker로 쉽게 배포할 수 있습니다.


## Nginx Proxy Manager 설치 
---
docker-compose.yml
```yml
version: '3.8'
services:
  app:
    image: 'jc21/nginx-proxy-manager:latest'
    restart: unless-stopped
    ports:
      # These ports are in format <host-port>:<container-port>
      - '80:80' # Public HTTP Port
      - '443:443' # Public HTTPS Port
      - '81:81' # Admin Web Port
      # Add any other Stream port you want to expose
      # - '21:21' # FTP

    # Uncomment the next line if you uncomment anything in the section
    # environment:
      # Uncomment this if you want to change the location of
      # the SQLite DB file within the container
      # DB_SQLITE_FILE: "/data/database.sqlite"

      # Uncomment this if IPv6 is not enabled on your host
      # DISABLE_IPV6: 'true'

    volumes:
      - ./data:/data
      - ./letsencrypt:/etc/letsencrypt
```

그 다음에
```
docker-compose up -d
```


## Nginx Proxy Manager 접속
---
![[Pasted image 20230504064705.png]]

```
http://localhost:81
```
어드민 웹 포트는 기본적으로 `:81` 입니다.

초기 Email, Password는 다음과 같습니다.
```
email: admin@example.com 

password: changeme
```

![[Pasted image 20230504064947.png]]
로그인 후 위 창을 통하여 초기 계정을 설정 할 수 있습니다.


참고
https://nginxproxymanager.com/setup/#running-the-app
