## 설명
AWS는 아마존에서 제공하는 가장 큰 규모의 클라우드 서비스 입니다.


## 서비스 종류
### Networking Service
[VPC](<AWS VPC (Virtual Private Cloud).md>) ⭐⭐⭐⭐⭐
- VPC 는 격리된 리소스의 집합으로 구성된 AWS의 가상 데이터 센터
  
[Direct Connect](<AWS Direct Connect.md>)
- 인터넷 연결 없이 호스트 네트워크에서 AWS로 연결하는 전용 네트워크 서비스

[Route 53](<AWS Route 53.md>)  ⭐⭐⭐
- 확장이 가능하고 가용성이 높은 DNS 서비스

### Computing Service
[EC2](<AWS EC2.md>) ⭐⭐⭐⭐⭐
- 가상화된 자원으로 일정한 컴퓨팅 용량을 제공하는 서비스

[Elastic Beanstalk](<AWS Elastic Beanstalk.md>)
- 컨테이너를 배포하고 관리하는 데 사용되는 애플리케이션 컨테이너

[Lambda](<AWS Lambda.md>)
- 이벤트에 반응하여 코드를 실행하고 컴퓨팅 리소스를 자동으로 관리하는 컴퓨팅 서비스

[EC2 Container Service](<AWS EC2 Container Service.md>)
- EC2 인스턴스 클러스터에서 Docker 컨테이너를 쉽게 실행하고 관리
	
### Storage Service
S3 ⭐⭐⭐⭐⭐
- 모든 종류의 데이터 개체와 플랫 파일을 클라우드에 저장하는 단순 스토리지 서비스

CloudFront
- 컨텐츠 및 리소스를 빠르게 최종 사용자에게 배포하는 콘텐츠 전송 네트워크 스토리지 서비스

Glacier
- 장기간 데이터 보관 및 백업을 위해 안전한 스토리지를 제공하는 저비용 스토리지 서비스

EFS (Elastic File Storage)
- 여러 EC2 인스턴스에 연결 가능한 파일 스토리지 서비스

Snowball
- 더 이상 액세스할 필요가 없는 대량의 데이터 아카이빙 기능을 제공하는 서비스

Storage Gateway
- 백업 및 재해 복구를 위해 온프레미스 IT 환경을 클라우드 스토리지와 안전하게 통합 하는 서비스

### Database Service
RDS (Relational Database Service) ⭐⭐⭐⭐⭐
- 클라우드에서 제공하는 관계형 데이터베이스

DynamoDB 
- 고가용성을 위해 데이터의 분산 복제본을 관리하는 데 사용되는 확장 가능한 NoSQL 데이터 저장소

ElasticCache
- 인메모리 캐싱 시스템을 사용하여, 애플리케이션 성능을 향상

Redshift
- 데이터 웨어하우징 서비스, 모든 데이터를 비용 효율적으로 분석함.

DMS(Data Migration Service)
- 데이터베이스를 클라우드로 안전하게 마이그레이션 및 변환하는 서비스

### Analytics
EMR (Elastic MapReduce)
- 웹 인덱싱, 데이터 마이닝, 로그 파일 분석과 같은 빅데이터 작업을 수행하는 서비스

Data Pipeline
- 한 서비스에서 다른 서비스로 데이터를 이동하는 데 도움을 주는 서비스
- 주기적인 데이터 기반 워크플로우에 사용되는 서비스

Elasticsearch ⭐⭐⭐
- Elasticsearch 배포, 운영, 확장에 도움을 주는 관리형 서비스

Kinesis
- 실시간 스트리밍 데이터 제공 서비스

Machine Learning
- 스마트 애플리케이션을 쉽게 구축할 수 있는 서비스

QuickSight
- 데이터에서 쉽게 인사이트를 도출할 수 있도록 도와주는 클라우드 지원 비즈니스 인텔리전스 서비스

### Security and Identity
IAM (Identity and Access Management)
- 모든 서비스에 대한 보안을 구성, 액세스관리

Inspector
- AWS 애플리케이션의 동작을 분석하고 잠재적인 보안 문제를 식별에 도움을 주는 서비스

WAF (Web Application Firewall)
- 웹 트래픽 필터를 제공하여 웹 애플리케이션을 공격으로부터 보호하는 서비스

Cloud HSM
- Hardware Security Module

KMS (Key Management Service)
- Key Management Service

### Management Tools
CloudWatch
- 다양한 메트릭 리소스 및 애플리케이션에 대한 모니터링을 제공하는 서비스

CloudFormation
- AWS 리소스 모음을 생성하고 업데이트하는 서비스

CloudTrail
- 계정에서 이루어진 API 호출을 기록하여 사용자 활동에 대한 가시성을 높이는 서비스

OpsWorks
- 규모나 복잡성에 관계없이 모든 애플리케이션을 관리할 수 있는 데브옵스 플랫폼서비스

Config
- AWS 리소스의 인벤토리를 제공, AWS 리소스 구성 내역 감사 및 변경 사항을 알려주는 서비스

Service Catalog
- 조직의 승인된 IT 리소스 카탈로그 관리를 도와주는 서비스

Trusted Advisor
- AWS 환경을 검사하고 비용을 절감하고 시스템 성능을 개선을 도와주는 서비

### Application Services
API Gateway ⭐⭐⭐
- API 생성, 관리, 모니터링, 보안 서비스

AppStream
- 리소스 집약적인 애플리케이션과 게임을 클라우드에서 여러 사용자에게 스트리밍하는 데 사용

CloudSearch
- 웹사이트와 앱을 위한 완전 관리형 검색 서비

Elastic Transcoder
- 클라우드에서 미디어 파일을 저렴한 비용으로 쉽게 변환하는 데 사용

SES (Simple Email Service)
- 이메일을 주고받는 데 사용

SQS (Simple Queue Service)
- 메시지를 저장하기 위한 안정적인 호스팅 대기열

SWF (Simple Workflow Service)
- 애플리케이션과 모든 처리 단계를 조정하는 데 사용

### Developer Tools
Code Commit
- 비공개 Git 리포지토리를 호스팅 하는 관리형 소스 제어 서비스

Code Deploy
- 코드 배포 자동화 서비스

Code Pipeline
- SW Release 필요한 단계를 시각화하고 자동화할 수 있는 지속적 배포 서비스