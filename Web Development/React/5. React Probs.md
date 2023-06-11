
- **properties 줄임말**
- **컴포넌트의 속성을 설정할 때 사용**
- **props 값은 해당 컴포넌트를 사용하는 부모 컴포넌트에서 설정**
- **컴포넌트 자신은 해당 props 값을 읽기 전용으로 사용만 가능**


## Props 활용

**App.js 파일에서 MyComponentClass와 MyComponentFunction 컴포넌트에 name 속성과 값을 부여**

```jsx
import './App.css';
import MyComponentClass from './MyComponentClass';
import MyComponentFunction from './MyComponentFunction';

function App() {
  return (
    <>
      <MyComponentClass name="sin" />
      <hr/>
      <MyComponentFunction name="goo" />
    </>
  );
}


export default App;
```


**MyComponentClass 컴포넌트에서 props 값을 활용하도록 수정**

```jsx
import { Component } from "react";

class MyComponentClass extends Component {
    render() {
        return (
            <>
                <h1>My name is {this.props.name}.</h1>
                <h2>I'm 25 years old.</h2>
            </>
        );
    }
}

export default MyComponentClass;
```

![](Pasted%20image%2020230611170913.png)


**MyComponentFunction 컴포넌트에서 props 값을 활용하도록 수정**

```jsx
const MyComponentFunction = function (props){
    return (
        <>
            <h1>My name is {props.name}.</h1>
            <h2>I'm 26 years old.</h2>
        </>
    )
}

export default MyComponentFunction;

```

![](Pasted%20image%2020230611170919.png)


**App.js 파일에 여러 값을 자식 컴포넌트로 전달하도록 수정**

```jsx
import './App.css';
import MyComponentClass from './MyComponentClass';
import MyComponentFunction from './MyComponentFunction';

function App() {

    return (
        <>
            <MyComponentClass name="sin" age={23} nickname={"sinsin"} />
            <hr/>
            <MyComponentFunction name="goo" age={40} nickname="googoo" />
        </>
    );
}

export default App;
```

**MyComponentClass 컴포넌트에서 props 변수를 받아서 출력**

```jsx
import { Component } from "react";

class MyComponentClass extends Component {
    render() {

        return (
            <>
                <h1>My name is {this.props.name}.</h1>
                <h2>I'm {this.props.age} years old.</h2>
                <h2>My nickname is {this.props.nickname}.</h2>
            </>
        );
    }
}

export default MyComponentClass;
```

![](Pasted%20image%2020230611171356.png)

**객체 비구조화를 이용해서 코드를 단순화**

```jsx
import { Component } from "react";

class MyComponentClass extends Component {
    render() {
        const { name, age, nickname } = this.props;		// name="sin" age={23} nickname={"sinsin"}
        return (
            <>
                <h1>My name is { name }.</h1>
                <h2>I'm { age } years old.</h2>
                <h2>My nickname is { nickname }.</h2>
            </>
        );
    }
}

export default MyComponentClass;
```

**MyComponentFunction 컴포넌트에서 props 변수를 받아서 출력**

```jsx
const MyComponentFunction = function (props) {
    return (
        <>
            <h1>My name is {props.name}.</h1>
            <h2>I'm {props.age} years old.</h2>
            <h2>My nickname is {props.nickname}.</h2>
        </>
    );
};

export default MyComponentFunction;

```


**객체 비구조화를 이용해서 코드를 단순화**

```jsx
const MyComponentFunction = function (props) {
    const { name, age, nickname } = props;
    return (
        <>
            <h1>My name is { name }.</h1>
            <h2>I'm { age } years old.</h2>
            <h2>My nickname is { nickname }.</h2>
        </>
    );
};

export default MyComponentFunction;
```


## **props 값이 누락된 경우** defaultProps 설정이 가능

