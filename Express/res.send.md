`res.send`
```js
app.get('/' ,function (req, res) {
	res.send('Hello World')
})
```

res.send의 `()` 안의 내용을 보냅니다.  `()` 안의 내용은 HTML 문법을 포함합니다.
`res.send(<h1> HTML <h1>)`