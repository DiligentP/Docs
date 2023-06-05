#HTTP메서드

## HTTP 메서드란?
---
 클라이언트가 웹서버에게 사용자 요청의 목적이나 종류를 알리는 수단
 
## HTTP 메서드의 종류와 특징
---
 HTTP 메소드의 종류에는 9가지가 있으며, 자주 시용하는 5가지 메서드에 대해 알아본다.

### 주요 메서드 5가지

###### GET
	리소스를 조회의 의미로 사용하며, 브라우저의 URL 창을 통하여 서버에 Query를 전달하는 방식이다.

###### POST
	POST 메서드는 주로 데이터 등록에 사용에 사용하며, 메시지 바디를 통해 서버로 데이터를 전달하는 방식이다.

###### PUT
	PUT 메서드는 데이터를 업데이트 하기위해 사용하며, 데이터가 없으면 생성의 역할도 수행한다.

###### DELETE
	DELEETE 메서드는 특정 데이터를 제거할 떄 사용한다.

###### PATCH
	PATCH 메서드는 PUT과 메서드와 같이 데이터를 수정하는데 사용하며, 데이터의 부분만을 수정한다는 차이가 있다.

### 그외
###### HEAD
	HEAD 매서드는 GET 메서드의 요청과 동일한 응답을 요구하지만, 응답 본문을 포함하지 않습니다.

###### CONNECT
	CONNECT 메서드는 목적 리소스로 식별되는 서버로의 터널을 맺습니다.

###### OPTIONS
	OPTIONS 메서드는 목적 리소스의 통식을 설정하는데 쓰입니다.

###### TRACE (en-US)
	TRACE 메서드는 목적 리소스의 경로를 따라 메시지 loop-back 테스트를 합니다.


## HTTP 메서드 속성
---
HTTP 메소드의 속성에는 안전(Safe Methods), 멱등(Idempotent Methods), 캐시가능(Cacheable Methods)가 있다.

다음 단어가 무엇을 의미하는지 살펴보도록 하자.

1.  `안전(Safe Methods)`
    
    이 말은 계속해서 메소드를 호출해도 리소스를 변경하지 않는다는 뜻이다. 주요 메소드중에는 GET 메소드가 안전하다고 볼 수 있다.
    
2.  `멱등(Idempotent Methods)`
    
    이 말은 메소드를 계속 호출해도 결과가 똑같다는 뜻이다. Get, PUT, DELETE는 멱등하다고 볼 수 있지만 POST나 PATCH는 멱등하다고 볼 수 없다.
    
3.  `캐시가능(Cacheable Methods)`
    
    캐시가능하다는 말은 말 그대로 캐싱을 해서 데이터를 효율적으로 가져올 수 있다는 뜻이다. GET, HEAD, POST, PATCH가 캐시가 가능하지만 실제로는 GET과 HEAD만 주로 캐싱이 쓰인다고 한다.
    

이를 토대로한 http 메소드를 다음의 표와 같이 요약할 수 있다.

![http 메소드 요약 - 참고 http 나무위키](https://kyun2da.dev/static/99a9c1c515fc25c89791704082e9652b/d67ca/http-method.png "http 메소드 요약 - 참고 http 나무위키")

이 외에도 보통 이러한 메소드는 적절한 uri 설계와 같이 이루어 지는데 restful api 설계방식을 보통 따르곤한다. 이에 대한 [uri 설계 가이드](https://restfulapi.net/resource-naming/)도 한번 보면 좋을 것 같다.

## HTTP 상태코드란
---

http 상태 코드는 클라이언트가 보낸 요청의 처리 상태를 응답에서 알려주는 기능이다.

보통 100번대에서 500번대를 사용하는데 크게 다음과 같이 나눌 수 있다.

-   **1xx (Informational)**: 요청이 수신되어 처리중
-   **2xx (Successful)**: 요청 정상 처리
-   **3xx (Redirection)**: 요청을 완료하려면 추가 행동이 필요
-   **4xx (Client Error)**: 클라이언트 오류, 잘못된 문법등으로 서버가 요청을 수행할 수 없음
-   **5xx (Server Error)**: 서버 오류, 서버가 정상 요청을 처리하지 못함

이제 각각의 번호에는 무엇이 있는지 자세하게 알아보도록 하자.

## 상태코드 종류와 의미
---

먼저 100 번대는 요청이 수신되어 처리중이라는 뜻인데 거의 사용하지 않으므로 생략하기로 하겠다.

다음으로, 200번대는 성공의 의미를 뜻하는데 더 자세하게는 다음과 같다.

-   200 OK : 요청 성공
-   201 Created : 요청 성공해서 새로운 리소스가 생성됨
-   202 Accepted : 요청이 접수되었으나 처리가 완료되지 않았음
-   204 No Content : 서버가 요청을 성공적으로 수행했지만, 응답 페이로드 본문에 보낼 데이터가 없음

300 번대는 리다이렉션인데 이는 location 헤더가 있으면 location 위치로 자동 이동하는 것을 리다이렉트라고 한다.

-   301 Moved Permanently : 리다이렉트시 요청 메서드가 GET으로 변하고, 본문이 제거될 수 있음
-   302 Found : 리다이렉트시 요청 메서드가 GET으로 변하고, 본문이 제거될 수 있음
-   303 See Other : 리다이렉트시 요청 메서드가 GET으로 변경
-   304 Not Modified : 캐시를 목적으로 사용
-   307 Temporary Redirect : 리다이렉트시 요청 메서드와 본문 유지(요청 메서드를 변경하면 안된다.)
-   308 Permanent Redirect : 리다이렉트시 요청 메서드와 본문 유지(처음 POST를 보내면 리다이렉트도 POST 유지)

400번대는 클라이언트 측에서 오류가 발생했다고 알려주는 것이다. 자세한 사항은 다음과 같다.

-   400 Bad Request : 클라이언트가 잘못된 요청을 해서 서버가 요청을 처리할 수 없음
-   401 Unauthorized : 클라이언트가 해당 리소스에 대한 인증이 필요함
-   403 Forbidden : 서버가 요청을 이해했지만 승인을 거부함
-   404 Not Found : 요청 리소스를 찾을 수 없음

500번대는 서버 측에서 오류가 발생했다고 알려주는 것이다. 자세한 사항은 다음과 같다.

-   500 Internal Server Error : 서버 문제로 오류 발생, 애매하면 500 오류
-   503 Service Unavailable : 서비스 이용 불가

이외에도 다양한 상태 코드가 있는데 [HTTP 상태 코드 - MDN](https://developer.mozilla.org/ko/docs/Web/HTTP/Status)에서 찾아보면 될 것이다.

## 참고
[HTTP 요청 메서드 - HTTP | MDN (mozilla.org)](https://developer.mozilla.org/ko/docs/Web/HTTP/Methods)
[http 메소드와 상태코드 | Kyun2da.dev](https://kyun2da.dev/CS/http-%EB%A9%94%EC%86%8C%EB%93%9C%EC%99%80-%EC%83%81%ED%83%9C%EC%BD%94%EB%93%9C/)


