
## Docker volume 명령어

###  volume create

도커 볼룸을 생성하는 명령어 입니다.

### volume inspect

하나 또는 여러개의 도커 볼륨의 상세 정보를 출력합니다.

### volume ls

도커 볼륨 리스트를 출력합니다.

### volume prune

### volume rm


## docker volume rename

도커에서는 볼륨의 이름을 변경하는 명령어는 존재하지 않습니다. 하지만, 볼륨을 다른 이름으로 복사 한 후 원래 볼륨을 삭제하는 방식으로 볼륨의 이름을 변경 할 수 있습니다.

**기존 볼륨의 데이터를 보존하기 위해 새로운 볼륨을 생성합니다.**

```
docker volume create --name new_volume
```

**기존 볼륨의 데이터를 새로운 볼륨으로 복사합니다.**

```
docker run --rm -v old_volume:/from -v new_volume:/to alpine ash -c "cd /from ; cp -a . /to"
```

- `old_volume`은 기존 볼륨의 이름이고 `new_volume`은 변경하고자 하는 새로운 볼륨의 이름입니다.

**기존 볼륨을 삭제합니다.**

```
docker volume rm old_volume
```
