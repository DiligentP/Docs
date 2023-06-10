
1. Linux PC에서 명령 콘솔을 엽니다.
2. 장착을 진행하기 전에 필요한 구성 요소를 설치합니다.

- 우분투

```
sudo apt update
sudo apt install nfs-common
```

- CentOS/Redhat/Fedora  

```
sudo yum install nfs-utils
```

3. Synology NAS 의 NFS 공유폴더 목록을 확인합니다.
```
showmount -e [Synology NAS IP 주소]
```

5. 다음과 같이 **mount** 명령을 입력하여 클라이언트 측에서 NFS를 통해 공유 폴더를 마운트합니다.

```
sudo mount -t nfs [Synology NAS IP 주소]:[공유 폴더의 마운트 경로] /[클라이언트의 마운트 지점]
```

- 예:  
    `sudo mount -t nfs 196.168.xx:/volumeX/test /mnt`

6. `disk free` 명령을 입력하여 공유 폴더가 성공적으로 탑재되었는지 확인합니다. **파일 시스템** 열의 출력은 다음 형식이어야 합니다.

```
disk free 또는 df -h


[_Synology NAS IP 주소_]:[_공유 폴더의 마운트 경로_]

```
