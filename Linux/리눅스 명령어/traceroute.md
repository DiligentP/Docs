#Linux #Command 

설명
- traceroute 는 리눅스 네트워크 IP 경로를 확인하기 위한 명령어 입니다.
- traceroute 는 ICMP 프로토콜을 사용하여 경로를 추적합니다.
- L3 장비/ 라우터를 탐지하며, 라우터를 지날 때 마다 TTL 값이 1 줄어듭니다, 또한 우연히 도달하는 것을 방지하여 3번 수행합니다.

명령어
```
traceroute [OPTION] <domain or ip address>
```

옵션
```
-n   # 빠른 명령을 위한 DNS lookup
-w   # 응답 패킷을 수신 받기 위한 시간 (생략된 경우 기본적으로 5초)
```


사용 예
![[Pasted image 20230414115939.png]]


홉의 의미

홉 1 : 첫 번째 호출 포트 (펀칭되지 않음)는 로컬 네트워크의 DrayTek Vigor 라우터입니다. UDP 패킷이 로컬 네트워크를 떠나 인터넷에 연결되는 방식입니다.

홉 2 : 이 기기가 응답하지 않았습니다. ICMP 패킷을 보내지 않도록 구성되었을 수 있습니다. 또는 아마도 응답했지만 너무 느 렸습니다. traceroute 시간 초과.

홉 3 : 기기가 응답했지만 이름이없고 IP 주소 만 얻었습니다. 이 줄에는 별표가 표시되어 세 가지 요청 모두에 대한 답변을받지 못했습니다. 이는 패킷 손실을 나타낼 수 있습니다.

홉 4와 5 : 더 많은 익명 홉.

홉 6 : 여기에는 다른 원격 장치가 3 개의 UDP 요청 각각을 처리했기 때문에 많은 텍스트가 있습니다. 각 장치의 (더 긴) 이름과 IP 주소가 인쇄되었습니다. 이는 대량의 트래픽을 처리 할 하드웨어가 많은 “풍부하게 채워진”네트워크를 만나면 발생할 수 있습니다. 이 홉은 영국에서 가장 큰 ISP 중 하나에 속하기 때문에 동일한 원격 하드웨어가 3 개의 연결 요청을 처리하면 약간의 기적 일 것입니다.

홉 7 : 이것은 UDP 패킷이 ISP 네트워크를 떠날 때 만들어진 홉입니다.

홉 8 : 다시 한 번, 장치 이름이 아닌 IP 주소를 얻습니다. 세 테스트 모두 성공적으로 반환되었습니다.

홉 9 그리고 10 : 익명의 홉이 두 개 더 있습니다.

홉 11 : 우리는 Blarney Castle 웹 사이트에 도착했습니다. 성은 아일랜드 코크에 있지만 IP 주소 지리 위치에 따르면 웹 사이트는 런던에 있습니다.


기타
