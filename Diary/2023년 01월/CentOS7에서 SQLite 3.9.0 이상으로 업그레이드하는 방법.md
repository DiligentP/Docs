1.  EPEL 저장소 설치:
```
sudo yum install epel-release
```

2.  Remi 저장소 설치:
```
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
```

3.  Remi 저장소를 사용하여 SQLite 패키지 설치:
```
sudo yum --enablerepo=remi install sqlite
```

4.  SQLite 버전 확인:
```
sqlite3 --version
```