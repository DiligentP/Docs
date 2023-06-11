2023-04-21 박정현

서버 환경
- Centos7
- Server P : 192.168.0.19
- Client IP : 192.168.0.2
- Firewalld 비활성화

시나리오
- centos에서 nfs server를 구성한 후 nfs client에서 접속하여 공유된 디렉터리(/shared)에 파일을 업로드 한다. (nfs server 구성, nfs client 구성 및 접속)


1. 공유할 디렉터리를 생성합니다.
```shell
mkdir /shared
chmod -R 777 /shared/
ls -ld /shared
```

![[Pasted image 20230421160701.png]]

2. NFS server 관련 Pakage를 설치합니다.
```shell
yum install -y nfs-utils rpcbind
tail -n 1 /etc/passwd (nfsnobody 계정확인)
```

![[Pasted image 20230421093753.png]]

3. NFS 설정 파일을 수정하고 적용합니다.
```shell
vi /etc/exports 

/shared 192.168.0.0/24(rw)

exportfs -a
```

![[Pasted image 20230421160928.png]]

![[Pasted image 20230421094129.png]]

4. NFS-Server와 rpcbind 데몬을 시작합니다.
```shell
systemctl enable nfs-server --now
systemctl enable rpcbind --now
```

![[Pasted image 20230421094232.png]]

5. 공유된 디렉토리를 확인합니다.
```shell
exportfs
exportfs -v
```

![[Pasted image 20230421161026.png]]

6. 클라이언트(192.168.0.2)에서 NFS 패키지를 설치합니다.
```shell
yum install nfs-utils -y
```

![[Pasted image 20230421095106.png]]

7. NFS 서버 (192.168.0.19) 에서 공유하고 있는 디렉토리를 확인합니다.
```shell
showmount -e 192.168.0.19
```

![[Pasted image 20230421161141.png]]

8.  NFS 서버의 공유된 디렉토리에 연결합니다.
```shell
mkdir /nfsdir

mount -t nfs 192.168.0.19:/shared /nfsdir

df -h  (마운트 되었는지 확인)
```

![[Pasted image 20230421161451.png]]

마운트 된 것을 확인 할 수 있습니다.

9. 클라이언트(192.168.0.2) 에서 임의파일을 하나 생성하여 NFS서버가 잘 동작하는지 확인합니다.
```shell
cd /nfsdir
touch test.txt
ls -al
```
![[Pasted image 20230421162209.png]]

10 NFS 서버(192.168.0.19) 에서도 파일이 있는지 확인합니다.
```shell
cd /shared
ls -al
```

![[Pasted image 20230421162322.png]]

