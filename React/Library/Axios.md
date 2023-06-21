
install

```
npm install axios
```

Axios 를 이용하여 API 가져오기

```js
import axios from 'axios'; 
axios.get('API 주소') 
	.then(response => { 
		const data = response.data; 
		// 데이터 처리 
	}) 
	.catch(error => { 
		// 에러 처리 
	});
```

Axios와 async/await 사용하기

```js
import axios from 'axios';

async function fetchData() {
  try {
    const response = await axios.get('API 주소');
    const data = response.data;
    // 데이터 처리
  } catch (error) {
    // 에러 처리
  }
}
```