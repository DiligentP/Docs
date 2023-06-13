![[Pasted image 20221227112700.png]]
```
The purpose of this is primarily for laptops running VMware.

VMware Workstation also includes virtual networking between your guest VM’s and your 
laptop’s NIC(network interface card) which then runs out to the network.

When you move your laptop from one network to another this feature ensures 
that the VM’s IP address is automatically renewed and routed to your VM, 
as most networks are using DHCP(dynamic host configuration protocol) 
to automatically assign your laptop(and by proxy, your VM’s) with newly assigned 
local IP addresses.
```

```
VMware의 경우워크스테이션이 랩톱 또는 모바일 장치에 설치된 경우 브리지 네트워크 옵션에서
"물리적 네트워크 연결 상태 복제"를 고려할 수 있습니다. 이 옵션을 선택하면 한 유선 또는 
무선 네트워크에서 다른 네트워크로 이동할 때 가상 머신의 IP 주소가 자동으로 갱신됩니다.
```

```
If your VMware Workstation is installed on a laptop or a mobile device, 
then you may want to consider the “Replicate physical network connection state” 
under bridged network option. 

If selected, the IP address of the virtual machine is
automatically renewed as you move from one wired or wireless network to another.
```

```
이것의 목적은 주로 VMware를 실행하는 랩톱을 위한 것입니다.

VMware Workstation에는 게스트 VM과 랩톱의 NIC(네트워크 인터페이스 카드) 사이의 가상 네트워킹도
포함되어 있어 네트워크로 연결됩니다.

랩톱을 한 네트워크에서 다른 네트워크로 이동할 때 이 기능은 대부분의 네트워크가 DHCP
(동적 호스트 구성 프로토콜)를 사용하여 랩톱을 자동으로 할당하기 때문에 VM의 IP 주소가 자동으로
갱신되고 VM으로 라우팅됩니다. VM)에 새로 할당된 로컬 IP 주소가 있습니다.
```