```java
@Data
public class SampleDTO {
    private int age;
    private String name;
}
```

```java
@GetMapping("/ex04")
public String ex04(SampleDTO dto, int page) {
		log.info("dto: "+ dto)
		log.info("page: "+ page)

		return "/sample/ex04"
}
```

```html
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
		<h2>SAMPLEDTO  ${sampleDTO} </h2>
		<h2>PAGE ${page} </h2>
</body>
</html>
```

서버를 실행하고, 브라우저를 통해,

[http://localhost:8080/sample/ex04?name=aaa&age=11&page=9](http://localhost:8080/sample/ex04?name=aaa&age=11&page=9)

같이 호출하면 name과 age만 전달된다,

page 까지 전달되게 하려면,

```java
@GetMapping("/ex04")
public String ex04(SampleDTO dto, @ModelAttribute("page") int page) {
		log.info("dto: "+ dto)
		log.info("page: "+ page)

		return "/sample/ex04"
}
```

다음과 같이 정의되어있지 않은 파라미터를 model에 담아 전달하도록 한다.

서버를 실행하고, 브라우저를 통해,

[http://localhost:8080/sample/ex04?name=aaa&age=11&page=9](http://localhost:8080/sample/ex04?name=aaa&age=11&page=9)

같이 호출하면 name, age, page 모두 전달되는 것을 확인 할 수 있다.

---

```java
@GetMapping("/login")
public String login(@ModelAttribute("user") UserDTO dto) {
	log.info(dto);
	return "login";
}
```

다음과 같이 쓰게 되면 dto 객체를 user라는 이름으로 사용할 수 있게 되고,

login.jsp 에서 ${user} 와 같이 참조 할 수 있다.