#VMware #ESXi #vCenter #vSphere #Hypervisor #가상화


# ESXi
---
가상환경을 구축 하기위해 최소한의 기능만을 탑재한 OS 를 ESXi 서버라고 부릅니다
즉, ESXi == OS

EXSi 환경
![[Pasted image 20230409210010.png]]

# vCenter
---
vCneter는 다수의 EXSi 서버를 하나로 통합하여 관리할 수 있도록 해주는 서비스 입니다.

![[Pasted image 20230409211539.png]]

vCenter가 제공하는 특별한 기능
- vSphere vMotion
- vSphere HA (High Availability)
- vSphere FT (Fault Tolerance)
- vShpere DRS (Distributed Resource Scheduler)
- vShpere SDRS (Storage Distributed Resource Scheduler)
- Clone & Template
- vSphere Distributed Switch 관리
- 글로벌 패치 관리


# vSphere
---
vSphere는 소프트웨어를 모두 포함한 패키지 입니다.

**VMware에서 ESXi, vCenter는 MS에서 Excel, Word, PowerPoint 와 같은 개념이고,
vSphere는 MS Office와 같이 모든 제품을 포괄하고 있는 패키지 와 같은 개념입니다.**


ESXi 서버에서 VM을 관리 하기위한 엑세스 방법으로는 vShere Client를 사용하게 됩니다.
vSphere Client는 총 3가지로 나뉘어 집니다.

1. vSphere Client : 별도의 소프트웨어 설치 없이 HTML을 이용한 웹 동작 방식
2. vSphere Web Client : 별도의 소프트웨어 설치없이 Adobe를 이용한 웹 동작 방식
3. vSphere Windows Client Program : 윈도우에서 특정 소프트웨어를 설치 한 후 프로그램을 통해 접근하는 동작 방식.  (ESXi 6.0 이하의 버전에만 사용됨)

VMware 에서도 웹 동작 방식을 권장합니다.




## 참고 Reference
---
[vSphere, ESXi, vCenter 개념 및 차이점 (tistory.com)](https://lifegoesonme.tistory.com/435)
