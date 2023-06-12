	반환 타입의 데이터를 Body에 담아 반환하도록 하는 어노테이션입니다.

Body에는 기본적으로  "데이터" 즉 "JSON" 타입의 형태로 많이 담아 사용합니다.
스프링은 객체의 데이터 반환형을 JSON 형태를 기본으로 제공합니다.

스트링 반환
```java
@ResponseBody
@GetMapping("hello-staring")
public String helloString(@RequestParam("name") String name) {
	return "Hello " + name;
}
```

`/hello-string?name=park`
`Hello park`

---

데이터 반환
```java
@ResponseBody
@GetMapping("hello-json")
public Hello helloJson() {
	Hello hello = new Hello();
	hello.setName("헬로우")
	return Hello;
}
```

```java
public class Hello(){
	private name;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
```

`/hello-json`
`{"name" : "헬로우"}`

---