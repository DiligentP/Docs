#Docker #Linux 

### Windows - Chocolety
```powershell
$ choco install docker-desktop 

choco install docker-cli
```

참고
[Install Docker Desktop on Windows | Docker Documentation](https://docs.docker.com/desktop/install/windows-install/)


### Lunux - Ubuntu
```shell
# docker 스크립트 파일 제공
curl -sSL http://get.docker.com | bash

# Ubuntu
sudo apt-get update
sudo apt-get install curl

# Start Docker
sudo systemctl enabled docker --now
sudo systemctl start docker --now
```

### Linux - CentOS
```shell
# 도커 패키지를 설치합니다.
curl -sSL http://get.docker.com | bash

# 도커를 활성화 합니다.
systemctl start docker     # 도커를 시작합니다.
systemctl enable docker   # 도커를 시스템 부팅시 자동으로 활성화 합니다.

# 도커가 잘 활성화 되었는지 확인합니다.
systemctl status docker
---
● docker.service - Docker Application Container Engine
   Loaded: loaded (/usr/lib/systemd/system/docker.service; enabled; vendor preset: disabled)
   Active: active (running) ...
 
# 도커 호스트 아이피를 확인합니다. (아래의 도커 호스트 아이피는 172.17.0.1 입니다.)
hostname -I
---
172.18.82.206 172.17.0.1
...


```


기타
- 명령어 `curl -sSL http:/get.docker.com | bash`  를 통한 설치에는 다음과 같은 패키지 들이 포함되어 있습니다.

```
docker-ce
docker-ce-cli
docker-compose-plugin
docker-ce-rootless-extras
docker-buildx-plugin
```