App.js 파일에 props 값을 전달하지 않도록 수정
```jsx
import './App.css';
import MyComponentClass from './MyComponentClass';
import MyComponentFunction from './MyComponentFunction';

function App() {

    return (
        <>
            <MyComponentClass />
            <hr/>
            <MyComponentFunction />
        </>
    );
}

export default App;
```

props 변수 값이 출력되지 않음

![](Pasted%20image%2020230611172106.png)

```jsx
import { Component } from "react";

class MyComponentClass extends Component {
    render() {
        const { name, age, nickname } = this.props;		// name="sin" age={23} nickname={"sinsin"}
        return (
            <>
                <h1>My name is { name }.</h1>
                <h2>I'm { age } years old.</h2>
                <h2>My nickname is { nickname }.</h2>
            </>
        );
    }
}

MyComponentClass.defaultProps = {
    name: 'amu',
    age: 0,
    nickname: 'none'
};

export default MyComponentClass;
```

![](Pasted%20image%2020230611172234.png)

```jsx
const MyComponentFunction = function (props) {
    const { name, age, nickname } = props;
    return (
        <>
            <h1>My name is { name }.</h1>
            <h2>I'm { age } years old.</h2>
            <h2>My nickname is { nickname }.</h2>
        </>
    );
};

MyComponentFunction.defaultProps = {
    name: 'amu',
    age: 0,
    nickname: 'none'
};

export default MyComponentFunction;
```

![](Pasted%20image%2020230611172352.png)

## props.children
**App.js 파일을 아래와 같이 수정 → 자식 컴포넌트에 내용(contents)을 추가**

```jsx
import './App.css';
import MyComponentClass from './MyComponentClass';
import MyComponentFunction from './MyComponentFunction';

function App() {

    return (
        <>
            <MyComponentClass>
                <i>anything</i>
            </MyComponentClass>

            <hr/>

            <MyComponentFunction>
                <i>anything</i>
            </MyComponentFunction>
        </>
    );
}

export default App;
```

**⇒ 화면에서 `<i>` 태그의 내용이 출력되지 않음**


**MyCompoentClass 컴포넌트에 내용을 출력하는 코드를 추가**
```jsx
import { Component } from "react";

class MyComponentClass extends Component {
    render() {
        const { name, age, nickname } = this.props;		// name="sin" age={23} nickname={"sinsin"}
        return (
            <>
                <h1>My name is { name }.</h1>
                <h2>I'm { age } years old.</h2>
                <h2>My nickname is { nickname }.</h2>
                <div>{this.props.children}</div>
            </>
        );
    }
}

MyComponentClass.defaultProps = {
    name: 'amu',
    age: 0,
    nickname: 'none'
};

export default MyComponentClass;
```

![](Pasted%20image%2020230611172913.png)


**MyCompoentFunction 컴포넌트에 내용을 출력하는 코드를 추가**

```jsx
const MyComponentFunction = function (props) {
    const { name, age, nickname, children} = props;
    return (
        <>
            <h1>My name is { name }.</h1>
            <h2>I'm { age } years old.</h2>
            <h2>My nickname is { nickname }.</h2>
            <div>{ children }</div>
        </>
    );
};

MyComponentFunction.defaultProps = {
    name: 'amu',
    age: 0,
    nickname: 'none'
};

export default MyComponentFunction;
```

![](Pasted%20image%2020230611173030.png)

**propTypes을 이용해서 props의 필수 여부, 타입 지정 등을 검증 → 조건과 일치하지 않는 경우 warning을 출력**
```jsx
import PropTypes from "prop-types";

const MyComponentFunction = function (props) {
    const { name, age, nickname, children} = props;
    return (
        <>
            <h1>My name is { name }.</h1>
            <h2>I'm { age } years old.</h2>
            <h2>My nickname is { nickname }.</h2>
            <div>{ children }</div>
        </>
    );
};

MyComponentFunction.propTypes = {
    name: PropTypes.string.isRequired,
    age: PropTypes.number,
    nickname: PropTypes.string
};

export default MyComponentFunction;
```

![](Pasted%20image%2020230611173343.png)

