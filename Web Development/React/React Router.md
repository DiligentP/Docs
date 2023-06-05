subRouete
useReactRouter Hook

npm Install 
```shell
npm i react-router-dom
```

import
```js
import { BrowserRouter, Routes, Route } from 'react-router-dom';
```

`<BrowserRouter>`
`<Routes>`
`<Link>`

```js
<BrowserRouter>
	<Routes> 
		<Route path="/" element={<Main />}></Route> 
		<Route path="/product} <Route path="*" element={<NotFound />}></Route> 
	</Routes>
</BrowserRouter>
```

```js
const Main = (props) => { 
	return ( 
		<> <h3>안녕하세요. 메인페이지 입니다.</h3>
		 <ul> 
			 <Link to="/product/1"><li>1번상품</li></Link> 
			 <Link to="/product/2"><li>2번상품</li></Link> 
		 </ul> </> 
	 ); 
}; 

export default Main;
```

<참고>
[[React] 6. React Router (리액트 라우터) 사용하기 (tistory.com)](https://goddaehee.tistory.com/305)
