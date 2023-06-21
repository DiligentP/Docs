A syntax extension to javaScript, JSX는 JavaScript 문법을 확장시킨 개념입니다.

JSX == JS + XML/HTML

JSX는 리엑트에서 바벨을 사용하여 일반 자바스크립트 형태의 코드로 변환합니다.


## JSX 예제코드

```js
const element = <h1>Hello, World</h1>
```

JSX 코드를 JavaScript로 바꾸는 함수
```js
React.createElement(
	type,
	[props],
	[...children]
)
```

JSX를 사용하지 않은 JavaScript 코드
```js
class Hello extends React.Component {
	render() {
		return React.cerateElement('div',null, `Hello ${this.props.towhat}`);
	}
}

ReactDOM.render(
	React.cerateElement('Hello' {towhat: 'World'}, null);
	document.getElementById('root')
);
```

JSX를 사용한 코드
```js
class Hello extends React.Component {
	render() {
		return <div>Hello {this.props.towhat}</div>;
	}
}

ReactDOM.render(
	<Hello toWhat="World" />
	document.getElementById('root')
);
```

JSX를 사용하는 것이 필수는 아닙니다.

다만 사용하면 얻는 장점이 많기 때문에, JSX를 사용하는 것을 권장합니다.

## JSX를 사용하는 이유

- 간결한 코드, 가독성 향상 
```js
// JSX 사용 안함
React.cerateElement('Hello' {towhat: 'World'}, null);

// JSX 사용함
<div>Hello, {name}</div>
```

- Injection Attacks 방어 (XSS 크로스사이트 스크립팅 어택 방어)
```js
Const title = response.potentiallyMaliciousInput;

// 이 코드는 안전합니다.
const element = <h1>{title}</h1>
```


## JSX 사용법

### 조건 1. 반드시 부모 요소 하나로 감싸야한다.

에러발생
```jsx
import MyButton from './MyButton';

function App() {
  return (
        <MyButton />   // 에러발생
  );
}

export default App;
```

1. 또 다른 태그(예: `<div>` 태그)를 추가
```jsx
import MyButton from './MyButton';

function App() {
  return (
      <div>
        <MyButton />
      <div/>
  );
}

export default App;
```

2. Fragement 컴포넌트를 이용
```jsx
import MyButton from './MyButton';

function App() {
  return (
      <>
        <MyButton />
      </>
  );
}

export default App;
```

또는

```jsx
import MyButton from './MyButton';
import { Fragment } from 'react';

function App() {
  return (
      <Fragment>
        <MyButton />
      </Fragment>
  );
}

export default App;

```

### 조건 2. JSX 안에서는 자바스크립트 표현식을 { }로 감싸서 작성

```jsx
function App() {
	const name = '홍길동';
	const age = 23;
	
	return (
	<>
		<h1>안녕, { name }</h1>
		<h2>나이는 { age } 이야</h2>
		<h2>내년에는 { age + 1 }이 돼</h2>
		<h2>오늘은 { (new Date()).getMonth() + 1 }월 { (new Date()).getDate() }일 입니다.</h2>
	</>
  );
}

export default App;
```
![[Pasted image 20230609105636.png]]

### 조건 3. JSX 내부에서는 자바스크립트의 if 문을 사용할 수 없으므로 삼항 연산자를 사용

조건식 ? 참인경우 : 거짓인 경우

```jsx
function App() {
	const name = '홍길동';

	return (
	<>
		<h1>
			{ name === '홍길동' ? '환영합니다' : "환영하지않습니다"}
		</h1>
	</>
  );
}

export default App;
```

### 조건 4. 조건을 만족할 때만 내용을 보여줄 경우 => 조건부 렌더링

1. 삼항 연산자를 이용 

조건을 만족하지않을 경우 null을 반환하고 화면에 내용이 출력되지 않습니다.

```jsx
function App() {
	const name = '홍길동';

	return (
	<>
		<h1>
			{ name === '홍길동' ? '환영합니다' : null}      
		</h1>
	</>
  );
}

export default App;
```

2. && 연산자를 이용

조건이 만족하는 경우에만 `환영합니다` 를 띄울 수 있습니다.

```jsx
function App() {
	const name = '홍길동x';

	return (
	<>
		<h1>
			{ name === '홍길동' && '환영합니다' }      
		</h1>
	</>
  );
}

export default App;
```

### 조건 5. undefined 인 경우 사용할 기본값을 설정

변수가 상태가 undefined 인 경우, || 뒤의 값을 출력합니다.

```jsx
function App() {
	const name;

	return (
	<>
		<h1>
			{ name || '값이 출력되지 않은 경우 default 값을 출력합니다.' }      
		</h1>
	</>
  );
}

export default App;
```


### 조건 6. 인라인 스타일

DOM 요소(태그)에 스타일을 적용할 때는 객체 형태로 적용해야 하며, 스타일 이름은 카멜 표현식을 사용해야 합니다. 

`font-size` -> `{{ fontSize }}`  (카멜표기법)

```jsx
function App() {
	const name = '홍길동';

	return (
	<>
		<h1 style={{ fontSize: 40, color: 'red', backgroundColor: 'yellow' }}>{ name }</h1>
	</>
  );
}

export default App;
```

또는
```jsx
function App() {
	const name = '홍길동';
	const style = { fontSize: 40, color: 'red', backgroundColor: 'yellow' };

	return (
	<>
		<h1 style={ style }>{ name }</h1>
	</>
  );
}

export default App;
```

### 조건 7. CSS 클래스를 사용할 때 class가 아닌 className으로 설정

App.css 파일에 아래 코드를 추가
```css
.react {
	 font-size: 40px;
	 color: red;
	 background-color: yellow;
	 padding: 20px;
}
```

App.js 에 가져오기
```jsx
import './App.css';

function App() {
	const name = '홍길동';

	return (
	<>
		<h1 className="react">{ name }</h1>
	</>
  );
}

export default App;
```
![[Pasted image 20230609113541.png]]

결국 class 로 바뀌긴함.


### 조건 8. 모든 태그는 반드시 닫는 태그를 사용해야 함.

내용(contents)이 없는 태그는 self-closing 태그를 사용

```jsx
import './App.css';

function App() {
	const name = '홍길동';

	return (
	<>
		<h1 className="react">{ name }</h1>
		<input type="text"></input>
		<input type="text" />
		<input type="text">     // 닫는 태그가 없어 에러발생
	</>
  );
}

export default App;
```

### 조건 9. 주석

```jsx
import './App.css';

function App() {
	const name = '홍길동';

	return (
	// 라인 단위 주석
	/* 블럭 단위 주석 */
	<>
		// 텍스트로 인식
		/*
			텍스트로 인식
		*/

		{ 
			// 라인단위 주석 (한줄 띄어야함.)
		}
		{
			/* 블럭단위 주석 */
		}
	</>
  );
}

export default App;
```

## 참고

[리액트에서 자주쓰는 if문 작성패턴 5개 - 코딩애플 온라인 강좌 (codingapple.com)](https://codingapple.com/unit/react-if-else-patterns-enum-switch-case/)





