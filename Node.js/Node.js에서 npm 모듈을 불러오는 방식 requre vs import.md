#Nodejs

모듈을 불러오는 두가지 방식

	Node.js에서 npm 모듈을 불러오는 방식은 requre 방식과 import 방식 두가지가 있습니다.



### requre vs import
	require / exports 는 기존  Node.js에서 사용되던 CommonJs 모듈 방식

으로, module.exports 객체에 모듈 전체를 치환하여 내보내고, require을 통해 해당 모듈을 불러오는 방식이다. 따라서 CommonJs 모듈 방식으로는 전체 모듈을 다 불러오게 되고, 불필요한 모듈이 로드되기도 하고 모듈 내에서 어떤 부분을 사용했는지도 확인할 수 없다.

때문에 ES6(ECMA2015)부터는 import / export 라는 방식으로 모듈을 불러오고 내보낸다. ES 모듈의 import는 require과는 다르게 

```js
import {name} from 'module'
```


참고
[Node.js 에서 import/export 사용하기 (velog.io)](https://velog.io/@ohzzi/Node.js-%EC%97%90%EC%84%9C-importexport-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0)

