HTML에서 서버 API 요청(Request) 했을때  기본적으로 CORS 설정이 안되어 있으면 차단됩니다.

이를 응답할 수 있도록 처리해주어야 합니다.


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
