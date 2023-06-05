
```
2: ens33: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 00:0c:29:11:85:80 brd ff:ff:ff:ff:ff:ff
    inet 192.168.0.4/23 brd 192.168.1.255 scope global noprefixroute dynamic ens33
       valid_lft 6944sec preferred_lft 6944sec
    inet 192.168.0.107/24 brd 192.168.0.255 scope global noprefixroute ens33
       valid_lft forever preferred_lft forever
    inet6 fe80::554e:eee8:6d9:abd5/64 scope link noprefixroute
       valid_lft forever preferred_lft forever

```


Chat GPT
---
해당 출력에서는 ens33이라는 인터페이스에 두 개의 IP 주소가 할당되어 있습니다. 하나를 삭제하려면 다음과 같이 하시면 됩니다.


1.  불필요한 IP 주소를 가진 인터페이스를 식별합니다. 위 출력에서는 192.168.0.4/23과 192.168.0.107/24가 있습니다.



2.  삭제할 IP 주소를 가진 인터페이스를 다음과 같이 비활성화합니다.
```
sudo ifconfig ens33 down
```


3.  삭제할 IP 주소를 가진 인터페이스를 제거합니다. 
```
sudo ip addr del 192.168.0.4/23 dev ens33
```
```
sudo ip addr del 192.168.0.107/24 dev ens33
```


4.  인터페이스를 다시 활성화합니다.
```
sudo ifconfig ens33 up
```

이제 해당 인터페이스에는 삭제된 IP 주소만이 남아 있어야 합니다.