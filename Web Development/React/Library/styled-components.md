## 패키지 설치
Styled Components는 `styled-components`라는 NPM 패키지명을 가지고 있습니다. 따라서 React 프로젝트에 다음과 같이 `npm` 커맨드로 간단히 설치할 수 있습니다.

```bash
$ npm i styled-components
```

설치 후에 `package.json`에 `styled-components`가 추가된 것을 확인할 수 있습니다.

```js
  "dependencies": {
    "react": "18.0.0",
    "react-dom": "18.0.0",
    "styled-components": "5.3.5"
  },
```

## 기본 문법

먼저 위에서 설치한 `styled-components` 패키지에서 `styled` 함수를 임포트합니다. `styled`는 Styled Components의 근간이 되는 가장 중요한 녀석인데요. HTML 엘리먼트나 React 컴포넌트에 원하는 스타일을 적용하기 위해서 사용됩니다.

기본 문법은 HTML 엘리먼트나 React 컴포넌트 중 어떤 것을 스타일링 하느냐에 따라 살짝 다릅니다.

-   HTML 엘리먼트를 스타일링 할 때는 모든 알려진 HTML 태그에 대해서 이미 속성이 정의되어 있기 때문에 해당 태그명의 속성에 접근합니다.

```js
import styled from "styled-components";

styled.button`
  // <button> HTML 엘리먼트에 대한 스타일 정의
`;
```

-   React 컴포넌트를 스타일링 할 때는 해당 컴포넌트를 임포트 후 인자로 해당 컴포넌트를 넘기면 됩니다.

```js
import styled from "styled-components";
import Button from "./Button";

styled(Button)`
  // <Button> React 컴포넌트에 스타일 정의
`;
```

두가지 문법 모두 ES6의 Tagged Template Literals을 사용해서 스타일을 정의합니다. 그리고 `styled` 함수는 결국 해당 스타일이 적용된 HTML 엘리먼트나 React 컴포넌트를 리턴합니다.

예를 들어, 다음과 같이 Styled Components로 작성된 JavaScript 코드는

```js
import styled from "styled-components";

styled.button`
  font-size: 1rem;
`;
```

아래 CSS 코드가 적용된 `<button>` HTML 엘리먼트를 만들어낸다고 생각하면 쉽습니다.

```css
button {
  font-size: 1rem;
}
```

이런 식으로 Styled Components를 이용해서 JavaScript 코드 안에 삽입된 CSS 코드는 글로벌 네임 스페이스를 사용하지 않습니다. 다시 말해, 각 JavaScript 파일마다 고유한 CSS 네임 스페이스를 부여해주기 때문에, 각 React 컴포넌트에 완전히 격리된 스타일을 적용할 수 있게 됩니다.

이 것은 순수하게 CSS만을 사용했을 때는 누리기 어려웠던 대표적인 CSS in JS의 장점 중 하나 입니다.

> 외부 라이브러리 없이도 각 CSS 파일에 고유의 네임 스페이스를 부여해주는 CSS 모듈이라는 기술을 통해서 위 동작을 흉내낼 수 있습니다. 자세한 방법은 아래 포스팅를 참고 바랍니다.

