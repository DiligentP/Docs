
```
docker run --name [컨테이너 이름] -e MYSQL_ROOT_PASSWORD=[루트 패스워드] -d mysql

docker run -itd --name mydb -p 3306:3306 mysql

docker run --net host -e MYSQL_ROOT_PASSWORD=root -d mysql
```