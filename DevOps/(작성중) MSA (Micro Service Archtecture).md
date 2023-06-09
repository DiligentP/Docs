#DevOps

마이크로 서비스 아키텍쳐는 하나의 큰 어플리케이션을 여러 개의 작은 컴포넌트 별로 나누어 작은 서비스의 조합으로 구축하도록 설계된 아키텍쳐를 말합니다.

![[Pasted image 20230414120809.png]]

![[Pasted image 20230424114237.png]]


Monolithic Architecture는 소프트웨어의 모든 구성요소가 한 프로젝트에 통합되어 있는 형태입니다. 웹 개발을 예로 들면 웹프로그램을 개발하기 위해 모듈 별로 개발을 하고, 개발이 완료된 웹 어플리케이션을 하나의 결과물로 패키징하여 배포되는 형태를 말하는데, 이런 어플리에킹션을 모놀리식 어플리케이션이라 하며, 웹의 경우 WAR 파일로 빌드되어 WAS에 배포하는 형태를 말합니다. 주로 소규모에 사용됩니다.

하지만 일정 규모 이상의 서비스, 혹은 수백명 이상의 개발자가 투입되는 프로젝트에서 Monolithic Architecture는 한계를 보입니다.

## Monolithic Architecture의 한계점
---

- 부분 장애가 전체 서비스의 장애로 확대될 수 있다.

- 부분적인 *Scale-out(여러 server로 나누어 일을 처리하는 방식)이 어렵다

- 서비스의 변경이 어렵고, 수정 시 장애의 영향도 파악이 힘들다

- 배포시간이 오래걸린다

- 한 프레임워크와 언어에 종속적이다.

이러한 Monolithic Architecture의 문제점들을 보완하기위해 MSA가 등장하게 되었습니다. 기존의 특정한 물리적인 서버에 서비스를 올리던 on-premiss 서버 기반의 Monolithic Architecture에서 이제는 클라우드 환경을 이용하여 Micro Service Architecture로 많은 서비스들이 전환되고 있습니다.

## MAS의 특징 및 장점
---

MSA는 API를 통해서만 상호작용 할 수 있습니다.  즉, 마이크로서비스는 서비스의 end-point(접근점)을 API 형태로 외부에 노출하고, 실질적인 세부사항은 모두 추상화 합니다. 내부의 구현 로직, 아키텍쳐와 프로그래밍 언어, 데이터베이스, 품질 유지 체계와 같은 기술적인 사항들은 서비스 API에 의해 철저하게 가려집니다.

따라서 *SOA(Service Oriented Architecture)의 특징을 다수 공통으로 가집니다.

각각의 서비스는 모듈화가 되어 있으며, 모듈 끼리는 RPC 또는 message-driven API 등을 이용하여 통신합니다. 이러한 MSA는 각  개별의 서비스 개발을 빠르게 하며, 유지보수도 쉽게 할 수 있도록 합니다.

이는 적절한 수준에서 기술 스택을 각각 다르게 가져갈 수 있다는 것을 의미합니다. 예를 들면 Java spring 기반이라도 MSA를 사용하면 node.js로 블록체인 개발 모듈을 연동함에 무리가 없을 것입니다.

각 서비스 부하에 따라 자원 및 서비스 규모를 scale-out 할 수 있습니다.
