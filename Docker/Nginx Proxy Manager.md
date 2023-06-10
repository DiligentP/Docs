
## NPM이란 ?
---
Nginx Proxy Manager는 리버스 프록시, 리다이렉션, 보안 인증, SSL 인증서 관리 등을 GUI로 할 수 있게 도와주는 툴입니다.



## Docker-compose.yml
---
```yml
version: '3'
services: 
  app: 
    image: 'jc21/nginx-proxy-manager:latest' 
    restart: unless-stopped 
    ports: 
     - '80:80' 
     - '81:81' 
     - '443:443' 
    volumes: 
     - ./data:/data 
     - ./letsencrypt:/etc/letsencrypt
```


실행
```
docker-compose up -d
```