```
# 컨테이너에 쉘로 접속
docker exec -it 컨테이너_이름 bash
docker exec -it 컨테이너_이름 /bin/sh

# 컨테이너에 들어가지 않고 실행
docker cxec mycon cat  /etc/passwd

docker exec mycon bash -c "sh /myscript.sh"
```