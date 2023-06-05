
## 1. Proxy
---
### 1-1. Proxy란
---
- 대리 : 남을 대신해서 일을 처리함 -> 프록시는 간단하게 대리에 비유할 수 있습니다.
- 프록시는 범용적인 단어 이기때문에 여러 곳에서 쓰지만, 지금 설명하려는 프록시는 Network Proxy를 의미 합니다.

### 1-2.  Proxy Server
---
프록시 서버란 클라이언트와 서버간의 중계 서버로, 통신을 대리 수행하는 서버를 말합니다.
캐시/보안/트래픽 분산 등 여러 장점을 가질 수 있습니다.

### 1-3. Proxy 의 종류
---
프록시의 종류에는 Forward Proxy와 Reverse Proxy 두가지가 있습니다.

## 2. Forward Proxy
---
### 2-1. 일반적인 Proxy는 Forward Proxy
---
인터넷 속도를 향상시키기위해
외국에서 접속하는 것 처럼 테스트하기 위해
IP 추적을 방지하기 위해

### 2-2. Forward Proxy 흐름도
---
![[Pasted image 20230424171220.png]]

### 2-3. Forward Proxy 의 특징 1 - 캐싱
---
클라이언트가 요청한 내용에 대한 데이터를 캐싱 함으로써 중복요청에 대한 빠른 처리, 


### 2-4. Forward Proxy 의 특징 2 - 익명성
---
서버가 응답 받은 요청을 누가 보냈는지 알지 못하게 합니다.  ..why?
Server가 받은 요청 == Proxy IP


## 3. Reverse Proxy
---
### 3-1. Reverse Proxy 흐름도
---
![[Pasted image 20230424172918.png]]

리버스 프록시는 포워드 프록시와 다르게 앞단에 인터넷이 존재합니다.

### 3-2. Reverse Proxy 의 특징 1 - 캐싱
---
Forward Proxy 와 동일.

### 3-3. Reverse Proxy 의 특징 2 - 보안
---
클라이언트는 리버스 프로록시를 실제 서버라 생각하고 요청하게 되며, 실제 서버의 IP가 노출되지 않게됩니다.

### 3-4. Reverse Proxy 의 특징 3 - 로드벨런싱
---
하는 경우도 있고 하지 않는 경우도 있음. (선택적)


## 4. Load Balancer
---
로드벨런서란 부하분산을 의미합니다. 해야할 작업을 나누어 서버의 부하를 분산 시키는데 목적이 있습니다.

### 4-1. Load Balancer가 하는 일
---
부하분산

### 4-2. Load Balancer가 나타난 배경
---
서비스의 규모가 커짐에 따라, 유동적으로 서비스를 유지하기 위해서.

### 4-3 Load Balancer 종류
---
L2, L3, L4, L7
OSI7 Layer 기준으로 어떤 것을 나누는지에 따라 다름

L2 : Mac 주소를 바탕으로 Load Balancing을 수행.
L3 : IP 주소를 바탕으로 Load Balancing 수행.
L4 : Transport Layer (IP & Port) Level 에서 Load Balancing 을 수행. (TCP/IP)
	-  예를 들어, 네이버로 이동시 네이버 서버A 와 서버B 로 나누어줌
L7 :  Application Layer (User Request) Level에서 Load Balancing 을 수행. (HTTPS/ HTTP/ FTP)


## 참고
[제이미의 Forward Proxy, Reverse Proxy, Load Balancer](https://www.youtube.com/watch?v=YxwYhenZ3BE)
