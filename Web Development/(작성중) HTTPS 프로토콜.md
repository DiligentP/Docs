
HTTPS (Hyper Text Transfer Protocol Secure Socket Layer)

HTTP + SSL,    HTTP 프로토콜에 SSL 인증서가 붙은 프로토콜을 말합니다.   [[(작성중) SSL]]


## HTTPS 사용하는 이유
---
보안 이슈 때문에, 해커로부터 데이터변조를 보호


## HTTPS 구성요소
---
1. HTTPS 프로토콜
2. 인증서
3. CA (Certificate Authority)

## HTTPS 연결과정
---

![[Pasted image 20230410001229.png]]

1. 클라이언트가 요청을 하게 되면, 서버는 공개키와 인증서 정보를 전달하게 됩니다.
2. 전달 받은 공개키로 부터 세션키를 생성하고 암호화 후, 다시 서버에게 전달합니다.
3. 서버는 암호화된 세션키를 받아서 비밀키로 북호화후 클라이언트에게 전달합니다.
4. 이런 과정을 통해 클라이언트와 서버가 동일한 세션키를 가지고 있다는 것이 확인되면 HTTPS 연결이 성립됩니다.


