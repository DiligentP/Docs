### docker 설치 확인

```
dpkg -l | grep -i docker
```


### docker 엔진 삭제

```
sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli  
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce
```

### 이미지, 컨테이너, 볼륨, 사용자생성파일 삭제

```
sudo rm -rf /var/lib/docker /etc/docker  
sudo rm /etc/apparmor.d/docker  
sudo groupdel docker  
sudo rm -rf /var/run/docker.sock
```
