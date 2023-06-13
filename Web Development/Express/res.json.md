`res.json`
```js
app.get('/' ,function (req, res) {
	res.json({'key':'value'})
})
```
`res.send`도 json 형태의 데이터를 보내는 것이 가능하지만, j
son 형태를 보낸다는 것을 명시 하기위해 사용하는것을 권장
