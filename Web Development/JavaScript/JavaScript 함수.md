
## 1. 함수 선언문

```js
function add(x, y) {                   ⇐ 반드시 함수 이름이 정의되어 있어야 함
    return x + y;
}

console.log(add(10, 20));              ⇐ 함수 이름으로 호출
```



## 2. 함수 표현식 

변수는 값을 주고 받을 수 있음
```js
let a = 100;
let b = a;
console.log(a); // 100
console.log(b); // 100
```
  
**함수 표현식을 사용하면 함수를 변수처럼 사용이 가능**
```js

// 익명 함수 표현식 
let add = function (x, y) { return x + y };

let sum = add;
console.log(add(10, 20));   // 30
console.log(sum(10, 20));   // 30


// 기명 함수 표현식 → 함수 외부에서는 함수 이름으로 사용할 수 없으나, 함수 내부에서 자기 호출할 때(=재귀 호출) 사용
let sum1 = function add(x, y) { return x + y };
let sum2 = sum1;          

console.log(sum1(10, 20));  // 30 
console.log(sum2(20, 30));  // 50
console.log(add(30, 40));   // Uncaught ReferenceError: add is not defined


let myFactorial = function factorial(n) {
	if (n <= 1) return 1;
	return n * factorial(n - 1);
};

console.log(myFactorial(5));

```


## 3. Function() 생성자 함수를 이용

https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Function

```js
new Function ([arg1[, arg2[, ...argN]],] functionBody)
let add = new Function('x', 'y', 'return x + y');
```



## 4. 함수 호이스팅(function hoisting)

```js
console.log("20 + 30 = ", add(20, 30)); // 20 + 30 = 50 ⇐ 

function add(x, y) { ⇐ 함수의 정의가 최상단으로 이동하기 때문
	return x + y;
}

console.log("10 + 20 = ", add(10, 20)); // 10 + 20 = 30
```
  


## 5. 함수 객체
```js
let obj = { "name": "value", "first name": "hong" };

// 객체의 요소를 참조
console.log(obj.name);
console.log(obj["name"]);
console.log(obj["first name"]);

// 새로운 요소를 추가
obj.email = "test@test.com";    
console.log(obj);
obj["last name"] = "gil dong";
console.log(obj);

// 기존 요소를 수정
obj.name = "new value";
console.log(obj);


// 함수를 정의
function add(x, y) {
	return x + y;
}

console.log(add(10, 20));   // 30
add.result = add(10, 20);
add.status = "OK";

console.log(add.result);    // 30
console.log(add.status);    // OK
```

## 6. 함수를 다른 함수의 인자로 전달
```js
// 함수 표현식으로 click() 함수를 정의
let click = function (fname) {
	fname();
};

// click 함수를 실행(호출)
let myfunc = function() {
	console.log('내 함수');
};

click(myfunc);

let yourfunc = function() {
	console.log('니 함수');
};

click(yourfunc);
```

## 7. 함수를 다른 함수의 리턴값으로 활용
```
// 함수 표현식을 반환하는 함수
let foo = function () {
return function () {

                console.log("반환함수");

            };

        };

  

        let bar = foo();

        bar();

```