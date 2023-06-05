## CSS module
가장 일반적인 방법으로  CSS 파일 만들고 js 파일에 import 하는 방식

## CSS-in-JS
JavaScript 안에 CSS 를 넣는 기술  대표적으로 [[style-components]] 가 있음.
```shell
npm i styled-components
```

```jsx
import styled from "styled-components";

const Layout = styled.div`
	display: grid;
`;

return (
	<Layout>
		<button>BUTTON</button>
	</Layout>
);
```
