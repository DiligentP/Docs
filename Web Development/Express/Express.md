```shell
npm install express
```

###### Hello World 예제
`[index.js]`
```javaScript
const experss = require('express')
const app = express()

app.get('/' ,function (req, res) {
	res.send('Hello World')
})

app.listen(3000)
```

`실행결과`
```shell
node index.js
```


[[app.listen]]
[[app.get]]

[[res.send]]
[[res.sendFile]]
[[res.json]]




###### 파라미터 받기
```js
app.get('/user/:id', (req, res) => {
    const req = req.params
    res.send(req)
})
```
###### 쿼리 받기