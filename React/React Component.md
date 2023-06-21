
## 클래스형 컴포넌트

```jsx
import { Component } from "react";

class MyComponentClass extends Component {
        render() {
            return (
                <>
                    <h1>이름은 홍길동입니다.</h1>
                    <h2>나이는 23살입니다.</h2>
                </>
            )
        }
}

export default MyComponentClass;
```

App.js 파일에 MyComponentClass 컴포넌트를 추가

```jsx
import MyComponentClass from "./MyComponentClass";

function App() {
  return (
      <>
        <MyComponentClass />
      </>
  );
}

export default App;
```

## 함수형 컴포넌트

```jsx
const MyComponentFunction = function (){
    return (
        <>
            <h1>이름은 홍길동입니다.</h1>
            <h2>나이는 26살입니다.</h2>
        </>
    )
}

export default MyComponentFunction;
```

App.js 파일에 MyComponentClass 컴포넌트를 추가

```jsx
import MyComponentFunction from "./MyComponentFunction";

function App() {
  return (
      <>
        <MyComponentFunction />
      </>
  );
}

export default App;
```


