허브 역시 리소스 공유를 목적으로 여러 기기를 하나로 연결할 수 있는데, 허브에 연결된 기기 집단을 LAN 세그먼트라고 한다. 허브가 스위치와 다른 점은 연결된 기기 중 하나에서 전송된 패킷이 허브에 연결된 모든 기기로 브로드캐스팅된다는 점이다.

반면 스위치는 패킷의 목적지 주소로 지정된 기기로 이어지는 포트로만 패킷이 전달된다. 또한 스위치는 일반적으로 LAN 세그먼트와 세그먼트에 연결된 허브를 연결한다. 스위치는 동일한 LAN 세그먼트의 기기를 향하는 트래픽을 걸러낸다. 이런 기능 덕분에 스위치는 자체 프로세싱 리소스와 네트워크 대역폭을 더 효율적으로 활용한다.

원문보기:

[https://www.itworld.co.kr/news/167585#csidx16606eb91c8e4e4a8203c1dcb0c0955](https://www.itworld.co.kr/news/167585#csidx16606eb91c8e4e4a8203c1dcb0c0955) 

출처: <[https://www.itworld.co.kr/news/167585](https://www.itworld.co.kr/news/167585)>

그냥 생각하기에는 100 Mbps의 대역폭을 가지는 선 1대로 4대를 물려놓으면

허브면 25 Mbps씩 나눠 가질 거고

스위칭 허브는 4대 단말모두 100 Mbps를 가진다고 알고 있는데요 왜그럴까요 이해가 안돼요

4대의 단말이 동시에 이런저런 용량큰 파일들을 다운 받아도 모두 100 Mbps로 받으면 그 선은 400Mbps를 전송하는게 아닌건가요?

어째서 스위칭 허브나 스위치를 쓰면 모든 단말이 대역폭을 최대로 사용할 수 있을까요? - 컴퓨터 / 하드웨어 - 기글하드웨어 : [https://gigglehd.com/gg/?mid=hard&document_srl=2651795](https://gigglehd.com/gg/?mid=hard&document_srl=2651795)

출처: <[https://gigglehd.com/gg/hard/2651795](https://gigglehd.com/gg/hard/2651795)>

더미허브를 쓰던 스위칭허브를 쓰던 최대 대역폭은 외부대역폭과 같습니다. 스위칭허브가 전부 100mbps를 갖는 이유는 스위치의 특성상 대역폭분배가 가능하기 때문이죠. 실제로 네개의 기기가 최대로 사용하면서 동등한 우선권을 가졌으면 1/4의 속도가 나오겠죠. 더미허브는 대역폭의 사용도와 상관없이 일괄배분을 하니 문제가 되는것인데 요새는 구하기도 어려울 것입니다.

출처: <[https://gigglehd.com/gg/hard/2651795](https://gigglehd.com/gg/hard/2651795)>

더미허브는 한 포트로 패킷을 받으면 다른포트로 모두 뿌려버립니다

[http://www.ktword.co.kr/abbr_view.php?m_temp1=485](http://www.ktword.co.kr/abbr_view.php?m_temp1=485)

다른PC가 패킷을 보내고 있으면 자신은 못보내니

나온 기술이 CSMA/CD

[http://www.ktword.co.kr/abbr_view.php?m_temp1=52](http://www.ktword.co.kr/abbr_view.php?m_temp1=52)

1/n 으로 떨어지긴 하는데 실제론 충돌시 대기시간이랑 뭐랑 다 따지면 유효속도는 더 떨어질겁니다

장비가 많으면 더더욱 하락할거에요

스위칭허브는 패킷의 목적지를 보고

필요한 포트로만 보내줍니다

[http://www.ktword.co.kr/abbr_view.php?m_temp1=640](http://www.ktword.co.kr/abbr_view.php?m_temp1=640)

A B C D 인터넷 이 있다면

A pc가 B PC에게 패킷을 보내려 한다면

더미허브는 받아서 B C D 인터넷 쪽으로 뿌려버리고

스위칭은 B 가 연결된 포트로 보내줍니다

스위칭이라면 외부망 대여폭을 나눠쓰고

남은 자신의 대역폭을 같은 스위치에 연결된 다른 PC와 통신하는데 쓸 수 있어요

[http://www.ktword.co.kr/abbr_view.php?m_temp1=4842](http://www.ktword.co.kr/abbr_view.php?m_temp1=4842)

근데 요즘엔 다 스위칭 허브인데

MCU같은 컴퓨팅칩이 매우 싸졌고

더미허브에 비해 성능도 매우 좋고

부가적인 기능을 달기 좋거든요

출처: <[https://gigglehd.com/gg/hard/2651795](https://gigglehd.com/gg/hard/2651795)>

모든 기기가 동시에 망을 사용하면 25가 되는게 맞습니다. 장비가 자체적으로 QOS로 배분(?)을 합니다만...

출처: <[https://gigglehd.com/gg/hard/2651795](https://gigglehd.com/gg/hard/2651795)>

외부 회선이 100메가라면,

접속된 모든 컴퓨터가 외부 회선을 사용하게 되면

총 대역폭은 100메가,

4대가 풀로 그리 쓴다면 각 25메가씩 나오는 것이 맞고,

다만, 4대가 서로 데이터를 주고받을 경우는

별개로 다시 계산하는 것이 맞습니다.

출처: <[https://gigglehd.com/gg/hard/2651795](https://gigglehd.com/gg/hard/2651795)>