-   [React 컴포넌트 CSS 스타일링 기본](https://www.daleseo.com/react-styling/)

## 고정 스타일링

위에서 배운 Styled Components 문법을 이용해서 간단하게 React로 작성된 버튼 컴포넌트를 스타일링 해보겠습니다. 우선 `<button>` HTML 엘리먼트에 원하는 스타일을 적용한 후 `StyledButton` 변수에 저장합니다.

이렇게 `styled` 함수가 리턴하는 것은 위에서 설명드린 것 처럼 React 컴포넌트이기 때문에 JSX를 통해 자유롭게 사용할 수 있습니다.

```js
import React from "react";
import styled from "styled-components";

const StyledButton = styled.button`
  padding: 6px 12px;
  border-radius: 8px;
  font-size: 1rem;
  line-height: 1.5;
  border: 1px solid lightgray;
  color: gray;
  background: white;
`;

function Button({ children }) {
  return <StyledButton>{children}</StyledButton>;
}
```

자, 이제 스타일이 적용된 이 버튼 컴포넌트를 다른 React 컴포넌트에서 다음과 같이 사용할 수 있습니다.

```js
import Button from "./Button";
<Button>Default Button</Button>;
```

브라우저에서 소스 보기를 해보면 다음과 같이 `<button>` HTML 엘리먼트에 Styled Components가 자동으로 생성해준 클래스 이름이 적용되었음을 알 수 있습니다.

```html
<button class="sc-kgAjT beQCgz">Default Button</button>
```

한편, 내부 스타일시트를 확인해보면 클래스 선택자(class selector)로 적용된 스타일이 위에서 Styled Components로 삽입한 스타일과 동일함을 알 수 있습니다.

```css
.beQCgz {
  padding: 6px 12px;
  border-radius: 8px;
  font-size: 1rem;
  line-height: 1.5;
  border: 1px solid lightgray;
  color: gray;
  background: white;
}
```

## 가변 스타일링 1

Styled Components는 React 컴포넌트에 넘어온 props에 따라 다른 스타일을 적용하는 기능을 제공합니다. Tagged Template Literals을 사용하기 때문에 함수도 문자열 안에 포함시킬 수 있다는 점을 이용하는데요.

예를 들어, 버튼의 글자색과 배경색을 props따라 바뀌도록 위에서 작성한 예제 코드를 변경해보겠습니다. 자바스크립트의 `||` 연산자를 사용하여 props이 넘어오지 않은 경우, 기존에 정의한 기본 색상이 그대로 유지되도록 합니다.

```js
import React from "react";
import styled from "styled-components";

const StyledButton = styled.button`
  padding: 6px 12px;
  border-radius: 8px;
  font-size: 1rem;
  line-height: 1.5;
  border: 1px solid lightgray;

  color: ${(props) => props.color || "gray"};
  background: ${(props) => props.background || "white"};
`;

function Button({ children, color, background }) {
  return (
    <StyledButton color={color} background={background} Î>
      {children}
    </StyledButton>
  );
}
```

여기서 주의할 점은 `<Button />`에 넘어온, `color`와 `background` prop을 `<StyledButton/>` 컴포넌트로 넘겨줘야 한다는 것입니다. (그러지 않을 경우, `<StyledButton/>` 컴포넌트가 해당 prop을 인식할리가 없겠죠?)

자, 이제 다음과 같이 버튼을 사용하면 핑크 배경에 초록 글자를 갖도록 스타일된 버튼을 만들 수 있습니다.

```js
import Button from "./Button";
<Button color="green" background="pink">
  Green Button
</Button>;
```

## [](https://www.daleseo.com/react-styled-components/#%EA%B0%80%EB%B3%80-%EC%8A%A4%ED%83%80%EC%9D%BC%EB%A7%81-2)가변 스타일링 2

prop에 따라 바꾸고 싶은 CSS 속성이 위와 같이 하나가 아니라 여러 개일 경우가 있습니다. 이럴 경우, Styled Components에서 제공하는 `css` 함수를 사용해서 여러 개의 CSS 속성을 묶어서 정의할 수 있습니다.

예를 들어, `primary` prop이 넘어온 경우, 글자색을 흰색, 배경색과 경계색은 남색으로 변경하고 싶다면 다음과 같이 예제 코드를 수정할 수 있습니다. 이번에는 자바스크립트의 `&&` 연산자를 사용해서, `primary` prop이 존재하는 경우에만 `css`로 정의된 스타일이 적용되도록 하였습니다.

```js
import React from "react";
import styled, { css } from "styled-components";

const StyledButton = styled.button`
  padding: 6px 12px;
  border-radius: 8px;
  font-size: 1rem;
  line-height: 1.5;
  border: 1px solid lightgray;

  ${(props) =>
    props.primary &&
    css`
      color: white;
      background: navy;
      border-color: navy;
    `}
`;

function Button({ children, ...props }) {
  return <StyledButton {...props}>{children}</StyledButton>;
}
```

참고로 넘겨야할 prop 값이 많아질 경우, 위와 같이 `...props` 구문을 사용해서 `children` 외에 모든 prop을 간편하게 전달할 수 있습니다.

자, 이제 다음과 같이 하나의 prop 만으로 여러가지 CSS 속성이 한 번에 적용된 버튼을 얻을 수 있습니다.

```js
import Button from "./Button";
<Button primary>Primary Button</Button>;
```