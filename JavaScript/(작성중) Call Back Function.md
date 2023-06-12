#JavaScript

콜백 함수란 함수가 끝나고 실행할 함수를 말한다.

```js
setTimeout(()=>{}, 1000)
```

1000 m/s 뒤에  `{ }` 안에 코드를 실행해라 라는 의미임.

`test.js`
```js
setTimeout(()=>{console.log("5초지남")},5000)
```

`실행 결과`
```sh
PS C:\Users\dilig\Desktop\portfolio> node test.js
5초 지남
PS C:\Users\dilig\Desktop\portfolio> 
```