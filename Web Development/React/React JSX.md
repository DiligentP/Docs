A syntax extension to javaScript, JSX는 JavaScript 문법을 확장시킨 개념입니다.

JSX == JS + XML/HTML

JSX 예제코드
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

리엑트에서 자주쓰는 if 문 작성패턴 5가지
[리액트에서 자주쓰는 if문 작성패턴 5개 - 코딩애플 온라인 강좌 (codingapple.com)](https://codingapple.com/unit/react-if-else-patterns-enum-switch-case/)
