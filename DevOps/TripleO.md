
OpenStack On OpenStack

TripleO의 장점
- 물리 인프라, 가상화 제어 관련 프로세스 영역
- 가상 머신, 사용자 제어 영역
- Stack 관리 영역과 사용 영역의 분리


![[Pasted image 20230419105350.png]]

UndeCloud
- 다수의 고객을 대상으로 서로 분리된 (물리적- 논리적) OpenStack 기반 서비스를 제공하기 위해 사용하는 Openstack
- 각 OpenStack이 기본적으로 사용하는 OS 배포, 물리자원 배포 등을 수행
- 접근 권한을 별도 설정하여 일반 유저가 접근할 수 없게 통제

OverCloud
- 가상화 플랫폼 사용자의 관점에서 고객이 다수의 VM을 생성하고 제어할 수 있도록 하는 OpenStack
- 각 VM이 사용하는 Guest OS의 배포, 물리 자원을 가상화 시켜 배포하는 작업 등을 수행.



