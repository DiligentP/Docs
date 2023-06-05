
볼륨 생성
```
mkdir -p /data/porrainer

또는 

docker volume create portainer_data
```


컨테이너 실행
```bash
## 볼륨 매칭 디렉터리로 한경우
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

## 도커 볼륨 디렉터리로 한경우
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /data/portainer:/data portainer/portainer-ce:latest
```

8000 포트는 에이전트 관리용, 9443은 웹 접근용


웹 접근하기
```
https://[IP]:9443
```

