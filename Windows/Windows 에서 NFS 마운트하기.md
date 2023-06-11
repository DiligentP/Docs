
## Windows NFS 기능 켜기

![](Pasted%20image%2020230611050153.png)

## 마운트 진행

```
mount \\192.168.0.20\volume1\public Z:\
```


![](Pasted%20image%2020230611050612.png)

완료.


---

영구적으로 마운트하기위해서는 `net use` 라는 명령어를 사용하면됩니다.

```powershell
net use Z: \\192.168.0.20\volume1\public /persistent:yes
```

`/persistent:yes` 는 로그온 할 때마다 자동으로 드라이브를 다시 연결하도록 설정하는 옵션입니다.

