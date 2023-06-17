EC2 Instance Connect Endpoint

- Public IP가 없는 (Pricate Subnet에 위치한) EC2 인스턴스에 SSH 혹은 RDP로 접속할 수 있는 서비스


연결 과정
	- EC2 Instance Connect Endpint를 특정 Subnet에 프로비전
	- 이후 해당 Endpoint를 활용해 해당 서브넷과 연동된 VPC 안의 모든 Subnet에 접속
	- Endpint와 EC2 모두 적절한 보안그룹 설정 필요

- 접속권한 관리는 IAM으로 관리함 (ec2-instance-connect:OpenTunne
	- maxTunnelDuration : 최대 허용할 터널의 지속 시간 (Default:3600 초)

- 계정당 최대 5개, VPC당 한 개, Subnet당 한 개 = 고가용성 고민 필요
- 무료

## EC2 Insatance Connection Endpoint Archtecture

![](Pasted%20image%2020230615231658.png)


