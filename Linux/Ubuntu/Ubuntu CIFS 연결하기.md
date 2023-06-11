

패키지 설치

```
sudo apt-get update 
sudo apt-get install cifs-utils
```

마운트할 디렉토리 생성
```
mkdir /mnt/public
```

마운트하기
```
mount -t cifs //192.168.0.20/public /mnt/public -o username=dev,password=root
```

영구적으로 마운트 하기
```
vi /etc/fstab

...
//192.168.0.20/public /mnt/public cifs username=dev,password=root 0 0
...

mount -a    # 적용
```

FTP 처럼 한번만 접근 하고 싶을 때는 smbclient를 사용합니다.

```
smbclient //192.168.0.20/public -U dev
```
