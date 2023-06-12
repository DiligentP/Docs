```
npm install react-moadal
```
모달창을 쉽게 사용할 수 있는 리엑트 라이브러리

Use
```js
// 불러오기
import Modal from 'react-modal';

// 모달 스타일
const 모달스타일 = {
	overlay: {
		position: "fixed",
		top: 0,
		left: 0,
		right: 0,
		bottom: 0,
		backgroundColor: "rgba(255, 255, 255, 0.45)",
		zIndex: 10,
	},
	content: {
		display: "flex",
		justifyContent: "center",
		background: "#ffffe7",
		overflow: "auto",
		top: "42vh",
		left: "38vw",
		right: "38vw",
		bottom: "42vh",
		WebkitOverflowScrolling: "touch",
		borderRadius: "14px",
		outline: "none",
		zIndex: 10,
	},
};

// 사용법
return (
	<>
		<Modal 
    		isOpen={불린값}
			style={모달스타일}
			onRequestClose={모달토글핸들러} // 오버레이나 esc를 누르면 핸들러 동작
			ariaHideApp={false}
    	>
    		모달 내용 or 컴포넌트
    	</Modal>
        <button onClick={모달토글핸들러}></button>
    </>
)
```

주의
element is not defined 에러 발생시, 아래 코드를 적어서 숨길 엘리먼트를 정의해주면 해결된다.
```js
// App.js
Model.setAppElement('#root')

```

참고
[공식문서](https://reactcommunity.org/react-modal/styles/classes/)  
[https://velog.io/@seungsang00/React-React-Modal](https://velog.io/@seungsang00/React-React-Modal)
[react-modal 라이브러리 (velog.io)](https://velog.io/@kusdsuna/%EB%A6%AC%EC%95%A1%ED%8A%B8-%EB%AA%A8%EB%8B%AC-%EB%9D%BC%EC%9D%B4%EB%B8%8C%EB%9F%AC%EB%A6%AC)