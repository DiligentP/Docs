
## `nfs-common` 패키지 설치

```
sudo apt-get update 
sudo apt-get install nfs-common
```

## NFS 서버 공유디렉토리 목록 확인

```
showmount -e <NFS_SERVER_IP>
```

## NFS 공유 디렉토리를 마운트할 디렉토리를 생성

```
mkdir -p /mnt/nfs
```

3. NFS 공유 디렉토리를 마운트합니다. 마운트 명령에는 공유 디렉토리의 IP 주소 또는 도메인 이름, 공유 디렉토리의 경로, 그리고 마운트할 디렉토리의 경로가 필요합니다. 예를 들어, `192.168.1.100` 서버의 `/shared` 디렉토리를 `/mnt/nfs`에 마운트하려면 다음 명령을 실행합니다:

```
sudo mount 192.168.1.100:/shared /mnt/nfs
```

4. 마운트가 성공적으로 이루어졌다면, `/mnt/nfs` 디렉토리에서 NFS 공유 디렉토리의 내용을 볼 수 있을 것입니다. 다음 명령을 사용하여 마운트된 디렉토리의 내용을 확인할 수 있습니다:

```
ls /mnt/nfs
```


5. NFS 공유 디렉토리를 더 이상 사용하지 않을 때, 마운트를 해제해야 합니다. 다음 명령을 실행하여 마운트를 해제합니다:

```
sudo umount /mnt/nfs
```

이제 Ubuntu에서 NFS 클라이언트를 사용할 수 있습니다. 필요한 경우, `/etc/fstab` 파일을 수정하여 부팅 시 자동으로 NFS 공유 디렉토리를 마운트할 수도 있습니다.