#Ubuntu #Linux 


`/etc/ssh/sshd_config` 파일을 `vi` 로 엽니다.
```
vi /etc/ssh/sshd_config

...
# PetmitRootLogin yes
...

```

`PetmitRootLogin`  옵션의 `#`  (주석) 을 해제합니다

```
sudo systemctl restart sshd

명령을 통해 해당 작업을 적용합니다.
```

