
1. 일반 사용자 계정으로 접속합니다 
```shell
ssh ubuntu@192.168.0.18
```

![[Pasted image 20230420223434.png]]

2. `sudo` 명령을 사용하여 root 계정의 패스워드를 변경합니다. 
```shell
sudo passwd root
```

![[Pasted image 20230420223616.png]]

3. 사용자 계정에서 root 계정으로 전환하여 `/etc/ssh/sshd_config` 파일에서 `PermitRootLogin` 옵션을 `yes`로 변경합니다.
```shell
sudo su - root
vi /etc/ssh/sshd_config
...
PermitRootLogin yes
...
:wq

```
![[Pasted image 20230420224016.png]]
![[Pasted image 20230420224221.png]]

4. `systemctl restart sshd`   sshd 를 재구동 합니다.
```shell
systemctl restart sshd
systemctl status sshd
```

![[Pasted image 20230420224415.png]]

5. root 계정으로 접속합니다.
```shell
ssh root@192.168.0.18
```

![[Pasted image 20230421160052.png]]

