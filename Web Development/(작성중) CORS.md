
## CORS 란

CORS는 교차 출처 자원 공유 (Cross-origin-resorce-sharing) 의 줄임말입니다.

교차출처는 다른서버에서 데이터를 요청 할때 자주 발생하는 에러이며 


HTML에서 서버 API 요청(Request) 했을때  기본적으로 CORS 설정이 안되어 있으면 차단됩니다.

이를 응답할 수 있도록 처리해주어야 합니다.




1. HTTP 를 통해 어떻게 문서룰 교환할 것인가?
2. 초기 문서 형태는 RFC 형태 였다.  = 그냥 텍스트 형태
3. 그다움은 HTML로 발전했다.  + 하이퍼링크 기술
4. 

HTTP의 초기 설계는 연결지향이지 않는다. 예전에는 자원이 한정적이고, 문서를 전달하는 일이 연결을 지속 할 만큼의 가치를 같지 못했다.

하지만 요즘의 웹은 전달하려는 정보,및 데이터가 많기 때문에 지속적으로 연결을 위한 웹 소켓 형태로 발전했다. 



CORS 에러를 해결하는 방법은?

- 같은 출처를 통해 데이터를 요청하는 방법
- 데이터를 제공해주는 서버에서 출처가 다르더라도 허용해주는 방법

### prefilight란?


## Nodejs express CORS 처리
```sh
npm install cors
```

```js
// var express = require('express')
var cors = require('cors')
// var app = express()
//...
app.use(cors())
//...
```



<참고>
[[WEB] 📚 악명 높은 CORS 개념 & 해결법 - 정리 끝판왕 👏 (tistory.com)](https://inpa.tistory.com/entry/WEB-%F0%9F%93%9A-CORS-%F0%9F%92%AF-%EC%A0%95%EB%A6%AC-%ED%95%B4%EA%B2%B0-%EB%B0%A9%EB%B2%95-%F0%9F%91%8F)
