#VMware 

## Vmware Virtual Network Editor (vmnetcfg.exr) 설정

![[Pasted image 20230414121050.png]]

또는,  VMware Workstation - Edit - Virtual Network Editer

![[Pasted image 20230414121100.png]]

Change Settings 클릭

![[Pasted image 20230414121145.png]]


VMnet8 - NAT Setting

![[Pasted image 20230414121215.png]]

Gateway IP 를 2 이상으로 설정 (1 은 HOST 가 사용하고 있으므로.)

![[Pasted image 20230414121228.png]]

vi /etc/sysconfig/network-scripts/ifcfg-ens33 설정

![[Pasted image 20230414121238.png]]

IP 확인

![[Pasted image 20230414121248.png]]


네트워크 연결 테스트 (ping 8.8.8.8 , google.com)

![[Pasted image 20230414121257.png]]


참고
[https://nirsa.tistory.com/15](https://nirsa.tistory.com/15)

