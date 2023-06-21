
리엑트에서 라우터를 사용하게되면, 리엑트는 SPA 이지만, 마치 페이지가 넘어가는 것처럼 구현할 수 있습니다.

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
`<Route>`
`<Link>`

`<Switch>`  React v6 부터 사용하지 않음

## Router 기본 구조
```jsx
<BrowserRouter>
	<Routes> 
		<Route path="/" element={<Main />}></Route> 
		<Route path="/product" elenment={ <Product />}></Route> 
	</Routes>
</BrowserRouter>
```

```jsx
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
[React Router - YouTube](https://www.youtube.com/watch?v=WLdbsl9UwDc)