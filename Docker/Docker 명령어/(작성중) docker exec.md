```
# 컨테이너에 bash로 접속
docker exec -it mycon bash


# 컨테이너에 들어가지 않고 실행
docker cxec mycon cat  /etc/passwd

docker exec mycon bash -c "sh /myscript.sh"
```